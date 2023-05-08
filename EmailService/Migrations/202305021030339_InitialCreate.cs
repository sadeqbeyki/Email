namespace EmailService.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Messages",
                c => new
                    {
                        MessageId = c.Int(nullable: false, identity: true),
                        Subject = c.String(),
                        MessageText = c.String(),
                        SentDate = c.DateTime(nullable: false),
                        SenderId = c.String(),
                        SenderUsername = c.String(),
                        ReceiverId = c.String(),
                        ReceiverUsername = c.String(),
                    })
                .PrimaryKey(t => t.MessageId);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Messages");
        }
    }
}
