<%@ Page Language="C#" AutoEventWireup="true" CodeFile="8Gridview.aspx.cs" Inherits="_8Gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="gridview8">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="realname" HeaderText="realname" SortExpression="realname" />
                <asp:BoundField DataField="account" HeaderText="account" SortExpression="account" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:TemplateField HeaderText="sex" SortExpression="sex">
                    <EditItemTemplate>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server"  RepeatDirection="Horizontal" SelectedValue='<%# Bind("sex") %>'>
                            <asp:ListItem>女</asp:ListItem>
                            <asp:ListItem>男</asp:ListItem>
                        </asp:RadioButtonList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("sex") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="gridview8" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [8-22] WHERE [id] = @id" InsertCommand="INSERT INTO [8-22] ([realname], [account], [password], [sex]) VALUES (@realname, @account, @password, @sex)" SelectCommand="SELECT [id], [realname], [account], [password], [sex] FROM [8-22]" UpdateCommand="UPDATE [8-22] SET [realname] = @realname, [account] = @account, [password] = @password, [sex] = @sex WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="realname" Type="String" />
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="sex" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="realname" Type="String" />
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="sex" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
