<%@ Page Language="C#" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="AJAX_Case_Timer_ADOnet.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_AJAX_Case_Timer_ADOnet" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        定時撈出資料，即時監控資料表的最新狀態<br />
        <table border="1" width="100%" id="table1" bordercolor="#000080">
            <tr>
                <td width="100%" colspan="2"><strong><span class="auto-style1">小馬公司（Pony Corp.）</span></strong><br />
                    <br />
                    後端管理區.....此網頁第一次執行的時間：<asp:Label ID="Label3" runat="server" Style="font-weight: 700; color: #0033CC"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td width="20%" bgcolor="#CCFFFF">

                    <p>=== UpdatePanel ===</p>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            Server端的時間<br />
                            （透過AJAX更新）:<br />
                            <asp:Label ID="Label1" runat="server" Style="font-weight: 700; color: #FF0000"></asp:Label>
                            <p></p>
                            <p class="auto-style1"><strong>資料庫最新的狀況</strong></p>
                            <p>
                                （AJAX每三秒更新一次）：<asp:Label ID="Label2" runat="server" Style="font-weight: 700; color: #FF0000"></asp:Label>
                            </p>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <p></p>
                    <p>
                        <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick">
                        </asp:Timer>
                    </p>
                    <p>=== UpdatePanel ===</p>


                </td>
                <td width="80%" bgcolor="#FFCCFF">傳統 ASP.NET網頁：<br />
                    <div align="center">

                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" 
                            AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                            BorderWidth="1px" CellPadding="2" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                            ForeColor="Black" GridLines="None" PageSize="5" Width="460px" 
                            OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="test_time" HeaderText="test_time" SortExpression="test_time" />
                                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                            </Columns>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [test] WHERE [id] = @id" InsertCommand="INSERT INTO [test] ([test_time], [title]) VALUES (@test_time, @title)" SelectCommand="SELECT [id], [test_time], [title] FROM [test]" UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [title] = @title WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="test_time" Type="DateTime" />
                                <asp:Parameter Name="title" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="test_time" Type="DateTime" />
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                        <br />
                        --------------------------------------------<asp:Button ID="Button1" runat="server" Text="Button_強制啟動「新增」畫面" OnClick="Button1_Click" />
                        -----------<br />
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Width="460px">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <Fields>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="test_time" HeaderText="test_time" SortExpression="test_time" />
                                <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                                <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary" />
                                <asp:BoundField DataField="article" HeaderText="article" SortExpression="article" />
                                <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                            </Fields>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [test] WHERE [id] = @id" InsertCommand="INSERT INTO [test] ([test_time], [class], [title], [summary], [article], [author]) VALUES (@test_time, @class, @title, @summary, @article, @author)" SelectCommand="SELECT [id], [test_time], [class], [title], [summary], [article], [author] FROM [test] WHERE ([id] = @id)" UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [class] = @class, [title] = @title, [summary] = @summary, [article] = @article, [author] = @author WHERE [id] = @id" OnInserted="SqlDataSource2_Inserted">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="test_time" Type="DateTime" />
                                <asp:Parameter Name="class" Type="String" />
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="summary" Type="String" />
                                <asp:Parameter Name="article" Type="String" />
                                <asp:Parameter Name="author" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="test_time" Type="DateTime" />
                                <asp:Parameter Name="class" Type="String" />
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="summary" Type="String" />
                                <asp:Parameter Name="article" Type="String" />
                                <asp:Parameter Name="author" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                    </div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
