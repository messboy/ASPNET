<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_3_DataSet_ALL_Manual.aspx.cs" Inherits="Ch14_Default_3_DataSet_ALL_Manual" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>���R�W����</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style2
        {
            font-weight: bold;
            color: #CC0000;
        }
        .style3
        {
            color: #000000;
            font-weight: bold;
        }
        .style4
        {
            font-weight: bold;
            background-color: #FFFF66;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        �ϥ�ADO.NET �� 
        <span style="background-color: #ffff33" 
            class="style2">SqlDataAdapter /
            DataSet</span>�C<br />
        Code Behind ������g&nbsp; /&nbsp; ���̿���󱱨 DataBind() / <b>�ǲ� HTML���</b>�ӧe�{���<br />
        <br />
        <span class="style4">�R�A�r��۳s�]���Ÿ��^�A�t�׸��C�I</span><br />
        <br />
        �� for�j��ӳB�z �]<span class="style1">Try..Catche</span><span class="style3"> �϶�</span>�^</div>
        <hr />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label><br />
        
    </form>
</body>
</html>