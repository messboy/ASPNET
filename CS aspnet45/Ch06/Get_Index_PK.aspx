<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Get_Index_PK.aspx.cs" Inherits="Ch10_Get_Index_PK" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�^��GridView���C�ơBPK�Ȫ��U�ؤ�k</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
        .style2
        {
            color: #006666;
        }
        .style3
        {
            background-color: #FFFF66;
        }
        .style4
        {
            color: #FF0000;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
            PageSize="5" onrowcommand="GridView1_RowCommand" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            onselectedindexchanging="GridView1_SelectedIndexChanging">
            <RowStyle BackColor="#F7F7DE" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT [id], [title] FROM [test]"></asp:SqlDataSource>
        <br />
        �ΦU�ؤ�k�A�ӧ�� GridView���C�ơB��ƪ�PK��<br />
        <br />
        ���I--<span class="style2">GridView.<b>SelectedIndex</b> �P GridView.<b>SelectedValue</b></span><br 
            class="style2" />&nbsp;&nbsp;&nbsp; �g�b GridView1_SelectedChang<span 
            class="style3"><b>ed()</b>�ƥ�</span>�̭��~��ass="style3">ed()�ƥ�</span>�̭��~��<br�p�G�z�� GridView.SelectedIndex�P GridView.SelectedValue�g�b��L�ƥ�]�pGridView�� 
        RowCommand()�P SelectedIndexChanging()�ƥ󤺡^�A�b</span><span class="style4">�Ĥ@�������n><span class="style4">�Ĥ@������A���|�l�ͤ@�ǩǲ{�H<br />
        </span>
        <br />
        <br />���I--an><br />
        <br />
        ���I--<span class="style1">�bGridView1_RowCommand()�̭��A�p����o�o�@�C����ƪ�PK�ȡH</span></div>
    </form>
 
</body>
</html>
