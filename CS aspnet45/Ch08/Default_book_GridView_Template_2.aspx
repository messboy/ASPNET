<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeFile="Default_book_GridView_Template_2.aspx.cs" Inherits="Ch08_Default_book_GridView_Template_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">

        .style2
        {
            color: #CC0000;
        }
        .style3
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style1 {
            background-color: #FFFF00;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        �ʺA�[�J�uDouble Check�v�� JavaScript�{���� GridView<span class="style3">�C�@�C���u�R���v���s</span>�̭��C<br />
        <b>�ϥ�GridView�� <span class="style1">RowDataBound�ƥ�</span></b><br />
        <br />
        �������@�k�A�]�i�H�Ѿ\<b>�u�W���v�ĤC��</b>��<span class="style2">�d�� Default_book_GridView_Light_3_JavaScript.aspx</span><br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84"
            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id"
            DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
            PageSize="5" OnRowDataBound="GridView1_RowDataBound">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Delete"
                            Text="�R���]�ݦA���T�{�A��m�{���X�^" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True"
                    SortExpression="id" />
                <asp:BoundField DataField="test_time" HeaderText="test_time���" DataFormatString="{0:yyyy/MM/dd}"
                    SortExpression="test_time" />
                <asp:BoundField DataField="title" HeaderText="title���D" SortExpression="title" />
                <asp:TemplateField HeaderText="summary�K�n" SortExpression="summary">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Height="100px" Text='<%# Bind("summary") %>'
                            TextMode="MultiLine" Width="350px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        �K�n���e----<br />
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("summary") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
            SelectCommand="SELECT [id], [test_time], [title], [summary] FROM [test]" DeleteCommand="DELETE FROM [test] WHERE [id] = @id"
            InsertCommand="INSERT INTO [test] ([test_time], [title], [summary]) VALUES (@test_time, @title, @summary)"
            UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [title] = @title, [summary] = @summary WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="test_time" Type="DateTime" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="summary" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="test_time" Type="DateTime" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="summary" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
