<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_6_CallBack.aspx.cs" Inherits="Ch20_Client_CallBack_Default_6_CallBack" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <title>Client Callback Example--時間</title>
  <script type="text/javascript">
    function My_Time()   //註解：交給後置程式碼，作CallBack動作
    {
        CallServer();     //這習題比較簡單，不需要傳任何資料給Server端或後置程式碼。
    }

    function ReceiveServerData(rValue)   //註解：接收Server端 CallBack的「回傳值」
    {   
        document.getElementById("ResultsSpan").innerHTML = rValue;        
    }
 </script>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
        .style2
        {
            font-size: small;
        }
    </style>
</head>
<body>
  <form id="form1" runat="server">
    <div>
        [課後習題]：<b>利用CallBack機制，回傳一個時間值</b>
        <br />
        <br />
      <br />
      <br />
      <button type="Button" onclick="My_Time()">按下去，就會得到一個時間值</button>
      <br />
      <br />
            <span class="style2">透過CallBack方式來查詢。資料不需要「全部」回到SERVER端索取，所以畫面不會閃一下。</span><br 
            class="style2" />
            <span class="style2">可以參考這篇文章，講得很清楚....</span><a href="http://diary.tw/tim/23"><span 
            class="style2">http://diary.tw/tim/23</span></a> <br />
            <br />
            時間值（CallBack的回傳值）：
            <font color="red"> <b>
                <span id="ResultsSpan" runat="server"></span>
                </b>
            </font>
      <br />
      <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        另外介紹一個範例給大家參考：<br />
        <br />
        <span class="style1">CallBack多層式選單3+2郵遞區號查詢程式範例 (ASP.NET 2.0 CallBack範例) </span>
        <br />
        <span class="style2">網址： </span> <a href="http://blog.blueshop.com.tw/topcat/archive/2006/04/28/23177.aspx">
        <span class="style2">http://blog.blueshop.com.tw/topcat/archive/2006/04/28/23177.aspx</span></a>
      
    </div>
  </form>
 
</body>
</html>
