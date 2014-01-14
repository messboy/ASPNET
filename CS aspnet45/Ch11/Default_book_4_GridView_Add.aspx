<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_book_4_GridView_Add.aspx.cs" Inherits="Ch11_Default_book_4_GridView_Add" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�ۤv�g�� GridView�u��Ʒs�W�v�\��</title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
            AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF"
            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id"
            DataSourceID="SqlDataSource1" Font-Size="Small" GridLines="Horizontal"
            PageSize="5" OnRowCommand="GridView1_RowCommand">
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True"
                    ShowEditButton="True" ShowSelectButton="True" />
                <asp:ButtonField CommandName="myInsert" Text="�s�W Insert" ButtonType="Button"
                    HeaderText="�ۤv�g���s�W�\��" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False"
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="test_time" DataFormatString="{0:d}"
                    HeaderText="test_time" SortExpression="test_time" />
                <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="summary" HeaderText="summary"
                    SortExpression="summary" />
                <asp:BoundField DataField="article" HeaderText="article"
                    SortExpression="article" />
                <asp:BoundField DataField="author" HeaderText="author"
                    SortExpression="author" />
            </Columns>
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center"
                Font-Bold="True" Font-Size="Medium" />
            <EmptyDataTemplate>
                �w��z�i�J�u�s�W�]Insert�^�v�Ҧ��G<br />
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"
                    CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1"
                    DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px"
                    Width="125px">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False"
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="test_time" HeaderText="test_time"
                            SortExpression="test_time" />
                        <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                        <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                        <asp:BoundField DataField="summary" HeaderText="summary"
                            SortExpression="summary" />
                        <asp:BoundField DataField="article" HeaderText="article"
                            SortExpression="article" />
                        <asp:BoundField DataField="author" HeaderText="author"
                            SortExpression="author" />
                        <asp:BoundField DataField="hit_no" HeaderText="hit_no"
                            SortExpression="hit_no" />
                        <asp:BoundField DataField="get_no" HeaderText="get_no"
                            SortExpression="get_no" />
                        <asp:BoundField DataField="email_no" HeaderText="email_no"
                            SortExpression="email_no" />
                        <asp:BoundField DataField="approved" HeaderText="approved"
                            SortExpression="approved" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
            </EmptyDataTemplate>
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
            DeleteCommand="DELETE FROM [test] WHERE [id] = @id"
            InsertCommand="INSERT INTO [test] ([test_time], [class], [title], [summary], [article], [author], [hit_no], [get_no], [email_no], [approved]) VALUES (@test_time, @class, @title, @summary, @article, @author, @hit_no, @get_no, @email_no, @approved)"
            SelectCommand="SELECT * FROM [test]"
            UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [class] = @class, [title] = @title, [summary] = @summary, [article] = @article, [author] = @author, [hit_no] = @hit_no, [get_no] = @get_no, [email_no] = @email_no, [approved] = @approved WHERE [id] = @id"
            OnInserted="SqlDataSource1_Inserted">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="test_time" Type="DateTime" />
                <asp:Parameter Name="class" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="summary" Type="String" />
                <asp:Parameter Name="article" Type="String" />
                <asp:Parameter Name="author" Type="String" />
                <asp:Parameter Name="hit_no" Type="Int32" />
                <asp:Parameter Name="get_no" Type="Int32" />
                <asp:Parameter Name="email_no" Type="Int32" />
                <asp:Parameter Name="approved" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="test_time" Type="DateTime" />
                <asp:Parameter Name="class" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="summary" Type="String" />
                <asp:Parameter Name="article" Type="String" />
                <asp:Parameter Name="author" Type="String" />
                <asp:Parameter Name="hit_no" Type="Int32" />
                <asp:Parameter Name="get_no" Type="Int32" />
                <asp:Parameter Name="email_no" Type="Int32" />
                <asp:Parameter Name="approved" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <div>
    </div>
    </form>

</body>
</html>
