<%@ Page Language="C#" AutoEventWireup="true" CodeFile="V_7.aspx.cs" Inherits="Ch04_Validator_V_7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            �ۤv�g�{���ӧ@���� #2�]���D�^<br />
        <br />
        �п�J�@�ӡu���ơv�G<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Submit / �e�X" />
    
    <br />
    <asp:CustomValidator ID="CustomValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="CustomValidator�A���ҿ��~�I�I�u���J���ơI" 
                onservervalidate="CustomValidator1_ServerValidate" ForeColor="Red"></asp:CustomValidator>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator�A���i�d�աI" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
            <br />
            <br />
    ��m�{���X�]Code Behind�^�|�z�L _ServerValidate�ƥ�ӳB�z�G<br />
    �z����J����ƬO�G<asp:Label ID="Label1" runat="server" Font-Bold="True" 
        ForeColor="Blue" Text="Label"></asp:Label>
    </div>
    </form>
 
</body>
</html>

