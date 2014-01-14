<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Case_2_CallBack.aspx.cs" Inherits="Ch20_Client_CallBack_Case_2_CallBack" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>聊 天 室（CallBack）</title>
  <script type="text/javascript">
    function List_ALL_ChatingMsg()   //註解：交給後置程式碼，作CallBack動作
    {
        CallServer();
        //註解：這個範例比較特別的地方，在於 Client端的 CallServer()裡面
        //  並沒有傳遞任何值到Server端喔！
        //  因為我們只是定時更新畫面而已，並沒有傳值到Server端去進行處理。
    }

     function ReceiveServerData(rValue)   
    {                                              //註解：接收CallBack的「回傳值」
        document.getElementById("ResultsSpan").innerHTML = rValue;
    }

    setInterval ('List_ALL_ChatingMsg();','500');
    //每0.5秒透過CallBack，自動更新一次畫面
 </script>
</head>
<body>
<form id="form1" runat="server">
    <p>&lt;&lt;聊 天 室（CallBack）&gt;&gt;<hr />

     <span id="ResultsSpan" runat="server">
                每0.5秒透過CallBack更新一次畫面<hr />

            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
    </span>
    <hr />

        請輸入聊天內容：<asp:TextBox ID="TextBox1" runat="server" Width="348px"></asp:TextBox>
        &nbsp;<asp:Button ID="Button1" runat="server" Text="Submit/送出" 
        onclick="Button1_Click" />
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
        ControlToValidate="TextBox1" ErrorMessage="不可以留空白！" style="text-align: center"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="不玩了，掰掰～～Exit" 
        onclick="Button2_Click" />
    </p>
    </form>
 
</body>
</html>
