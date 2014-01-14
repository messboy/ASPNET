<%@ Page Language="C#" AutoEventWireup="true" CodeFile="9-2 gridview hyperlink.aspx.cs" Inherits="_9_2_gridview_hyperlink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>hi</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="5">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="test_time" HeaderText="test_time" SortExpression="test_time" DataFormatString="{0:yyyy/MM/dd}" />
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="9-2Default.aspx?id={0}" DataTextField="title" />
                <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [id], [test_time], [title], [summary] FROM [test]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
