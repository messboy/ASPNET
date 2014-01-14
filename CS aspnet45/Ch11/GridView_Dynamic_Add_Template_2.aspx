<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridView_Dynamic_Add_Template_2.aspx.cs" Inherits="Ch11_GridView_Dynamic_Add_Template_2" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        GridView�᭱�[�W�� Template�˪O�A�O�u��m�{���X�v<span class="style1">�ʺA�[�W</span>��
    </p>
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px"
            CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1"
            ForeColor="Black" GridLines="Vertical" AllowPaging="True" PageSize="5"
            OnPageIndexChanging="GridView1_PageIndexChanging">
            <RowStyle BackColor="#F7F7DE" />
            <Columns>
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
    </p>
    <br />
    <br />

    &nbsp;�W�[�X�CTemplate�G
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
        <asp:Button ID="Button2" runat="server" Text="���եΪ�Button"
            OnClick="Button2_Click" />

        <br />
        ���{����i�F�u<span class="style2">�ʺA�s�W��Template�˪O�C�A�|�]����L����޵o�� <b>PostBack</b>�Ӯ���....</span><span
            class="style3">�v�����I<br />
            ����@�ӱ���A���ݭn�ҥ�Add_TF() �o�Ӧۭq��ơC&nbsp; �h�޵o�uGridView�ʺA�s�W���˪O�C�v</span>
    </div>
    </form>

</body>
</html>
