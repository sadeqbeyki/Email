<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inbox.aspx.cs" Inherits="Email.MailC.Inbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="InboxGridView" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="SenderUsername" HeaderText="Sender" />
                    <asp:BoundField DataField="MessageText" HeaderText="Message" />
                    <asp:BoundField DataField="SentDate" HeaderText="Date" DataFormatString="{0:yyyy-MM-dd HH:mm:ss}" />
                </Columns>
            </asp:GridView>
        </div>
    </form>



</body>
</html>
