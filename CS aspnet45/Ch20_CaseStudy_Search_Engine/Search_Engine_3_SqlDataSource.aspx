<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search_Engine_3_SqlDataSource.aspx.cs" Inherits="Search_Engine_3_SqlDataSource" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>多重欄位的搜尋引擎----SqlDataSource的寫法(50%)</title>
    <style type="text/css">
        .style1
        {
            font-weight: bold;
            background-color: #FF9999;
        }
        .style2
        {
            color: #0000CC;
            background-color: #99CCFF;
        }
        .style3
        {
            color: #99FFCC;
            background-color: #006600;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <strong>多重欄位 的 搜尋引擎----<span class="style2">SqlDataSource的寫法</span><br />
            <span style="color: #ff0000">
            自己撰寫SQL指令（50%，後置程式碼）</span></strong><br />
        <br />
        <ul>
            <li><span style="font-size: 10pt">「分頁」的部份，必須自己<span class="style1">手寫程式</span>。並且將GridView的<span style="color: #ff0000">「EnableSortingAndPagingCallsBack」屬性<span
                style="font-size: 12pt; text-decoration: underline">關閉(=False)</span>。<span
                style="color: #000000">否則，會出現意想不到的錯。</span></span></span></li>
            <li><span style="color: #ff0000"><span style="font-size: 10pt"><span style="color: #000000">
                如果開啟</span>「EnableSortingAndPagingCallsBack」屬性(=True)，</span><span style="font-size: 10pt;
                    color: #000000"><strong><span style="text-decoration: underline">而且</span></strong>「分頁」不自己寫程式的話，<br />
                    搜尋成果的分頁，會出錯。必須「重複多按一下」搜尋按鈕，才能看見正確結果。</span></span></li>
        </ul>
        Title:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Summary:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        Article:
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search~" 
            onclick="Button1_Click" /><br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
            DataKeyNames="id" Font-Size="X-Small" ForeColor="#333333" 
            AllowPaging="True" PageSize="3" DataSourceID="SqlDataSource1" 
            onpageindexchanging="GridView1_PageIndexChanging">
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="test_time" HeaderText="test_time" SortExpression="test_time" DataFormatString="{0:yyyy/MM/dd}" HtmlEncode="False" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" >
                    <ItemStyle Font-Bold="True" Font-Size="Medium" ForeColor="#004000" />
                </asp:BoundField>
                <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary" />
                <asp:BoundField DataField="article" HeaderText="article" SortExpression="article" >
                    <ItemStyle Font-Size="X-Small" ForeColor="Purple" />
                </asp:BoundField>
                <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
            </Columns>
            <RowStyle BackColor="#E3EAEB" />
            <EditRowStyle BackColor="#7C6F57" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Left" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
            <EmptyDataTemplate>
                <strong><span style="font-size: 16pt; color: #ff0000">Sorry!!....NOTHING!!</span></strong>
            </EmptyDataTemplate>
        </asp:GridView>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:testConnectionString %>">
        </asp:SqlDataSource>
        
        <br />
        <b><span class="style3">(SqlDataSource的資料連結字串 與 DataBinding，</span><br 
            class="style3" />
        <span class="style3">仍是由 HTML設計畫面的 SqlDataSource控制項來做)</span></b></form>
 
</body>
</html>

