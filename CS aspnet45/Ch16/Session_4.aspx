<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Session_4.aspx.cs" Inherits="Ch16_Session_4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�ˬd�ϥΪ̨���</title>
    <style type="text/css">
        .style1
        {
            background-color: #FFFF66;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    �ˬd�ϥΪ̨���<hr />
    <p>
        Session���d��&nbsp;
    </p>
    <p>
        &nbsp;
    </p>
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <span class="style1">Thanks....�z�w�g��J�L�ӤH��ƤF<br />
            <br />
        </span>
        <br />
        �m�W�G<asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#009900"></asp:Label>
        <br />
        ���q�G<asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
    </asp:Panel>
    <div>

        <br />
        <br />

        <br />

    </div>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        �п�J�z���ӤH���<br />
        <br />
        �m�W�G<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        ���q�G<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Button/�ˬd�ϥΪ̨����A�O�_�w�g�n�J�L�H"
            OnClick="Button1_Click" />
    </asp:Panel>
    </form>

</body>
</html>
