<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListBox_Add.aspx.cs" Inherits="Ch03_WebControls_ListBox_Add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>��ʷs�W�@�ӿﶵ</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style2
        {
            color: #FF0000;
        }
        .style3
        {
            background-color: #FFFF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        ���� ListBox�̭����l�ﶵ�A���k�h��<br />
        <br />
        <span class="style2">�`�N�I�IListBox<strong><span class="style3">��</span></strong>��]�w��<strong>�u�ƿ�v�I 
        SelectionMode�ݩ� = <span class="style3">Single</span>�~��C</strong></span><br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" Height="125px" Width="85px">
            <asp:ListItem>���@</asp:ListItem>
            <asp:ListItem>���G</asp:ListItem>
            <asp:ListItem>���T</asp:ListItem>
        </asp:ListBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ListBox ID="ListBox2" runat="server" Height="125px" Width="85px">
            <asp:ListItem>�kA</asp:ListItem>
            <asp:ListItem>�kB</asp:ListItem>
            <asp:ListItem>�kC</asp:ListItem>
        </asp:ListBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button1 �k��==&gt;" 
            onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="&lt;==Button2 ����" 
            onclick="Button2_Click" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <br />
        ���o�ӽd�Ҥ]�O�@�ءu<span class="style1">��ʷs�W</span>�@�Ӥl�ﶵ�v</div>
    </form>
 
</body>
</html>