<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cookie_Login.aspx.cs" Inherits="Ch16_Cookie_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Cookie�Φb�|���n�J�������ˬd</title>
    <style type="text/css">
        .style1
        {
            color: #003399;
        }
        .style2
        {
            color: #003399;
            font-weight: bold;
            background-color: #FF99FF;
        }
    </style>
</head>
<body>
    <p>
        <span class="style2">[Cookie]</span><br class="style1" />
        <span class="style1">Cookie�Φb�|���n�J�������ˬd</span>
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
        <asp:Button ID="Button1" runat="server" Text="Login..."
            OnClick="Button1_Click" />
    </p>
    </form>

</body>
</html>
