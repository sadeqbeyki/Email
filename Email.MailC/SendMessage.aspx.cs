using Email.MailC.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Email.MailC
{
    public partial class SendMessage : System.Web.UI.Page
    {
        protected void SendMessage_Click(object sender, EventArgs e)
        {
            // بررسی صحت ورودی‌ها
            if (string.IsNullOrEmpty(SenderUserName.Text) || string.IsNullOrEmpty(ReceiverUserName.Text) || string.IsNullOrEmpty(MessageText.Text))
            {
                return;
            }

            // ساخت شیی Message برای ذخیره در دیتابیس
            Message newMessage = new Message();
            newMessage.SenderUsername = SenderUserName.Text;
            newMessage.ReceiverUsername = ReceiverUserName.Text;
            newMessage.MessageText = MessageText.Text;
            newMessage.SentDate = DateTime.Now;

            // افزودن شیی جدید به دیتابیس
            using (var context = new MessageContext())
            {
                context.Messages.Add(newMessage);
                context.SaveChanges();
            }

            // پاک کردن متن پیام
            MessageText.Text = "";

            // نمایش پیام موفقیت‌آمیز برای کاربر
            StatusMessage.Visible = true;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    StatusText.Text = string.Format("Hello {0}!!", User.Identity.GetUserName());
                    LoginStatus.Visible = true;
                    LogoutButton.Visible = true;
                }
                else
                {
                    Response.Redirect("~/Login.aspx");
                }
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