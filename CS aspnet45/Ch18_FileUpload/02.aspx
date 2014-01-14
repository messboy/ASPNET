<%@ Page Language="C#" AutoEventWireup="true" CodeFile="02.aspx.cs" Inherits="Ch18_FileUpload_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>檔案上傳 ＃2</title>
    <style type="text/css">
        .style1 {
            color: #FF0000;
        }
        .style2
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style3
        {
            color: #003399;
            font-weight: bold;
        }
        .style4
        {
            background-color: #FFFF00;
        }
        .style5
        {
            color: #003399;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <h4>檔案上傳 ＃2 (Select a file to upload) :</h4>
        <p><span class="style1">請您先開啟 </span><span class="style2">c:\temp\uploads\</span><span 
                class="style1">的目錄，程式才能完成上傳</span></p>
   
            請先選取檔案，然後再上傳：<asp:FileUpload id="FileUpload1" runat="server">
       </asp:FileUpload>
            
       <br /><br />
       
       <asp:Button id="Button1" Text="檔案上傳" runat="server" onclick="Button1_Click">
       </asp:Button>    
       <br />
        <span class="style3">本程式會先檢查SERVER上面，是否已經有同名的檔案?</span><span class="style1"><br />
       
       </span>
       
        <span class="style5">檔名相同的話，目前上傳的檔名（如：abc.gif），前面會用數字來代替（如：<span class="style4">2_</span>abc.gif）。
       
       </span>
       
       <hr />
       
       <asp:Label id="Label1" runat="server"></asp:Label>    
    </form>
 
</body>
</html>
