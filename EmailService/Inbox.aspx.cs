using EmailService.Models;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Printing;

namespace EmailService
{
    public partial class Inbox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadInbox();
            }
        }
        private void LoadInbox()
        {
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);
            var users = userManager.Users.ToList();

            using (var context = new MessageContext())
            {
                var currentUser = users.FirstOrDefault(u => u.UserName == User.Identity.Name);

                if (currentUser != null)
                {
                    var receivedMessages = context.Messages
                        .Where(msg => msg.ReceiverId == currentUser.Id)
                        .OrderByDescending(m => m.SentDate).ToList();

                    InboxGridView.DataSource = receivedMessages;
                    InboxGridView.DataBind();
                }
            }
        }

        protected void InboxGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = InboxGridView.Rows[index];

                // دسترسی به مقادیر ستون‌های دیتاگرید
                string messageId = row.Cells[0].Text;

                // پاس دادن مقدار به صفحه جدید
                Response.Redirect("MessageDetails.aspx?messageId=" + messageId);

            }
        }

        protected void InboxGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            InboxGridView.PageIndex = e.NewPageIndex;
            LoadInbox();
        }

        protected void SignOut(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }
    }
}