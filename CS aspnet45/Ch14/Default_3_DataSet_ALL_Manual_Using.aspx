<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_3_DataSet_ALL_Manual_Using.aspx.cs" Inherits="Ch14_Default_3_DataSet_ALL_Manual_Using" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-weight: bold;
            text-decoration: underline;
        }
        .style2
        {
            font-weight: bold;
            background-color: #99FF66;
            color: #009900;
        }
        .style3
        {
            font-weight: bold;
            color: #009900;
            background-color: #99FF99;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        �ϥ�ADO.NET �� <span class="style2">SqlDataAdapter /
            DataSet</span>�C<br />
        Code Behind ������g&nbsp; /&nbsp; ���̿���󱱨 DataBind() / <b>�ǲ� HTML���</b>�ӧe�{���<br />
        <br />
        <span class="style3">StringBuilder�A�t�ק֡I</span><br />
        <br />
        �� for�j��ӳB�z&nbsp; <span class="style1">Using...�� + StringBuilder</span>
    </div>
    <hr />
    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label><br />

    </form>
</body>
</html>
