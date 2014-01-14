<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search_Engine_0_CancelSelectOnNullParameter.aspx.cs" Inherits="Book_Sample_CaseStudy_Search_Engine_Search_Engine_0_CancelSelectOnNullParameter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>最簡單的搜尋引擎</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style2
        {
            font-weight: bold;
            background-color: #FFFF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        搜尋關鍵字 (Summary欄位)：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Search..." />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="3" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" Font-Size="Small" 
            GridLines="Horizontal" PageSize="5" AllowSorting="True" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
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
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            
            
            SelectCommand="SELECT [id], [test_time], [title], [summary], [author] FROM [test] WHERE ([summary] LIKE '%' + IsNull(@summary, '') + '%')" 
            CancelSelectOnNullParameter="False" >
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="summary" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        因為 <b>SqlDataSource</b>的<span class="style1">「CancelSelectOnNullParameter」屬性</span>，預設為 
        <b>True</b>。<br />
        所以，當控制項的參數為 null（或Nothing）時，SqlDataSource便不會執行！</p>
    <p>
        本範例需修改如下：</p>
    <p>
        1. <b>SqlDataSource</b>的<span class="style1">「CancelSelectOnNullParameter」屬性</span>，設定為 
        <b>False</b>。</p>
    <p>
        2. <b>SqlDataSource</b>的 <span class="style1">SelectCommand</span>修改為「SELECT 
        [id], [test_time], [title], [summary], [author] FROM [test] WHERE ([summary] 
        LIKE &#39;%&#39; + <span class="style2">IsNull(@summary, &#39;&#39;)</span> + &#39;%&#39;)」。</p>
    <p>
        <span class="style2">IsNull(A, B)</span>是SQL指令的函數，如果「A欄位」是空，那麼就用「B值」來代替。</p>
    <div>
    
    </div>
    </form>
</body>
</html>
