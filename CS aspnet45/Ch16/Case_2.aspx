<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeFile="Case_2.aspx.cs" Inherits="Ch16_Case_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>��ѫ� #1 ---- Case_2.aspx</title>
</head>
<body>
    <form id="form1" runat="server">
    <p>&lt;&lt;�� �� �ǡ]�D�����^&gt;&gt;</p><hr />


            
            <asp:Label ID="Label1" runat="server"></asp:Label>

    <hr />
    
        �п�J��Ѥ��e�G<asp:TextBox ID="TextBox1" runat="server" Width="348px"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button1" runat="server" Text="Submit/�e�X" onclick="Button1_Click" />
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="���i�H�d�ťաI" style="text-align: center">
     </asp:RequiredFieldValidator>
    <br />
    <br />
    <div align="right">
    <asp:Button ID="Button2" runat="server" Text="Bye Bye�A�����F�A�T�T���Exit�I" onclick="Button2_Click" />
    </div>
    </form>
 
</body>
</html>
