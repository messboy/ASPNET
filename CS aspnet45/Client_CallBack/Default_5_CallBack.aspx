<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_5_CallBack.aspx.cs" Inherits="Ch20_Client_CallBack_Default_5_CallBack" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html  >
<head id="Head1" runat="server">
  <title>Client Callback Example</title>
  <script type="text/javascript">
    function LookUpStock()   //註解：交給後置程式碼，作CallBack動作
    {
        var lb = document.getElementById("ListBox1");
        var product = lb.options[lb.selectedIndex].text;
        CallServer(product, "");
    }

    function ReceiveServerData(rValue)   //註解：接收CallBAck的「回傳值」
    {   
        document.getElementById("ResultsSpan").innerHTML = rValue;        
    }
 </script>
        <style type="text/css">
            .style1
            {
                font-size: small;
            }
        </style>
</head>
<body>
  <form id="form1" runat="server">
    <div>
        範例出處：微軟MSDN網站 
        <br />
        <a href="http://msdn.microsoft.com/zh-tw/library/ms178210.aspx">
        http://msdn.microsoft.com/zh-tw/library/ms178210.aspx</a><br />
        <br />
      <asp:ListBox ID="ListBox1" Runat="server"></asp:ListBox>
      <br />
      <br />
      <button type="Button" onclick="LookUpStock()">透過CallBack方式，來查詢庫存</button>
      <br />
      <br />
            <span class="style1">透過CallBack方式來查詢。資料不需要「全部」回到SERVER端索取，所以畫面不會閃一下。</span><br 
            class="style1" />
        <span class="style1">可以參考這篇文章，講得很清楚....</span><a href="http://diary.tw/tim/23"><span 
            class="style1">http://diary.tw/tim/23</span></a><br />
            <br />
            <hr />
            本公司目前庫存數量（CallBack的回傳值）： <font color="red"><b><span id="ResultsSpan" runat="server"></span></b></font>
      <br />
    </div>
  </form>
 
</body>
</html>

