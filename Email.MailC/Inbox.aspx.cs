using Email.MailC.Models;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Email.MailC
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
                    var receivedMessages = context.Messages.Where(msg=>msg.ReceiverId==currentUser.Id).ToList();

                    InboxGridView.DataSource = receivedMessages.Select(m => new
                    {
                        SenderUsername = m.SenderUsername,
                        MessageText = m.MessageText,
                        SentDate = m.SentDate
                    });
                    InboxGridView.DataBind();
                }
            }
        }
    }
}