<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Session_Login_DB.aspx.cs" Inherits="Ch16_Session_Login_DB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Session�̱`�Φb�|���n�J�������ˬd�W���]�f�tDB�^</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-weight: bold;
            background-color: #99FF99;
        }
    </style>
</head>
<body>
    <p>
        Session �̱`�Φb�|���n�J�������ˬd�W��<span class="style1">�]�f�tDB�^</span>
    </p>
    <p>
        ���d�Ҫ� �b�� �P �K�X ���O 123
    </p>
    <form id="form1" runat="server">
    <p>
        �b���G<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        �K�X�G<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Login..." OnClick="Button1_Click" />
    </p>
    </form>
</body>
</html>
