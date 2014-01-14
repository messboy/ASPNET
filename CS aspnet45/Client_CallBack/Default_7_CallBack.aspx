<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_7_CallBack.aspx.cs" Inherits="Ch20_Client_CallBack_Default_7_CallBack" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
  <script type="text/javascript">
    function LookUpStock()   //註解：交給後置程式碼，作CallBack動作
    {
        var lb = document.getElementById("DropDownList1");
        var u_id = lb.options[lb.selectedIndex].value;
        CallServer(u_id, "");
    }

    function ReceiveServerData(rValue)   //註解：接收CallBack的「回傳值」
    {   
        document.getElementById("ResultsSpan").innerHTML = rValue;        
    }
 </script>    
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-weight: bold;
            background-color: #FFFF66;
        }
        .style2
        {
            background-color: #99FF99;
        }
        .style3
        {
            font-size: small;
            background-color: #99FF99;
        }
        .style4
        {
            font-size: small;
            color: darkgreen;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        請挑選一篇文章：<asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT [id], [title] FROM [test]"></asp:SqlDataSource>
      <br />
      <br />
      <button type="Button" onclick="LookUpStock()">透過CallBack方式，來查詢DB</button>
      <br />
      <br />
            透過CallBack方式來查詢。資料不需要「全部」回到SERVER端索取，所以畫面不會閃一下。<br />
            <br />
            本篇文章的內文（<span class="style1">從「資料庫」查詢的</span>）：
            <hr />
            
            <span id="ResultsSpan" runat="server" class="style3"></span>
            
      <br />    
    </div>
    </form>
 
</body>
</html>
