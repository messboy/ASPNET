<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search_Engine_2_Manual_Parameter.aspx.cs" Inherits="Book_Sample_CaseStudy_Search_Engine_Search_Engine_2_Manual_Parameter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>多重欄位 的 搜尋引擎 ----自己動手寫 [ 分頁！] + Dataset/DataAdapter參數</title>
    <style type="text/css">
        .style1
        {
            color: #FF6666;
            font-weight: bold;
        }
        .style2
        {
            color: #FFFFFF;
            background-color: #CC0000;
        }
        .style3
        {
            font-weight: bold;
        }
        .style4
        {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>
        自己動手寫<span class="style1">分頁！</span><span class="style3"><span class="style2">Dataset/DataAdapter參數</span></span></p>
        <p>
            &nbsp;</p>
        <p>
        Title :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        Summary :
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Search..." 
            onclick="Button1_Click" />
    </p>
    </div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
            BorderWidth="1px" CellPadding="4" DataKeyNames="id" 
            Font-Size="Small" PageSize="5" BorderStyle="None" 
        onpageindexchanging="GridView1_PageIndexChanging">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="test_time" HeaderText="test_time" 
                    SortExpression="test_time" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="summary" HeaderText="summary" 
                    SortExpression="summary" />
                <asp:BoundField DataField="author" HeaderText="author" 
                    SortExpression="author" />
            </Columns>
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" 
                HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" ForeColor="#663399" Font-Bold="True" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>

        <br />
        <br />
        <br />
        自己動手寫<span class="style1">分頁！</span><span class="style3"><span 
        class="style2">DataSet / DataAdapter參數</span></span><br />
        模仿 Ch. 14的範例 -- Default_3_DataSet_ALL_Manual.aspx</div>
    </form>
</body>
</html>
