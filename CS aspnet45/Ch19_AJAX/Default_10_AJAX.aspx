<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_10_AJAX.aspx.cs" Inherits="Ch19_AJAX_Default_10_AJAX" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> �_���� UpdatePanel #1�]���d�Ҧ�Bug�^ </title>

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
            color: #FF0000;
            font-weight: bold;
        }
        .style6
        {
            color: #FF0000;
            font-size: small;
            text-align: center;
        }
        .style7
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        �d�ҡG�_���� UpdatePanel  #1�]<span class="style5">���d�Ҧ�Bug</span>�^<br />
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        UpdatePanel�u�~���v���ɶ��G<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <br />&nbsp; 1. <span class="style4">�Ĥ@�� UpdatePanel�A�C3,000�@��</span>�N�|�۰ʶi��u������s�v�C<br />
            &nbsp; UpdatePanel #1�u<span class="style1">����</span>�v���ɶ��G<asp:Label ID="Label2" 
                runat="server" Text="Label" style="font-size: xx-large"></asp:Label>
            <br />
            <asp:Timer ID="Timer1" runat="server" Interval="3000">
            </asp:Timer>
            <div class="style7">
                <b><span class="style6">......�]���Ĥ@�ӡ]���^UpdatePanel<br />
                �|���줺�����]�l�^UpdatePanel�Ҽv�T......</span><br class="style6" />
                </b>
            </div>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <hr />
                       <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. <span class="style3">�ĤG�� UpdatePanel�A�C1,000�@��</span>�N�|�۰ʶi��u������s�v�C<br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UpdatePanel #2�u<span class="style2">����</span>�v���ɶ��G<asp:Label 
                        ID="Label3" runat="server" Text="Label" style="font-size: xx-large"></asp:Label>
                    <br />                    
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