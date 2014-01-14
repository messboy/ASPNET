<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_book_4_User_Control_4_RowCreated.aspx.cs" Inherits="Ch11_Default_book_4_User_Control_4" %>

<!--  '�]���b�{������m�{���X�A�ʺA���JUC�C�ҥH���U�o�@�C�i�H�R���A�]�ॿ�`����C -->
<%@ Register TagPrefix="MIS2000Lab" TagName="DataGrid2" Src="Default_book_4_UserControl_2.ascx"  %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�j�z�]�p�z #2</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
        .style2
        {
            font-weight: bold;
            text-decoration: underline;
        }
        .style3
        {
            color: #FFFF00;
            font-weight: bold;
            background-color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <span class="style1">�j�z�]�p�z #2&nbsp;&nbsp;&nbsp; �]��@GridView��Master-Detail�\��^<span
            class="style3">�g�bRowCreated�ƥ�</span></span><br />
        &nbsp;&nbsp;&nbsp; �j��GridView�ΨӮi�� Master<br />
        &nbsp;&nbsp;&nbsp; �̭��]�t�@�Ӥp��GridView�]�ϥΪ̱���^�A�ΨӮi��Detail<br />
        <br />
        <span class="style1"><span class="style2">������</span>�A�����B�Ƨǳ�OK�I</span><br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id"
            DataSourceID="SqlDataSource1" Font-Size="Small" GridLines="Horizontal" AllowPaging="True"
            AllowSorting="True" AutoGenerateSelectButton="True" PageSize="5"
            OnPageIndexChanging="GridView1_PageIndexChanging"
            OnRowCreated="GridView1_RowCreated" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
            OnSorting="GridView1_Sorting">
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True"
                    SortExpression="id">
                    <ItemStyle Font-Bold="True" ForeColor="Red" />
                </asp:BoundField>
                <asp:BoundField DataField="test_time" HeaderText="test_time" SortExpression="test_time"
                    DataFormatString="{0:d}">
                    <ItemStyle ForeColor="Blue" />
                </asp:BoundField>
                <asp:BoundField DataField="title" HeaderText="title�]�峹���D�^" SortExpression="title">
                    <ItemStyle Font-Bold="True" Font-Size="Medium" ForeColor="Navy" />
                </asp:BoundField>
                <asp:BoundField DataField="summary" HeaderText="summary(�K�n)" SortExpression="summary">
                    <ItemStyle ForeColor="Orange" />
                </asp:BoundField>
            </Columns>
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" Font-Bold="True" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
            DeleteCommand="DELETE FROM [test] WHERE [id] = @id" InsertCommand="INSERT INTO [test] ([test_time], [title], [summary]) VALUES (@test_time, @title, @summary)"
            SelectCommand="SELECT [id], [test_time], [title], [summary] FROM [test]" UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [title] = @title, [summary] = @summary WHERE [id] = @id">
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
        <br />
    </div>
    </form>
</body>
</html>
