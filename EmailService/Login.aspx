<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmailService.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ورود</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />

</head>
<body style="font-family: Arial, Helvetica, sans-serif; font-size: small">
    <form id="form1" runat="server">
        <div>
            <h4 style="font-size: medium">Log In</h4>
            <hr />
            <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
                <p>
                    <asp:Literal runat="server" ID="StatusText" />
                </p>
            </asp:PlaceHolder>
            <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">

                <div class="form-outline mb-4">
                    <asp:Label runat="server" AssociatedControlID="UserName" class="form-label">User name</asp:Label>
                    <div>
                        <asp:TextBox runat="server" ID="UserName" class="form-control" />
                    </div>
                </div>

                <div class="form-outline mb-4">
                    <asp:Label runat="server" AssociatedControlID="Password" class="form-label">Password</asp:Label>
                    <div>
                        <asp:TextBox runat="server" ID="Password" TextMode="Password" class="form-control" />
                    </div>
                </div>

<%--                <!-- 2 column grid layout for inline styling -->
                <div class="row mb-4">
                    <div class="col d-flex justify-content-center">
                        <!-- Checkbox -->
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
                            <label class="form-check-label" for="form2Example31">Remember me </label>
                        </div>
                    </div>

                    <div class="col">
                        <!-- Simple link -->
                        <a href="#!">Forgot password?</a>
                    </div>
                </div>--%>


                <div style="margin-bottom: 10px">
                    <div>
                        <asp:Button runat="server" OnClick="SignIn" Text="Log in" class="btn btn-primary btn-block mb-4" />
                    </div>
                </div>

                <!-- Register buttons -->
                <div class="text-center">
                    <p>Not a member? <a href="./register.aspx">Register</a></p>
                </div>

            </asp:PlaceHolder>
            <asp:PlaceHolder runat="server" ID="LogoutButton" Visible="false">
                <div>
                    <div>
                        <asp:Button runat="server" OnClick="SignOut" Text="Log out" class="btn btn-primary btn-block mb-4" />
                    </div>
                </div>
            </asp:PlaceHolder>
        </div>
    </form>



</body>
</html>
