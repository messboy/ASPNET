<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_1_0_DataReader_Manual.aspx.cs" Inherits="Ch14_Default_1_0_DataReader_Manual" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-weight: bold;
            color: #FFFFCC;
            background-color: #CC0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    �L�nSDK��󪺽d��----�ϥ�ADO.NET �� <span style="color: #ff0000; background-color: #ffff33">SqlDataReader</span><br />
    Code Behind ������g---- try...catch...finally<br />
    <br />
    <span class="style1">�s�u�r��g�b Global.asax�̭� Application</span><br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan"
        BorderWidth="1px" CellPadding="2" Font-Size="Small" ForeColor="Black" GridLines="None">
        <FooterStyle BackColor="Tan" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
    </asp:GridView>
    </form>

</body>
</html>

