<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageDetails.aspx.cs" Inherits="EmailService.MessageDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Message Details</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Message Details</h2>
                    <p>
                        <asp:Literal runat="server" ID="StatusText" />
                    </p>
                    <hr />
                    <asp:Button runat="server" OnClick="SignOut" Text="خروج" class="btn btn-circle btn-danger text-white"></asp:Button>
                    <asp:Button runat="server" OnClick="DeleteMessage" Text="حذف" class="btn btn-circle btn-danger text-white"></asp:Button>

                    <dl class="dl-horizontal">
                        <dt>Sender:</dt>
                        <dd>
                            <asp:Label ID="SenderLabel" runat="server" /></dd>
                        <dt>Receiver:</dt>
                        <dd>
                            <asp:Label ID="ReceiverLabel" runat="server" /></dd>
                        <dt>Subject:</dt>
                        <dd>
                            <asp:Label ID="SubjectLabel" runat="server" /></dd>
                        <dt>Date:</dt>
                        <dd>
                            <asp:Label ID="DateLabel" runat="server" /></dd>
                        <dt>Message:</dt>
                        <dd>
                            <asp:Label ID="MessageLabel" runat="server" /></dd>
                    </dl>
                </div>
            </div>
        </div>
        </form>
</body>
</html>
