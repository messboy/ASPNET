<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search_DataSet.aspx.cs" Inherits="Book_Sample_CaseStudy_Search_Engine_Search_DataSet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style2
        {
            font-weight: bold;
            background-color: #FFCC99;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        請輸入關鍵字（title欄位）：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataKeyNames="id" DataSourceID="SqlDataSource1" 
            EnableSortingAndPagingCallbacks="True" GridLines="Horizontal" PageSize="5">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="test_time" HeaderText="test_time" 
                    SortExpression="test_time" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="author" HeaderText="author" 
                    SortExpression="author" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            
            SelectCommand="SELECT * FROM [test] WHERE ([title] LIKE '%' + @title + '%')" >
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="title" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <br />
        <br />
        傳統作法：<br />
&nbsp;&nbsp;&nbsp; 透過SQL指令的「Select陳述句」，以 <span class="style2">Where子句</span>來篩選。<br />
&nbsp;&nbsp;&nbsp; SqlDataSource的 <span class="style1">SelectCommand</span>=&quot;SELECT * FROM [test]
        <span class="style2">WHERE</span> ([title] LIKE &#39;%&#39; + <span class="style1">
        @title</span> + &#39;%&#39;)&quot;
    
    </div>
    </form>
</body>
</html>
