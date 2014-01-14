<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BackHistory_01.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_BackHistory_01" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            background-color: #FFFF00;
        }
        .style2
        {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <strong><span class="style1">瀏覽器</span>的「回到上一頁」，搭配AJAX #1</strong><br />
        <br />
    外部時間：<%= System.DateTime.Now.ToLongTimeString()%>
    <br />
    <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <br />
                請輸入您的姓名：<asp:TextBox ID="TextBox1" runat="server">（預設值）</asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" style="font-weight: 700; " 
                    CssClass="style2"></asp:Label><span class="style2">...... 現在時間：<%= System.DateTime.Now.ToLongTimeString()%></span><br /><br />

            </ContentTemplate>
        </asp:UpdatePanel>
    <br />
    <br />
    <br />
    <br />
    外部時間：<%= System.DateTime.Now.ToLongTimeString()%>     
    </div>
    </form>
</body>
</html>
