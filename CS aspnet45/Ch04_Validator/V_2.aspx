<%@ Page Language="C#" AutoEventWireup="true" CodeFile="V_2.aspx.cs" Inherits="Ch04_Validator_V_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>���R�W����</title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        ���˪��~���G<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        ��</p>
    <p>
        �Ĥl���~���G<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        ��</p>
    <p>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox1" ControlToValidate="TextBox2" 
            ErrorMessage="CompareValidator_���X�z�I�Ĥl�~������ˤj�H" Operator="LessThan" 
            Type="Integer" ForeColor="Red"></asp:CompareValidator>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Submit / �e�X" />
    </p>
    <div>
    
    </div>
    </form>
 
</body>
</html>
