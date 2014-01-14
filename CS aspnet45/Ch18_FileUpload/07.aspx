﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="07.aspx.cs" Inherits="Book_Sample_Ch18_FileUpload_7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>檔案上傳 ＃7</title>
    <style type="text/css">
        .style1
        {
            color: #FF3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h4>
            檔案上傳 ＃7(Select a file to upload) :</h4>
        請先選取檔案，然後再上傳：<asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button1" Text="檔案上傳" runat="server" OnClick="Button1_Click"></asp:Button>
        <hr />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p class="style1">
        程式碼會對照 &quot;副檔名清單&quot;，檢查上載檔案的副檔名，並拒絕所有其他類型的檔案。上傳的檔案，副檔名只能是 .jpg, .jpeg, .png,
        .gif 這四種</p>
    <p class="style1">
        檔案會寫入目前網站的 /Ch18_FileUpload/Uploads 資料夾中。</p>
    <p class="style1">
        上載檔案會以它在用戶端電腦上 ,相同檔案名稱來儲存。</p>
</body>
</html>
