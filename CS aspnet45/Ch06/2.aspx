<%@ Page Language="C#" AutoEventWireup="true" CodeFile="2.aspx.cs" Inherits="Ch06_2" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>DetailsView #1</title>
</head>
<body>
    <p>
        DetailsView</p>
    <form id="form1" runat="server">
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" 
            Width="600px">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" 
                HorizontalAlign="Center" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="test_time" HeaderText="���" 
                    SortExpression="test_time" >
                <HeaderStyle Width="80px" />
                </asp:BoundField>
                <asp:BoundField DataField="class" HeaderText="�峹����" SortExpression="class" />
                <asp:BoundField DataField="title" HeaderText="���D" SortExpression="title" />
                <asp:BoundField DataField="summary" HeaderText="�K�n" SortExpression="summary" />
                <asp:BoundField DataField="article" HeaderText="���e�]����^" 
                    SortExpression="article" />
                <asp:BoundField DataField="author" HeaderText="�@��" SortExpression="author" />
                <asp:BoundField DataField="hit_no" HeaderText="�I�\����" SortExpression="hit_no" />
                <asp:BoundField DataField="get_no" HeaderText="����" SortExpression="get_no" />
                <asp:BoundField DataField="email_no" HeaderText="�峹��H����" 
                    SortExpression="email_no" />
                <asp:BoundField DataField="approved" HeaderText="�f�֡H�O�_�i�o��H" 
                    SortExpression="approved" />
            </Fields>
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
        
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT * FROM [test]">
        </asp:SqlDataSource>
            
            
    </p>
    <div>
    
    </div>
    </form>
 
</body>
</html>
