<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search_Engine_2_Manual.aspx.cs" Inherits="Search_Engine_2_Manual" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�h����� �� �j�M���� ----�ۤv�ʤ�g [ �����I]</title>
    <style type="text/css">
        .style1
        {
            color: #FF6666;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>
        �ۤv�ʤ�g<span class="style1">�����I</span></p>
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
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
            BorderWidth="1px" CellPadding="2" DataKeyNames="id" 
            Font-Size="Small" ForeColor="Black" 
            GridLines="None" PageSize="5" 
            onpageindexchanging="GridView1_PageIndexChanging">
            <FooterStyle BackColor="Tan" />
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
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:GridView>

        <br />
        <br />
        <br />
        �ۤv�ʤ�g<span class="style1">�����I</span><br />
        �ҥ� Ch. 14���d�� -- Default_3_DataSet_ALL_Manual.aspx</div>
    </form>
 
</body>
</html>
