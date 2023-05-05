using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace EmailService.Models
{
    public class MessageContext:DbContext
    {
        public DbSet<Message> Messages { get; set; }

        public MessageContext() : base("name=DefaultConnection")
        {
        }

    }
}