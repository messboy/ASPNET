﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="01.aspx.cs" Inherits="Ch18_FileUpload_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET FileUpload #1</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <h4>檔案上傳 ＃1 (Select a file to upload) :</h4>
        <p class="style1">請您先開啟 （建立）<b>C:\temp\uploads\</b>的目錄，程式才能完成上傳</p>
        <p class="style1">&nbsp;</p>
   
            請先選取檔案，然後再上傳：<asp:FileUpload id="FileUpload1" runat="server" />

            
       <br /><br />
       
       <asp:Button id="Button1" Text="檔案上傳" runat="server" onclick="Button1_Click">
       </asp:Button>    
       
       <hr />
       
       <asp:Label id="Label1" runat="server"></asp:Label>    
    </form>
</body>
</html>
