<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_book_3_basic.aspx.cs" Inherits="Ch10_Default_book_3_basic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        1 GridView�Y�@�C��ƪ��D������H GridView.SelectedIndex
        <br />
        2 �p��Ĳ�oGridView����B�s�誺�ƥ� 
        <br />
        3 ��ʼ��gGridView�����B�����u�s��Ҧ��v���\��<br />
        <br />
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" PageSize="5" 
        onpageindexchanging="GridView1_PageIndexChanging" 
        onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowcommand="GridView1_RowCommand" onrowediting="GridView1_RowEditing" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        onselectedindexchanging="GridView1_SelectedIndexChanging">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            <asp:ButtonField ButtonType="Button" CommandName="Cancel_Select" 
                Text="Cancel Select�]�����u����Ҧ��v�^" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" >
            <ItemStyle Font-Size="Smaller" />
            </asp:BoundField>
            <asp:BoundField DataField="article" HeaderText="article" 
                SortExpression="article" >
            <ItemStyle Font-Size="Smaller" />
            </asp:BoundField>
        </Columns>
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
        SelectCommand="SELECT [id], [title], [article] FROM [test]">
    </asp:SqlDataSource>
    </form>
 
</body>
</html>