<%@ Page Language="C#" AutoEventWireup="true" CodeFile="File_Log.aspx.cs" Inherits="Ch17_File_File_Log" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>File Log #1</title>
    <style type="text/css">
        .style1
        {
            color: #800000;
            font-weight: bold;
        }
        .style2
        {
            font-weight: bold;
            background-color: #99FF66;
        }
        .style3
        {
            background-color: #99FF66;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <span class="style1">File Log #1<br />
            <br />
        </span>���{���g�b Page_Load�ƥ�̭��C
        <br />
        ���槹����A�Цۤv�� <span class="style3">C:\MIS2000Lab_ASP.NET_Log</span><span class="style2">\�ؿ�</span>�U�d�ݵ��G�C<hr />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </div>
    </form>
</body>
</html>
