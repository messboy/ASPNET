<%@ Page Language="C#" AutoEventWireup="true" CodeFile="V_4.aspx.cs" Inherits="Ch04_Validator_V_4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <p>
        ����d��϶��]�Ʀr���W���P�U���^�A�����b 1~150�����C</p>
    <form id="form1" runat="server">
    <p>
        �п�J�z���~���G<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Submit / �e�X" />
    </p>
    <p>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="RangeValidator�C�H���~���u��b1~150����" 
            MaximumValue="150" MinimumValue="1" Type="Integer" ForeColor="Red"></asp:RangeValidator>
    </p>
    <div>
    
    </div>
    </form>
 
</body>
</html>

