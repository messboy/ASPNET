<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewState_1.aspx.cs" Inherits="Ch16_ViewState_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ViewState_1</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
            Text="���U�h�A�N�|����ViewState" />
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server">
            <asp:ListItem Value="�ŪŦp�]">�ŪŦp�]</asp:ListItem>
        </asp:ListBox>

    </div>
    �Y�n�ϥ� ViewState �ݩʡAASP.NET Web ���������㦳<span class="style1">���A����涵�� (&lt;form
    runat=&quot;server&quot;&gt;)</span>�C
    </form>

</body>
</html>
