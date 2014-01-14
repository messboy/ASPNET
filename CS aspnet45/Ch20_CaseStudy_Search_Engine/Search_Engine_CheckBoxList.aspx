<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search_Engine_CheckBoxList.aspx.cs" Inherits="Search_Engine_CheckBoxList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>未命名頁面</title>
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #FF0000;
        }
        .style2
        {
            color: #FF0000;
            font-weight: bold;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style1">程式有缺點，</span><span class="style2">組合好的SQL指令不準確</span><br />
    
        您要搜尋哪一類的文章？<asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>科技</asp:ListItem>
            <asp:ListItem>政治</asp:ListItem>
            <asp:ListItem>娛樂</asp:ListItem>
            <asp:ListItem>教育</asp:ListItem>
            <asp:ListItem>其他</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Search..." />
&nbsp;<br />
        <br />
        您搜尋的字串是：<asp:Label ID="Label1" runat="server" style="color: #0066FF"></asp:Label>
    </div>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
        DataSourceID = "SqlDataSource1"
        ForeColor="#333333" GridLines="None" PageSize="5">
        <RowStyle BackColor="#E3EAEB" />
        <Columns>
            <asp:BoundField DataField="test_time" HeaderText="test_time" 
                SortExpression="test_time" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
        </Columns>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:testConnectionString %>" >
    </asp:SqlDataSource>
    </form>
 
</body>
</html>
