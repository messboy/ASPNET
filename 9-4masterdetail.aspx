<%@ Page Language="C#" AutoEventWireup="true" CodeFile="9-4masterdetail.aspx.cs" Inherits="_9masterdetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .新增樣式1 {
            font-size: x-large;
            font-style: oblique;
            color: #FF00FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="margin-bottom: 0px" Text="serach" OnClick="Button1_Click" />
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" 
            DataKeyNames="id" ForeColor="#333333" GridLines="None" PageSize="5" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowHeaderWhenEmpty="True" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="test_time" HeaderText="test_time" SortExpression="test_time" DataFormatString="{0:yyyy/MM/dd}" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" ItemStyle-CssClass="新增樣式1" >
<ItemStyle CssClass="新增樣式1"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <EmptyDataTemplate>
                Sorry can not find anything
            </EmptyDataTemplate>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT [id], [test_time], [title], [summary] FROM [test] WHERE ([title] like '%'+ @title +'%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="title" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" ShowHeaderWhenEmpty="True" >
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="test_time" HeaderText="test_time" SortExpression="test_time" />
                <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary" />
                <asp:BoundField DataField="article" HeaderText="article" SortExpression="article" />
                <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                <asp:BoundField DataField="hit_no" HeaderText="hit_no" SortExpression="hit_no" />
                <asp:BoundField DataField="get_no" HeaderText="get_no" SortExpression="get_no" />
                <asp:BoundField DataField="email_no" HeaderText="email_no" SortExpression="email_no" />
                <asp:BoundField DataField="approved" HeaderText="approved" SortExpression="approved" />
            </Columns>
            <EmptyDataTemplate>
                找不到檔案唷!!!!!!
            </EmptyDataTemplate>
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
             SelectCommand="SELECT * FROM [test] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
