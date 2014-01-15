<%@ Page Language="C#" AutoEventWireup="true" CodeFile="14-adonet executeScalar.aspx.cs" Inherits="_14_adonet_executeScalar" MaintainScrollPositionOnPostback="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>練習ADO.NET DATAREADER</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="叫出全部" OnClick="Button1_Click" />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" Height="148px" Width="201px"></asp:ListBox>
        <asp:ListBox ID="ListBox2" runat="server" Height="148px" Width="201px"></asp:ListBox>
        <br />
        <asp:Button ID="Button2" runat="server" Text="讀取title" OnClick="Button2_Click" />
    </div>
    </form>
</body>
</html>
