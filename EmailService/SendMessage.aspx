<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMessage.aspx.cs" Inherits="EmailService.SendMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>--%>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>ارسال پیام</title>
</head>
<body>


    <div class="bg-contact100">
        <div class="container-contact100">
            <div class="wrap-contact100">

                <form class="contact100-form validate-form" name="form1" runat="server">

                    <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
                        <p>
                            <asp:Literal runat="server" ID="StatusText" />
                        </p>
                        <p>
                            <asp:Literal runat="server" ID="StatusMessage" />
                        </p>
                    </asp:PlaceHolder>


                    <div class="wrap-input100 validate-input" data-validate="Sender UserName is required">
                        <asp:Label runat="server" AssociatedControlID="SenderUserName">From: </asp:Label>
                        <asp:TextBox runat="server" ID="SenderUserName" class="input100" type="text" name="senderusername" placeholder="SenderUserName" />

                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Receiver UserName is required">
                        <asp:Label runat="server" AssociatedControlID="ReceiverUsername">To: </asp:Label>
                        <asp:TextBox runat="server" ID="ReceiverUserName" class="input100" type="text" name="receiverusername" placeholder="ReceiverUserName" />
                        <asp:DropDownList ID="ReceiverDropDownList" runat="server" />

                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Subject is required">
                        <asp:Label runat="server" AssociatedControlID="Subject">Subject: </asp:Label>
                        <asp:TextBox runat="server" ID="Subject" class="input100" type="text" name="subject" placeholder="Subject" />
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Message is required">
                        <asp:Label AssociatedControlID="MessageText" runat="server">Message:</asp:Label>
                        <div>
                            <asp:TextBox runat="server" ID="MessageText" TextMode="MultiLine" class="input100" type="text" />
                        </div>

                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="container-contact100-form-btn">
                        <asp:Button runat="server" OnClick="SendMessage_Click" class="contact100-form-btn" Text="ارسال" />
                        <asp:Button runat="server" OnClick="SignOut" class="contact100-form-btn" Text="خروج" />
                    </div>
                </form>
            </div>
        </div>
    </div>
    <%--  <form id="form1" runat="server">
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
    </form>--%>
</body>
</html>


