<%@ Page Language="C#" AutoEventWireup="true" CodeFile="8_Multi_Upload.aspx.cs" Inherits="Ch18_FileUpload_8_Multi_Upload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> </title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style2
        {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #800000;
        }
        .style3
        {
            font-size: large;
            font-weight: bold;
        }
        .style4
        {
            background-color: #FFFF66;
        }
        .style5
        {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <span class="style3">�j�q�ɮסA�妸�W��</span>&nbsp; / <span class="style1">
        <span class="style5">���ѿW��</span>
        <br />
        <br />
        FileUpload���<span class="style4">(�妸�W��)</span><br />
        <br />
        </span> <span class="style2">�g�k�W�@�L�G�A�ЧO���L<br />
        <br />
        </span><br /><hr />
        1.
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        2.
        <asp:FileUpload ID="FileUpload2" runat="server" />
        <br />
        3.
        <asp:FileUpload ID="FileUpload3" runat="server" />
        <br />
        4.
        <asp:FileUpload ID="FileUpload4" runat="server" />
        <br />
        5.
        <asp:FileUpload ID="FileUpload5" runat="server" />
        <br />
        <hr />
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" 
            Text="Multi-Files ~ UPLOAD!  �j�q�ɮסA�妸�W�ǡI" onclick="Button1_Click" />

    </div>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" ForeColor="darkblue"></asp:Label>
    </p>
    </form>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    ��h��m�d�ҡA�ЬݡG<a href="http://www.dotblogs.com.tw/mis2000lab/archive/2008/07/24/4710.aspx">�s�ѤW��-- ASP.NET�M�D��ȡ]���X���^</a></p>
 
</body>
</html>