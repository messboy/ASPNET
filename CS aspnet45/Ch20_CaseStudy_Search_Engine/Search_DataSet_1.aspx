<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search_DataSet_1.aspx.cs" Inherits="Book_Sample_CaseStudy_Search_Engine_Search_DataSet_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style2
        {
            background-color: #FFFF00;
        }
        .style3
        {
            color: #0000FF;
            font-weight: bold;
        }
        .style4
        {
            font-weight: bold;
            background-color: #FFFF00;
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
            BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
            DataKeyNames="id" DataSourceID="SqlDataSource1" 
            EnableSortingAndPagingCallbacks="True" GridLines="Horizontal" PageSize="5">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="test_time" HeaderText="test_time" 
                    SortExpression="test_time" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="author" HeaderText="author" 
                    SortExpression="author" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            
            SelectCommand="SELECT * FROM [test]" 
            FilterExpression="title like '%{0}%'" >
            <FilterParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="newparameter1" 
                    PropertyName="Text" />
            </FilterParameters>

        </asp:SqlDataSource>
    
        <br />
        <br />
        <span class="style3">DataSet模式</span>底下的「<span class="style3">FilterExpression</span>」作法：<br />
        &nbsp;&nbsp;&nbsp;
        SqlDataSource的 <span class="style1">SelectCommand</span>=&quot;<span class="style2">SELECT 
        * FROM [test]</span>&quot;
    
        <br />
&nbsp;&nbsp;&nbsp; <span class="style1">FilterExpression</span>=&quot;title like &#39;%<span 
            class="style4">{0}</span>%&#39; 
        寫法比較特別，請注意！<br />
        <br />
        <br />
        執行流程：<br />
        <br />
        (1).&nbsp; DataSet先把資料庫的「<b>所有</b>記錄」取下來。因為SQL指令是 <span class="style2">SELECT 
        * FROM [test]<br />
        <br />
        </span>
        <br />
        (2).&nbsp; 透過 SqlDataSource的<span class="style1"> FilterExpression</span>進行篩選。</div>
    </form>
</body>
</html>
