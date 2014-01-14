<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search_Engine_2_Manual_Parameter_function.aspx.cs" Inherits="Book_Sample_CaseStudy_Search_Engine_Search_Engine_2_Manual_Parameter_function" %>

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
            background-color: #000099;
        }
        .style3
        {
            font-weight: bold;
        }
        .style5
        {
            color: #FFFFFF;
            background-color: #0000CC;
        }
        .style6
        {
            color: #000099;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>
        自己動手寫<span class="style1">分頁！</span><span class="style3"><span class="style5">Dataset/DataAdapter參數</span></span></p>
        <p class="style6">
            把常用的程式，自己寫成 function重複呼叫。</p>
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
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" 
            Font-Size="Small" PageSize="5" ForeColor="#333333" GridLines="None" 
        onpageindexchanging="GridView1_PageIndexChanging">
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
            <AlternatingRowStyle BackColor="White" />
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
            <PagerStyle BackColor="#2461BF" ForeColor="White" 
                HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
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
