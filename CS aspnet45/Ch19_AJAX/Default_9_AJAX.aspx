<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_9_AJAX.aspx.cs" Inherits="Ch19_AJAX_Default_9_AJAX" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> �ϥ� Timer��� -- AJAX</title>

    <style type="text/css">
        .style1
        {
            color: #FF0000;
            background-color: #FFFF00;
            font-weight: bold;
        }
        .style2
        {
            color: #0000FF;
        }
        .style3
        {
            color: #FFFF99;
            background-color: #006600;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        UpdatePanel�u<b>�~��</b>�v���ɶ��G<asp:Label ID="Label1" runat="server" 
            Text="Label"></asp:Label>
        <br />
        <br />
        <br />
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <hr />AJAX<hr />
            <br /><span class="style2">UpdatePanel</span>�u<span class="style1">����</span>�v<span 
                class="style2">���ɶ��G</span><asp:Label ID="Label2" runat="server" 
                ForeColor="Blue" Text="Label" style="font-size: x-large"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <span class="style3">
            (�S�O�`�N�A�|������ʡI)</span><br />�ϥ� Timer���
            <br />
            <asp:Timer ID="Timer1" runat="server" Interval="1000">
            </asp:Timer>
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
 
</body>
</html>