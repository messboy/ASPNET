<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search_DataSet_2_Manual.aspx.cs" Inherits="Book_Sample_CaseStudy_Search_Engine_Search_DataSet_2_Manual" %>

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
        .style5
        {
            color: #FF0000;
        }
        .style6
        {
            font-weight: bold;
            background-color: #999999;
        }
        .style7
        {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style7">自己寫後置程式碼</span><br />
    
        請輸入關鍵字（title欄位）：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataKeyNames="id" 
            GridLines="Vertical" PageSize="5" ForeColor="Black" 
            onpageindexchanging="GridView1_PageIndexChanging">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="test_time" HeaderText="test_time" 
                    SortExpression="test_time" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="author" HeaderText="author" 
                    SortExpression="author" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>


        <br />
        <br />
        <span class="style6">沒有搭配 SqlDataSource，自己寫程式。</span><br />
        GridView的<span class="style5">「EnableSortingAndPagingCallbacks」屬性</span>，<span 
            class="style1">不</span>可以開啟，不然會錯。<br />
        <br />


        <br />
        <br />
        <br />
        <br />
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

        (1).&nbsp; DataSet先把資料庫的「<b>所有</b>記錄」取下來。因為SQL指令是 <span class="style2">SELECT 
        * FROM [test]
        </span><br />(2).&nbsp; 透過 SqlDataSource的<span class="style1"> FilterExpression</span>進行篩選。</div>
    </form>
</body>
</html>
