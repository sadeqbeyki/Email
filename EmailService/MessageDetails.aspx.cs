using EmailService.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmailService
{
    public partial class MessageDetails : System.Web.UI.Page
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
    }
}