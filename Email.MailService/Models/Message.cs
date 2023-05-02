using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Email.MailService.Models
{
    public class Message
    {
        public int MessageId { get; set; }
        public string Subject { get; set; }
        public string MessageText { get; set; }
        public DateTime SentDate { get; set; }

        public string SenderId { get; set; }
        public string SenderUsername { get; set; }
        public string ReceiverId { get; set; }
        public string ReceiverUsername { get; set; }
    }
}