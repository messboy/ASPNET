<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridView_Dynamic_Add_Template_1.aspx.cs" Inherits="Ch11_GridView_Dynamic_Add_Template_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>GridView�ʺA�W�[Template #1</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style2
        {
            color: #009900;
            font-size: small;
        }
        .style3
        {
            color: #000099;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        GridView�᭱�[�W�� Template�˪O�A�O�u��m�{���X�v<span class="style1">�ʺA�[�W</span>��
    </p>
    <p>
        <a href="http://msdn.microsoft.com/zh-tw/library/cc438020(VS.71).aspx">http://msdn.microsoft.com/zh-tw/library/cc438020(VS.71).aspx</a>
    </p>
    <p>
        ���{�����S�I�G
    </p>
    <ul>
        <li>1.&nbsp; �ʺA���ͪ� Template�˪O�u�C�ơv�A�i�H�ۿ�</li>
        <li>2.&nbsp; ���d���ƫ��U�uAdd�v����A�|�޵o�����~���p�C�]�U�@���{���i�ѡ^</li>
        <li>3.&nbsp; �����B����Button�N�|�޵o PostBack�A���s�W���˪O�C���ġI�]�U�@���{���i�ѡ^</li>
    </ul>
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px"
            CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1"
            ForeColor="Black" AllowPaging="True" PageSize="5"
            OnPageIndexChanging="GridView1_PageIndexChanging" BorderStyle="Solid"
            CellSpacing="2">
            <RowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False"
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black"
                HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
            SelectCommand="SELECT [id], [title] FROM [test]"></asp:SqlDataSource>
    </p>
    <br />

    &nbsp;<span class="style3">�W�[�X�CTemplate�G</span>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp;<asp:Button ID="Button1" runat="server"
        Text="Add GridView's Template" OnClick="Button1_Click" />
    <div>



        <br />
        <br />
        <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="���եΪ�Button" />

        &nbsp; <span class="style1">&lt;==���I�I�I</span><span class="style2">�ʺA�s�W��Template�˪O�C�A�|�]����L����޵o�� <b>PostBack</b>�Ӯ���....</span>
    </div>
    </form>

</body>
</html>
