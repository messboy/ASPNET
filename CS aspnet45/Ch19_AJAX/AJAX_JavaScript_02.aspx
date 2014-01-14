<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AJAX_JavaScript_02.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_AJAX_JavaScript_02" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            color: #000099;
        }
        .style3
        {
            color: #000099;
            font-weight: bold;
        }
        .style4
        {
            background-color: #FFFF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <a href="http://msdn.microsoft.com/zh-tw/library/bb310408.aspx">
        http://msdn.microsoft.com/zh-tw/library/bb310408.aspx</a>
        <br />
        <br />
        ScriptManager的 <b>.RegisterStartupScript(<span class="style4">Page</span>, Type, 
        String, String, Boolean) 方法  
        <br />
        </b>
        <br />
        <span class="style2">使用 ScriptManager 控制項， </span><span class="style3">註冊每次<span 
            class="style4">非同步回傳</span>的啟動指令碼區塊</span><span class="style2">註冊啟動指令碼區塊，並將指令碼區塊加入至網頁中。</span>
        <br />
        <br />
        <br />
        切記！畫面上、程式碼裡面，不可以有 Response.Write()<br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Button1" OnClick="Button1_Click" />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Button2_出現系統時間" OnClick="Button2_Click" />
                <br />
                <br />
                <br />
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
