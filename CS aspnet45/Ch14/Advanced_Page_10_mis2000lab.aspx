<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Advanced_Page_10_mis2000lab.aspx.cs" Inherits="Ch14_Advanced_Page_10_mis2000lab" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>自己手寫版的分頁程式 -- DataSet</title>
</head>
<body>
    <p>
        自己手寫版的分頁程式&nbsp; DataSet （後置程式碼）
    </p>
    效率不好！因為 DataSet把整個 test資料表都查詢出來了。SQL指令那裡沒有幫忙「分頁」。
    <form id="form1" runat="server">
    <div>
    </div>
    </form>

</body>
</html>

