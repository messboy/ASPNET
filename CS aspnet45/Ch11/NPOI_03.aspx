﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NPOI_03.aspx.cs" Inherits="Book_Sample_Ch11_NOPI_03" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>設定儲存格的背景色</title>
    <style type="text/css">

        .style4
        {
            color: #0000FF;
        }
        
        .style1 {
            background-color: #FFCC66;
            color: #0000FF;
        }
        .style3
        {
            font-size: x-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        1.2.4版的範例&nbsp; <a href="http://tonyqus.sinaapp.com/archives/169">
        http://tonyqus.sinaapp.com/archives/169</a><br />
        <br />
    
        <span class="style4">請把<strong> /bin目錄</strong>下，<strong>舊版</strong> NPOI的 
        .DLL檔都<strong> [刪除]</strong>以後，再來加入新版本的 .DLL檔。</span><br class="style4" />
        <br class="style4" />
        <strong><span class="style1">NPOI v1.2.4版</span><span class="style3">&nbsp; 新的寫法</span></strong></div>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="設定儲存格的背景色" 
        onclick="Button1_Click" />
    </form>
</body>
</html>
