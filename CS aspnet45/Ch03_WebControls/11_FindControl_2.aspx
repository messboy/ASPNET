<%@ Page Language="C#" debug="true" AutoEventWireup="true" CodeFile="11_FindControl_2.aspx.cs" Inherits="Ch03_WebControls_11_FindControl_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            color: #FF0000;
            font-weight: bold;
            background-color: #99CCFF;
        }
        .style2
        {
            font-weight: bold;
            background-color: #FFFF66;
        }
        .style3
        {
            font-weight: bold;
            background-color: #99CCFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    PlaceHolder控制項<br />
    <span class="style3">(使用</span><span class="style2"><span class="style1">FindControl</span></span><span
        class="style3">抓取容器裡面的「子控制項」) </span>
    <br />
    <br />
    <div>
        <br />
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <br />
        <br />
        <hr />
        <asp:Button ID="Button1" runat="server" Text="把原本兩個步驟，合併在一起完成" OnClick="Button1_Click" />
        <br />
        <hr />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>

