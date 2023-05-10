<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EmailService.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ثبت نام</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="font-family: Tahoma; font-size: small">

    <!-- Section: Design Block -->
    <section class="">

        <!-- Jumbotron -->
        <div class="px-4 py-5 px-md-5 text-center text-lg-start" style="background-color: hsl(0, 0%, 96%)">
            <div class="container">
                <div class="row gx-lg-5 align-items-center">
                    <div class="col-lg-6 mb-5 mb-lg-0">
                        <h1 class="my-5 display-3 fw-bold ls-tight">همین حالا ثبت نام کن
                            <br />
                            <span class="text-primary">S-Mail سرویس ایمیل</span>
                        </h1>
                    </div>

                    <div class="col-lg-6 mb-5 mb-lg-0">
                        <div class="card">
                            <div class="card-body py-5 px-md-5">

                                <form id="form1" runat="server">
                                    <br />
                                    <div>
                                        <p>
                                            <asp:Literal runat="server" ID="StatusMessage" />
                                        </p>
                                        <div class="row">
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <asp:Label runat="server" AssociatedControlID="UserName" class="form-label">ایمیل</asp:Label>
                                                    <div>
                                                        <asp:TextBox runat="server" ID="UserName" class="form-control" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <asp:Label runat="server" AssociatedControlID="Password" class="form-label">پسورد</asp:Label>
                                                    <div>
                                                        <asp:TextBox runat="server" ID="Password" TextMode="Password" class="form-control" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="row">
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword" class="form-label">تکرار پسورد</asp:Label>
                                                    <div>
                                                        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" class="form-control" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                        
                                        <div class="row">
                                            <div class="col-md-6 mb-4">
                                                <div class="form-outline">
                                                    <div>
                                                        <asp:Button runat="server" OnClick="CreateUser_Click" Text="ثبت نام" class="btn btn-primary btn-block mb-4" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Jumbotron -->
    </section>
    <!-- Section: Design Block -->


</body>
</html>
