<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Session_Login.aspx.cs" Inherits="Ch16_Session_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Session�̱`�Φb�|���n�J�������ˬd�W��</title>
    <style type="text/css">
        .auto-style1 {
            background-color: #FFFF00;
        }
        .auto-style2 {
            color: #FF3300;
        }
    </style>
</head>
<body>
    <p>
        <strong><span class="auto-style1">Session</span></strong>&nbsp; <span class="auto-style2"><strong>�̱`�Φb�|���n�J�������ˬd�W��</strong></span>
    </p>
    <p>
        ���d�Ҫ� �b�� 123  �P �K�X 123
    </p>
    <p>
        &nbsp;
    </p>
    <form id="form1" runat="server">
    <p>
        �b���G<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        �K�X�G<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Login..." OnClick="Button1_Click" />
    </p>
    <div>
    </div>
    </form>

</body>
</html>
