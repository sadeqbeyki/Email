using EmailService.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmailService
{
    public partial class TrashDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Get the message ID from the query string
                string messageIdString = Request.QueryString["messageId"];

                if (!string.IsNullOrEmpty(messageIdString))
                {
                    int messageId = int.Parse(messageIdString);

                    // Load the message details from the database
                    using (var context = new MessageContext())
                    {
                        var message = context.Messages.FirstOrDefault(m => m.MessageId == messageId);

                        if (message != null)
                        {
                            // Set the message details on the page
                            SubjectLabel.Text = message.Subject;
                            SenderLabel.Text = message.SenderUsername;
                            ReceiverLabel.Text = message.ReceiverUsername;
                            DateLabel.Text = message.SentDate.ToString("yyyy/MM/dd HH:mm:ss");
                            MessageLabel.Text = message.MessageText;
                        }
                        else
                        {
                            // The message ID was not valid
                            StatusText.Text = "Invalid message ID.";
                        }
                    }
                }
                else
                {
                    // The message ID was not provided
                    StatusText.Text = "Message ID not provided.";
                }
            }
        }

        protected void SignOut(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }

        protected void RecoverMessage(object sender, EventArgs e)
        {
            string messageIdString = Request.QueryString["messageId"];

            if (!string.IsNullOrEmpty(messageIdString))
            {
                int messageId = int.Parse(messageIdString);

                // Load the message details from the database
                using (var context = new MessageContext())
                {
                    var message = context.Messages.FirstOrDefault(m => m.MessageId == messageId);

                    if (message != null && message.IsDeletedInbox)
                    {
                        //context.Messages.Remove(message);
                        message.IsDeletedInbox = false;
                        context.SaveChanges();
                        Response.Redirect("~/Inbox.aspx");
                    }
                    else
                    {
                        // The message ID was not valid
                        StatusText.Text = "Invalid message ID.";
                    }

                }
            }
        }
    }
}