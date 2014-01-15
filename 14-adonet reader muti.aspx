<%@ Page Language="C#" AutoEventWireup="true" CodeFile="14-adonet reader muti.aspx.cs" Inherits="_14_adonet_reader_muti" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>處理多筆SQL結果</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="403px"></asp:DropDownList>
    &nbsp;<br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </div>
    </form>
</body>
</html>
