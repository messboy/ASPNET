<%@ Page Language="C#" AutoEventWireup="true" CodeFile="01_ServerPath.aspx.cs" Inherits="Ch18_FileUpload_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ASP.NET FileUpload #1</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
        .style2
        {
            font-weight: bold;
            background-color: #FFFF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h4>
            �ɮפW�� ��1 (Select a file to upload) :</h4>
        <p class="style1">
            �бz���}��  <b>c:\temp\uploads\</b>���ؿ��A�{���~�৹���W��</p>
        <p class="style1">
            ���d�Ҵ��ѤT��&nbsp;&nbsp; �W���ɮת�<span class="style2">�uServer�� ���|�v</span>�g�k�A�ܭ��n�I�I</p>
        �Х�����ɮסA�M��A�W�ǡG
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button1" Text="�ɮפW��" runat="server" OnClick="Button1_Click"></asp:Button>
        <hr />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
