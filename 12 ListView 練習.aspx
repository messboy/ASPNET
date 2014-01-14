<%@ Page Language="C#" AutoEventWireup="true" CodeFile="12 ListView 練習.aspx.cs" Inherits="_12_ListView_練習" MaintainScrollPositionOnPostback="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" OnItemCommand="ListView1_ItemCommand" OnItemCanceling="ListView1_ItemCanceling" OnItemEditing="ListView1_ItemEditing"  >
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                    </td>
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="test_timeLabel" runat="server" Text='<%# Eval("test_time") %>' />
                    </td>
                    <td>
                        <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                    </td>
                    <td>
                        <asp:Label ID="summaryLabel" runat="server" Text='<%# Eval("summary") %>' />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Button" CommandName="select" />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </td>
                    <td>
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="test_timeTextBox" runat="server" Text='<%# Bind("test_time") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="summaryTextBox" runat="server" Text='<%# Bind("summary") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="articleTextBox" runat="server" Text='<%# Bind("article") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>未傳回資料。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="test_timeTextBox" runat="server" Text='<%# Bind("test_time") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="summaryTextBox" runat="server" Text='<%# Bind("summary") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="articleTextBox" runat="server" Text='<%# Bind("article") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF;color: #333333;">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                    </td>
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="test_timeLabel" runat="server" Text='<%# Eval("test_time") %>' />
                    </td>
                    <td>
                        <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                    </td>
                    <td>
                        <asp:Label ID="summaryLabel" runat="server" Text='<%# Eval("summary") %>' />
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Button" CommandName="select" />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                    <th runat="server"></th>
                                    <th runat="server">id</th>
                                    <th runat="server">test_time</th>
                                    <th runat="server">title</th>
                                    <th runat="server">summary</th>
                                    <th runat="server">article</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                    </td>
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="test_timeLabel" runat="server" Text='<%# Eval("test_time") %>' />
                    </td>
                    <td>
                        <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                    </td>
                    <td>
                        <asp:Label ID="summaryLabel" runat="server" Text='<%# Eval("summary") %>' />
                    </td>
                    <td>
                        <asp:Label ID="articleLabel" runat="server" Text='<%# Eval("article") %>' />
                        <asp:Button ID="Button2" runat="server" Text="看完了請返回!!" CommandName="my_Detail" />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [test] WHERE [id] = @id" InsertCommand="INSERT INTO [test] ([test_time], [title], [summary], [article]) VALUES (@test_time, @title, @summary, @article)" SelectCommand="SELECT [id], [test_time], [title], [summary], [article] FROM [test] ORDER BY [id]" UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [title] = @title, [summary] = @summary, [article] = @article WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="test_time" Type="DateTime" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="summary" Type="String" />
                <asp:Parameter Name="article" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="test_time" Type="DateTime" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="summary" Type="String" />
                <asp:Parameter Name="article" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:ListView ID="ListView2" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" GroupItemCount="5">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color:#FFF8DC;">id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    test_time:
                    <asp:Label ID="test_timeLabel" runat="server" Text='<%# Eval("test_time") %>' />
                    <br />
                    title:
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                    <br />
                    summary:
                    <asp:Label ID="summaryLabel" runat="server" Text='<%# Eval("summary") %>' />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    test_time:
                    <asp:TextBox ID="test_timeTextBox" runat="server" Text='<%# Bind("test_time") %>' />
                    <br />
                    title:
                    <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                    <br />
                    summary:
                    <asp:TextBox ID="summaryTextBox" runat="server" Text='<%# Bind("summary") %>' />
                    <br />
                    article:
                    <asp:TextBox ID="articleTextBox" runat="server" Text='<%# Bind("article") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>未傳回資料。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">test_time:
                    <asp:TextBox ID="test_timeTextBox" runat="server" Text='<%# Bind("test_time") %>' />
                    <br />
                    title:
                    <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                    <br />
                    summary:
                    <asp:TextBox ID="summaryTextBox" runat="server" Text='<%# Bind("summary") %>' />
                    <br />
                    article:
                    <asp:TextBox ID="articleTextBox" runat="server" Text='<%# Bind("article") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color:#DCDCDC;color: #000000;">id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    test_time:
                    <asp:Label ID="test_timeLabel" runat="server" Text='<%# Eval("test_time") %>' />
                    <br />
                    title:
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                    <br />
                    summary:
                    <asp:Label ID="summaryLabel" runat="server" Text='<%# Eval("summary") %>' />
                    <br />

                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="20">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    test_time:
                    <asp:Label ID="test_timeLabel" runat="server" Text='<%# Eval("test_time") %>' />
                    <br />
                    title:
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                    <br />
                    summary:
                    <asp:Label ID="summaryLabel" runat="server" Text='<%# Eval("summary") %>' />
                    <br />
                    article:
                    <asp:Label ID="articleLabel" runat="server" Text='<%# Eval("article") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
    </div>
    </form>
</body>
</html>
