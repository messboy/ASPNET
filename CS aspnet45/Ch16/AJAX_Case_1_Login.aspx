<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AJAX_Case_1_Login.aspx.cs" Inherits="Ch16_AJAX_Case_1_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>��ѫ� [AJAX��] ---- Login</title>
    <style type="text/css">
        .style1
        {
            font-size: large;
            font-weight: bold;
        }
        .style2
        {
            color: #FFCCFF;
            background-color: #FF6600;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <span class="style1">��ѫ�[<span class="style2">AJAX��</span>]</span>�A����Application�PSession���̦n�d�ҡC
    </p>
    <hr />
    <p>
        �п�J�z���j�W�G<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ControlToValidate="TextBox1" ErrorMessage="����d�ťաI"></asp:RequiredFieldValidator>
    </p>
    <p>
        �z�n�Τ����C�⪺�r��H<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="darkred">����</asp:ListItem>
            <asp:ListItem Value="darkgreen">���</asp:ListItem>
            <asp:ListItem Value="darkblue">�Ŧ�</asp:ListItem>
            <asp:ListItem Value="darkgray">�Ǧ�</asp:ListItem>
            <asp:ListItem Value="blue">�L�Ŧ�</asp:ListItem>
            <asp:ListItem Value="green">�L���</asp:ListItem>
            <asp:ListItem Value="purple">����</asp:ListItem>
            <asp:ListItem Value="orange">���</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p align="center">

        <asp:Button ID="Button1" runat="server" Text="�i�J��ѫ�(AJAX��)" OnClick="Button1_Click" />
    </p>
    </form>

</body>
</html>

