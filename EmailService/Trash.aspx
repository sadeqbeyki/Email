<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trash.aspx.cs" Inherits="EmailService.Trash" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />--%>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />


    <link href="Content/Site.css" rel="stylesheet" type="text/css" />

    <title>حذفیات</title>

</head>
<body style="font-family: Tahoma; font-size: small" class="text-center">

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="grid email">
                    <div class="grid-body">
                        <div class="row">
                            <div class="col-md-3">
                                <h2 class="grid-title"><i class="fa fa-inbox"></i>حذفیات</h2>
                                <a href="SendMessage.aspx" class="btn btn-block btn-primary"><i class="fa fa-pencil"></i>&nbsp;&nbsp;ایجاد پیام جدید</a>

                                <hr />

                                <div>
                                    <ul class="nav nav-pills nav-stacked">
                                        <li class="header bg-info">پوشه ها</li>
                                        <li><a href="./Inbox.aspx"><i class="fa fa-inbox"></i>صندوق ورودی</a></li>
                                        <li><a href="./Sendbox.aspx"><i class="fa fa-mail-forward"></i>ارسالی ها</a></li>
                                        <li class="active"><a href="./Trash.aspx"><i class="fa fa-folder"></i>حذف شده ها</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="btn-group">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-9">
                                    <div class="table-responsive">
                                        <form id="form1" runat="server">
                                            <div style="float: right">
                                                <asp:Button runat="server" OnClick="SignOut" Text="خروج" class="btn btn-circle btn-dark text-white "></asp:Button>
                                            </div>
                                            <asp:Label ID="StatusText" runat="server" />
                                            <div>
                                                <asp:GridView ID="TrashGridView" runat="server"
                                                    AutoGenerateColumns="false" OnRowCommand="TrashGridView_RowCommand"
                                                    AllowPaging="True" PageSize="5" OnPageIndexChanging="TrashGridView_PageIndexChanging"
                                                    class="table table-bordered table-condensed table-responsive table-hover ">
                                                    <Columns>
                                                        <asp:BoundField DataField="MessageId" HeaderText="ردیف" />
                                                        <asp:BoundField DataField="Subject" HeaderText="موضوع" />
                                                        <asp:BoundField DataField="MessageText" HeaderText="خلاصه پیام" />
                                                        <asp:BoundField DataField="SenderUserName" HeaderText="ارسال کننده" />
                                                        <asp:BoundField DataField="SentDate" HeaderText="تاریخ دریافت" DataFormatString="{0:MM/dd/yyyy}" />
                                                        <asp:CommandField ShowSelectButton="True" SelectText="جزئیات" HeaderText="نمایش جزئیات" />
                                                    </Columns>
                                                    <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NumericFirstLast" PageButtonCount="5" NextPageText="Next" PreviousPageText="Previous" Position="Bottom" />
                                                    <PagerStyle CssClass="pagination" />
                                                </asp:GridView>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
