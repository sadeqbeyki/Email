using EmailService.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmailService
{
    public partial class SendMessage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);
            var users = userManager.Users.ToList();
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    StatusText.Text = string.Format("Hello {0}!!", User.Identity.GetUserName());
                    LoginStatus.Visible = true;
                    //LogoutButton.Visible = true;
                    SenderUserName.Text = User.Identity.GetUserName();
                }
                else
                {
                    Response.Redirect("~/Login.aspx");
                }

                ReceiverDropDownList.DataSource = users;
                ReceiverDropDownList.DataTextField = "Username";
                ReceiverDropDownList.DataValueField = "Username";
                ReceiverDropDownList.DataBind();

                ReceiverUserName.Text = ReceiverDropDownList.SelectedValue;

            }
        }

        protected void SendMessage_Click(object sender, EventArgs e)
        {
            var selectedReceiverUsername = ReceiverUserName.Text;
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);
            var users = userManager.Users.ToList();

            var receiver = users.FirstOrDefault(u => u.UserName == selectedReceiverUsername);


            // validation

            
            var isExistReceiver = users.Where(u => u.UserName == ReceiverUserName.Text).Any();

            if (string.IsNullOrEmpty(SenderUserName.Text)
                || string.IsNullOrEmpty(ReceiverUserName.Text)
                || string.IsNullOrEmpty(Subject.Text)
                || string.IsNullOrEmpty(MessageText.Text))
            {
                //return stat;
                StatusMessage.Text = "تمام فیلد ها را پر کنید";
            }
            else if (isExistReceiver == false)
            {
                StatusMessage.Text = "این کاربر موجود نیست";
                StatusMessage.Visible = true;

            }
            else
            {
                Message newMessage = new Message();
                newMessage.SenderUsername = SenderUserName.Text;
                newMessage.ReceiverUsername = selectedReceiverUsername;
                newMessage.Subject = Subject.Text;
                newMessage.MessageText = MessageText.Text;
                newMessage.SentDate = DateTime.Now;
                newMessage.SenderId = User.Identity.GetUserId();
                if (receiver != null)
                {
                    newMessage.ReceiverId = receiver.Id;
                }
                // send new mail
                using (var context = new MessageContext())
                {
                    context.Messages.Add(newMessage);
                    context.SaveChanges();
                }

                // clean message box
                MessageText.Text = "";

                // Done!
                StatusMessage.Text = "ارسال پیام موفقیت آمیز بود.";
                StatusMessage.Visible = true;
            }

        }

        protected void SignOut(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }
    }
}