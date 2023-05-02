<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inbox.aspx.cs" Inherits="EmailService.Inbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />--%>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />


    <link href="Content/Site.css" rel="stylesheet" type="text/css" />

    <title>صندوق دریافت</title>

</head>
<body>

    <div class="container">
        <div class="row">
            <!-- BEGIN INBOX -->
            <div class="col-md-12">
                <div class="grid email">
                    <div class="grid-body">
                        <div class="row">
                            <!-- BEGIN INBOX MENU -->
                            <div class="col-md-3">
                                <h2 class="grid-title"><i class="fa fa-inbox"></i>Inbox</h2>
                                <a href="SendMessage.aspx" class="btn btn-block btn-primary"><i class="fa fa-pencil"></i>&nbsp;&nbsp;NEW MESSAGE</a>

                                <hr />

                                <div>
                                    <ul class="nav nav-pills nav-stacked">
                                        <li class="header">Folders</li>
                                        <li class="active"><a href="./Inbox.aspx"><i class="fa fa-inbox"></i>Inbox</a></li>
                                        <li><a href="./Sendbox.aspx"><i class="fa fa-mail-forward"></i>Sent</a></li>
                                        <li><a href="./Deleted.aspx"><i class="fa fa-folder"></i>Deleted</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- END INBOX MENU -->



                            <!-- BEGIN INBOX CONTENT -->
                            <div class="col-md-9">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="btn-group">
                                            <ul class="nav nav-tabs custom-tab border-bottom-0 mt-4" id="myTab" role="tablist">
                                                <li class="list-inline-item text-danger">
                                                    <a href="#">
                                                        <button class="btn btn-circle btn-danger text-white">
                                                            <i class="fa fa-trash"></i>
                                                            <span class="ml-2 font-normal text-dark">Delete</span>
                                                        </button>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-9">
                                    <div class="table-responsive">
                                        <form id="form1" runat="server">
                                            <div>
                                                <asp:GridView ID="InboxGridView" runat="server"
                                                    AutoGenerateColumns="false" OnRowCommand="InboxGridView_RowCommand"
                                                    AllowPaging="True" PageSize="2" OnPageIndexChanging="InboxGridView_PageIndexChanging"
                                                    class="table table-bordered table-condensed table-responsive table-hover ">
                                                    <Columns>
                                                        <asp:BoundField DataField="MessageId" HeaderText="Id" />
                                                        <asp:BoundField DataField="Subject" HeaderText="Subject" />
                                                        <asp:BoundField DataField="MessageText" HeaderText="Body" />
                                                        <asp:BoundField DataField="SenderUserName" HeaderText="Sender" />
                                                        <asp:BoundField DataField="SentDate" HeaderText="Receive Date" DataFormatString="{0:MM/dd/yyyy}" />
                                                        <asp:CommandField ShowSelectButton="True" SelectText="View Details" />
                                                    </Columns>
                                                    <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NumericFirstLast" PageButtonCount="5" NextPageText="Next" PreviousPageText="Previous" Position="Bottom" />
                                                    <PagerStyle CssClass="pagination" />
                                                </asp:GridView>
                                            </div>
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

<script>

</script>


