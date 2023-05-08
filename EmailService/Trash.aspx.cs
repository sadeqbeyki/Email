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
    public partial class Trash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTrash();
            }
        }
        private void LoadTrash()
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
                        .Where(msg => msg.ReceiverId == currentUser.Id && msg.IsDeletedInbox == true)
                        .OrderByDescending(m => m.SentDate).ToList();

                    TrashGridView.DataSource = receivedMessages;
                    TrashGridView.DataBind();
                }
                else
                {
                    return;
                }
            }
        }

        protected void TrashGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = TrashGridView.Rows[index];

                // دسترسی به مقادیر ستون‌های دیتاگرید
                string messageId = row.Cells[0].Text;

                // پاس دادن مقدار به صفحه جدید
                Response.Redirect("TrashDetails.aspx?messageId=" + messageId);

            }
        }

        protected void TrashGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            TrashGridView.PageIndex = e.NewPageIndex;
            LoadTrash();
        }

        protected void SignOut(object sender, EventArgs e)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }
    }
}