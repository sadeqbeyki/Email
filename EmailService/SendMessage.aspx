<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMessage.aspx.cs" Inherits="EmailService.SendMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ارسال پیام</title>
</head>
<body>


    <div class="bg-contact100">
        <div class="container-contact100">
            <div class="wrap-contact100">
                <div class="contact100-pic js-tilt" data-tilt>
                    <img src="https://i.imgur.com/VRFiMzM.png" alt="IMG" />
                </div>
                <form class="contact100-form validate-form" name="form1" runat="server">
                    <span class="contact100-form-title">Get in touch</span>

                    <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
                        <p>
                            <asp:Literal runat="server" ID="StatusText" />
                        </p>
                        <p>
                            <asp:Literal runat="server" ID="StatusMessage" />
                        </p>
                    </asp:PlaceHolder>


                    <div class="wrap-input100 validate-input" data-validate="Sender UserName is required">
                        <input runat="server" id="SenderUserName" class="input100" type="text" name="senderusername" placeholder="SenderUserName" />
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Receiver UserName is required">
                        <input runat="server" id="ReceiverUserName" class="input100" type="text" name="receiverusername" placeholder="ReceiverUserName" />
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="DropDownList UserName is required">
                        <input runat="server" id="ReceiverDropDownList" class="input100" type="text" name="username" placeholder="UserName" />
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Subject is required">
                        <input runat="server" id="Subject" class="input100" type="text" name="subject" placeholder="Subject" />
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Message is required">
                        <textarea runat="server" class="input100" name="MessageText" placeholder="MessageText"></textarea>
                        <span class="focus-input100"></span>
                    </div>
                    <div class="container-contact100-form-btn">
                        <button runat="server" onclick="SendMessage_Click" class="contact100-form-btn">ارسال</button>
                    </div>
                    <div class="container-contact100-form-btn">
                        <button runat="server" onclick="LogoutButton" class="contact100-form-btn">خروج</button>
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
