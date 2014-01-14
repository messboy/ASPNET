<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_Multi_CallBack.aspx.cs" Inherits="Ch20_Client_CallBack_Default_Multi_CallBack" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>同時使用多個 CallBack</title>
    <script type="text/javascript">
        var value1 = 0;
        var value2 = 0;

        function myClick1()
        {
            CallServer1(value1, alert('一號按鈕，開始累加！'))
        }

        function myClick2()
        {
            CallServer2(value2, alert('二號按鈕，開始累加！'))
        }

//註解：只有二號按鈕的ReceiveServerData2函式，是寫在HTML網頁裡面。
//      一號按鈕的ReceiveServerData1函式，寫在後置程式碼。
        function ReceiveServerData2(arg, context)
        {
            Message2.innerText = arg;
            value2 = arg;
        }

        function ProcessCallBackError(arg, context)
        {
            Message2.innerText = '很抱歉，CallBack過程中出現錯誤！';
        }
    </script>
</head>

<body>
    <form id="Form1"  runat="server">
    <div>
      Callback 1 傳回的結果： <span id="Message1"><font color="red"><b>0</b></font></span>
      <br />
      Callback 2 傳回的結果： <span id="Message2"><font color="blue"><b>0</b></font></span>
      <br /> 
      <br />
      <input type="button"  value="Client_CallBack1" onclick="myClick1()"/>

      <input type="button" value="Client_CallBack2" onclick="myClick2()"/>
      <br />
      <br />
      <asp:Label id="MyLabel" runat="server"></asp:Label>

      <hr />
      頁面第一次執行的時間點：<% Response.Write(DateTime.Now.ToLongTimeString()); %>
    </div>
    </form>
 
</body>
</html>

