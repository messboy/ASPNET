<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridView_inside_DropDownList_3_DataSet_Manual.aspx.cs" Inherits="Ch09_GridView_inside_DropDownList_DataSet_Manual" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>��Ǥp���L (3)</title>
    <style type="text/css">
        .style1
        {
            font-size: small;
            font-style: italic;
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   ��Ǥp���L (3) ---- �ۤv�ʤ�g�{���]DataSet���^�]��������^<br />
<hr>
        <asp:GridView ID="GridView1" runat="server" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF"
            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id"
            GridLines="Horizontal" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing">
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False"
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="real_name" HeaderText="real_name"
                    SortExpression="real_name" />
                <asp:TemplateField HeaderText="sex" SortExpression="sex">
                    <EditItemTemplate>

                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>�k</asp:ListItem>
                            <asp:ListItem>�k</asp:ListItem>
                        </asp:RadioButtonList>

                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("sex") %>'
                            style="font-weight: 700; color: #FF0000"></asp:Label>
                        &nbsp;
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>�k</asp:ListItem>
                            <asp:ListItem>�k</asp:ListItem>
                        </asp:RadioButtonList>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#CCFFCC" ForeColor="#006600" />
        </asp:GridView>

    </div>
    </form>
</body>
</html>