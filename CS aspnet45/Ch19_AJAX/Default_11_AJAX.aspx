<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_11_AJAX.aspx.cs" Inherits="Ch19_AJAX_Default_11_AJAX" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> �_���� UpdatePanel #2�]���d�Ҧ�Bug�^</title>

    <style type="text/css">
        .style1
        {
            color: #FF0000;
            background-color: #FFFF00;
        }
        .style2
        {
            color: #0000FF;
            background-color: #99CCFF;
            font-weight: bold;
        }
        .style3
        {
            background-color: #99CCFF;
        }
        .style4
        {
            background-color: #FFFF00;
        }
        .style5
        {
            font-weight: bold;
            text-decoration: underline;
            color: #FF0000;
        }
        .style6
        {
            font-size: x-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        �d�ҡG�_���� UpdatePanel  #2�]<span class="style5">��}���A�٬O��Bug</span>�^<br />
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        UpdatePanel�u�~���v���ɶ��G<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="False" 
        UpdateMode="Conditional">
        <ContentTemplate>

            <br />
            <br />&nbsp; 1. <span class="style4">�Ĥ@�� UpdatePanel�A�C<span class="style6">3</span>,000�@��</span>�N�|�۰ʶi��u������s�v�C<br />
            &nbsp; UpdatePanel #1�u<span class="style1">����</span>�v���ɶ��G
            <b><font color="red">
            <asp:Label ID="Label2" runat="server" Text="Label" style="font-size: xx-large"></asp:Label>
            �]���|�ʡ^</font></b><br />
            <asp:Timer ID="Timer1" runat="server" Interval="3000">
            </asp:Timer>
            <br />


            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>

                    <hr />
                       <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. <span class="style3">
                    �ĤG�� UpdatePanel�A�C<span class="style6">1</span>,000�@��</span>�N�|�۰ʶi��u������s�v�C<br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; UpdatePanel #2�u<span class="style2">����</span>�v���ɶ��G
                       <b>
                       <font color="blue">
                            <asp:Label ID="Label3" runat="server" Text="Label" 
                        style="font-size: xx-large"></asp:Label>
                       </font>
                    </b>
                    <hr />
                    <asp:Timer ID="Timer2" runat="server" Interval="1000">
                    </asp:Timer>

                </ContentTemplate>
            </asp:UpdatePanel>


            <br />
            <br />

        </ContentTemplate>
     </asp:UpdatePanel>
    </form>
 
</body>
</html>
