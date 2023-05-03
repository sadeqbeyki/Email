<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sendbox.aspx.cs" Inherits="EmailService.Sendbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />

    <link href="Content/Site.css" rel="stylesheet" type="text/css" />
    <title>صندوق ارسال</title>


</head>

<body  style="font-family: Tahoma; font-size: small" class="text-center">
    <div class="container">
        <div class="row">
            <!-- BEGIN INBOX -->
            <div class="col-md-12">
                <div class="grid email">
                    <div class="grid-body">
                        <div class="row">
                            <!-- BEGIN INBOX MENU -->
                            <div class="col-md-3">
                                <h2 class="grid-title"><i class="fa fa-inbox"></i>ارسالی ها</h2>
                                <a href="SendMessage.aspx" class="btn btn-block btn-primary"><i class="fa fa-pencil"></i>&nbsp;&nbsp;ایجاد پیام جدید</a>

                                <hr />

                                <div>
                                    <ul class="nav nav-pills nav-stacked">
                                        <li class="header">پوشه ها</li>
                                        <li><a href="./Inbox.aspx"><i class="fa fa-inbox"></i>صندوق ورودی</a></li>
                                        <li class="active"><a href="./Sendbox.aspx"><i class="fa fa-mail-forward"></i>ارسالی ها</a></li>
                                        <li><a href="./Deleted.aspx"><i class="fa fa-folder"></i>حذف شده ها</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- END INBOX MENU -->



                            <!-- BEGIN INBOX CONTENT -->
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="btn-group">
<%--                                            <ul class="nav nav-tabs custom-tab border-bottom-0 mt-4" id="myTab" role="tablist">
                                                <li class="list-inline-item text-danger">
                                                    <a href="#">
                                                        <button class="btn btn-circle btn-danger text-white">
                                                            <i class="fa fa-trash"></i>
                                                            <span class="ml-2 font-normal text-dark">Delete</span>
                                                        </button>
                                                    </a>
                                                </li>
                                            </ul>--%>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-9">
                                    <div class="table-responsive">
                                        <form id="form1" runat="server">
                                            <div>
                                                <asp:GridView ID="SendboxGridView" runat="server" AutoGenerateColumns="false" OnRowCommand="SendboxGridView_RowCommand" class="table table-bordered table-condensed table-responsive table-hover">
                                                    <Columns>
                                                        <asp:BoundField DataField="MessageId" HeaderText="ردیف" />
                                                        <asp:BoundField DataField="Subject" HeaderText="موضوع" />
                                                        <asp:BoundField DataField="MessageText" HeaderText="خلاصه پیام" />
                                                        <asp:BoundField DataField="ReceiverUserName" HeaderText="دریافت کننده" />
                                                        <asp:BoundField DataField="SentDate" HeaderText="تاریخ ارسال" DataFormatString="{0:MM/dd/yyyy}" />
                                                        <asp:CommandField ShowSelectButton="True" SelectText="جزئیات"  HeaderText="جزئیات پیام"/>
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                                           <br />
                                            <br />
                                            <asp:Button runat="server" OnClick="SignOut" Text="خروج" class="btn btn-circle btn-danger text-white"></asp:Button>

                                        </form>
                                    </div>

<%--                                    <ul class="pagination">
                                        <li class="disabled"><a href="#">«</a></li>
                                        <li class="active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">»</a></li>
                                    </ul>--%>
                                </div>
                                <!-- END INBOX CONTENT -->                             
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END INBOX -->
            </div>
        </div>
    </div>



</body>
</html>
