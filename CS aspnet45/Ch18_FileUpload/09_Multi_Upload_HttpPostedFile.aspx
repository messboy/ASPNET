<%@ Page Language="C#" AutoEventWireup="true" CodeFile="09_Multi_Upload_HttpPostedFile.aspx.cs" Inherits="Ch18_FileUpload_9_Multi_Upload_Manual" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�̦��ª��g�k�A���۷L�nMSDN</title>
    <style type="text/css">
        .style1
        {
            color: #FFFFCC;
            font-weight: bold;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div>
        �̦��ª��g�k�A���۷L�nMSDN<br />
        �����W�� ASP.NET�J���ѡA�u�ണ�ѳo�ظѪk�Ӥw�C<br />
        <br />
        <br />
        �j�q�ɮסA�妸�W��&nbsp; / <span class="style1">�ǲΧ@�k</span><br />
        <hr />
        1.
        <input id="File1" runat="server" type="file" /><br />
        2.
        <input id="File2" runat="server" type="file" /><br />
        3.
        <input id="File3" runat="server" type="file" /><br />
        4.
        <input id="File4" runat="server" type="file" /><br />
        5.
        <input id="File5" runat="server" type="file" /><br />
        <hr />
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server"
            Text="Multi-Files ~ UPLOAD!  �j�q�ɮסA�妸�W�ǡI" OnClick="Button1_Click" />

    </div>
    <p>
        &nbsp;
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
    </p>
    </form>
</body>
</html>
