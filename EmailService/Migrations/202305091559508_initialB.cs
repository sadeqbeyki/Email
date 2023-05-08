namespace EmailService.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class initialB : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Messages", "IsDeletedSendbox", c => c.Boolean(nullable: false));
            AddColumn("dbo.Messages", "IsDeletedInbox", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Messages", "IsDeletedInbox");
            DropColumn("dbo.Messages", "IsDeletedSendbox");
        }
    }
}
