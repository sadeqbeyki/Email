<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMessage.aspx.cs" Inherits="Email.MailC.SendMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ارسال پیام</title>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <h4 style="font-size: medium">send message to users</h4>
            <hr />
            <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
                <p>
                    <asp:Literal runat="server" ID="StatusText" />
                </p>
                <p>
                    <asp:Literal runat="server" ID="StatusMessage" />
                </p>
            </asp:PlaceHolder>

            <div style="margin-bottom: 10px">
                <asp:Label runat="server" AssociatedControlID="SenderUserName">Sender</asp:Label>
                <div>
                    <asp:TextBox runat="server" ID="SenderUserName" />
                </div>
            </div>
            <div style="margin-bottom: 10px">
                <asp:Label runat="server" AssociatedControlID="ReceiverUsername">Receiver</asp:Label>
                <div>
                    <asp:TextBox runat="server" ID="ReceiverUserName" />
                    <asp:DropDownList ID="ReceiverDropDownList" runat="server" />

                </div>
            </div>


            <div style="margin-bottom: 10px">
                <asp:Label runat="server" AssociatedControlID="Subject">Subject</asp:Label>
                <div>
                    <asp:TextBox runat="server" ID="Subject" />
                </div>
            </div>
            <div style="margin-bottom: 10px">
                <asp:Label runat="server" AssociatedControlID="MessageText">Message Text</asp:Label>
                <div>
                    <asp:TextBox runat="server" ID="MessageText" TextMode="MultiLine" />
                </div>
            </div>
            <div>
                <div>
                    <asp:Button runat="server" OnClick="SendMessage_Click" Text="Send" />
                </div>
                <asp:PlaceHolder runat="server" ID="LogoutButton" Visible="false">
                    <div>
                        <div>
                            <asp:Button runat="server" OnClick="SignOut" Text="Log out" />
                        </div>
                    </div>
                </asp:PlaceHolder>
            </div>
        </div>
    </form>
</body>
</html>
