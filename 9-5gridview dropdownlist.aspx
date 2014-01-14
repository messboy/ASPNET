<%@ Page Language="C#" AutoEventWireup="true" CodeFile="9-5gridview dropdownlist.aspx.cs" Inherits="gridview_dropdownlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        你想看哪一篇文章 :
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="id"></asp:DropDownList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [id], [title] FROM [test]"></asp:SqlDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource2" BackColor="#CCFFCC" BorderColor="Black" BorderWidth="1px">
            <EditItemTemplate>
                id:
                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                <br />
                test_time:
                <asp:TextBox ID="test_timeTextBox" runat="server" Text='<%# Bind("test_time") %>' />
                <br />
                class:
                <asp:TextBox ID="classTextBox" runat="server" Text='<%# Bind("class") %>' />
                <br />
                title:
                <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                <br />
                summary:
                <asp:TextBox ID="summaryTextBox" runat="server" Text='<%# Bind("summary") %>' Height="54px" Width="595px" />
                <br />
                article:
                <asp:TextBox ID="articleTextBox" runat="server" Text='<%# Bind("article") %>' Height="155px" TextMode="MultiLine" Width="596px" />
                <br />
                author:
                <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                test_time:
                <asp:TextBox ID="test_timeTextBox" runat="server" Text='<%# Bind("test_time") %>' />
                <br />
                class:
                <asp:TextBox ID="classTextBox" runat="server" Text='<%# Bind("class") %>' />
                <br />
                title:
                <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                <br />
                summary:
                <asp:TextBox ID="summaryTextBox" runat="server" Text='<%# Bind("summary") %>' />
                <br />
                article:
                <asp:TextBox ID="articleTextBox" runat="server" Text='<%# Bind("article") %>' />
                <br />
                author:
                <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                test_time:
                <asp:Label ID="test_timeLabel" runat="server" Text='<%# Bind("test_time") %>' />
                <br />
                class:
                <asp:Label ID="classLabel" runat="server" Text='<%# Bind("class") %>' />
                <br />
                title:
                <asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' />
                <br />
                summary:
                <asp:Label ID="summaryLabel" runat="server" Text='<%# Bind("summary") %>' />
                <br />
                article:
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="351px" Text='<%# Eval("article") %>' TextMode="MultiLine" Width="816px"></asp:TextBox>
                <br />
                author:
                <asp:Label ID="authorLabel" runat="server" Text='<%# Bind("author") %>' />
                <br />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                &nbsp;&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT [id], [test_time], [class], [title], [summary], [article], [author] FROM [test] WHERE ([id] = @id)" 
            DeleteCommand="DELETE FROM [test] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [test] ([test_time], [class], [title], [summary], [article], [author]) VALUES (@test_time, @class, @title, @summary, @article, @author)" UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [class] = @class, [title] = @title, [summary] = @summary, [article] = @article, [author] = @author WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="test_time" Type="DateTime" />
                <asp:Parameter Name="class" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="summary" Type="String" />
                <asp:Parameter Name="article" Type="String" />
                <asp:Parameter Name="author" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="test_time" Type="DateTime" />
                <asp:Parameter Name="class" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="summary" Type="String" />
                <asp:Parameter Name="article" Type="String" />
                <asp:Parameter Name="author" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
