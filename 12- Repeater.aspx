<%@ Page Language="C#" AutoEventWireup="true" CodeFile="12- Repeater.aspx.cs" Inherits="_12__Repeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                 <div align="center">
                    <table border="1" width="90%">
                        <tr>
                            <td><b>id</b></td>
                            <td><b>Date</b></td>
                            <td><b>Title</b></td>
                            <td><b>Summary</b></td>
                        </tr>
                    
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><small><%# DataBinder.Eval(Container.DataItem,"id") %></small></td>
                    <td><small><%# DataBinder.Eval(Container.DataItem, "test_time", "{0:yyyy/MM/dd}") %></small></td>
                    <td>
                        <a href="12-repeater2.aspx?id=<%# Eval("id") %>"
                        <b><%# Eval("title") %></b>
                            <br />
                        hyprelink方式:
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "12-repeater2.aspx?id=" + Eval("id")%>'><%#Eval("title") %></asp:HyperLink>
                    </td>
                    <td><small><%# DataBinder.Eval(Container.DataItem,"summary") %></small></td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr>
                    <td bgcolor="gray"><small><%# DataBinder.Eval(Container.DataItem,"id") %></small></td>
                    <td bgcolor="gray"><small><%# DataBinder.Eval(Container.DataItem, "test_time", "{0:yyyy/MM/dd}") %></small></td>
                    <td bgcolor="gray">
                        <a href="12-repeater2.aspx?id=<%# Eval("id") %>"
                        <b><%# Eval("title") %></b></td>
                    <td bgcolor="gray"><small><%# DataBinder.Eval(Container.DataItem,"summary") %></small></td>
                </tr>
            </AlternatingItemTemplate>
            <FooterTemplate>
                </table>
                </div>
            </FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT * FROM [test]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
