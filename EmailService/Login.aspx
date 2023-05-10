<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmailService.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ورود</title>
    <%--<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />--%>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet" />

</head>
<body style="font-family: Tahoma; font-size: small">
    <div class="h-100 d-flex align-items-center justify-content-center text-center">

        <form id="form1" runat="server">

            <hr />
            <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
                <p>
                    <asp:Literal runat="server" ID="StatusText" />
                </p>
            </asp:PlaceHolder>
            <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">

                <div class="row">
                    <div class="col-md-12 ">
                        <div class="form-outline ">
                            <asp:Label runat="server" AssociatedControlID="UserName" class="form-label">ایمیل</asp:Label>
                            <div>
                                <asp:TextBox runat="server" ID="UserName" class="form-control" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 mb-12">
                        <div class="form-outline mb-12">
                            <asp:Label runat="server" AssociatedControlID="Password" class="form-label">پسورد</asp:Label>
                            <div>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" class="form-control" />
                            </div>
                        </div>
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
                    <hr />
                   

                <div class="row">
                    <div class="col-md-12 mb-12">
                        <div class="form-outline mb-12">
                            <div>
                                <asp:Button runat="server" OnClick="SignIn" Text="ورود" class="btn btn-primary btn-block mb-4" />
                            </div>
                        </div>
                        <div>
                            <p>هنوز عضو نشدید؟ <a href="./register.aspx">ثبت نام</a></p>
                        </div>
                    </div>
                </div>
            </asp:PlaceHolder>
            <asp:PlaceHolder runat="server" ID="LogoutButton" Visible="false">
                <div>
                    <div>
                        <asp:Button runat="server" OnClick="SignOut" Text="Log out" class="btn btn-primary btn-block mb-4" />
                    </div>
                </div>
            </asp:PlaceHolder>
                    <hr />

        </form>
    </div>


</body>
</html>
