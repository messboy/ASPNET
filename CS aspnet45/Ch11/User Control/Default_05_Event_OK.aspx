<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_05_Event_OK.aspx.cs" Inherits="Book_Sample_User_Control_Default_05_Event_OK" %>


<!-- '** 重點在此！！ ************ -->
<%@ Register Src="WebUserControl_05_Event_OK.ascx" TagName="GridView1" TagPrefix="mis2000lab" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <br />
         <br />
         使用 UC的<span class="style1">自訂事件</span>，檔名 WebUserControl_05_Event_OK.ascx。
         <hr />
         <br />
    
        <!-- '** 重點在此！！ ************ -->
        <mis2000lab:GridView1 runat="server" ID="mis2000GV" />


    </div>
    </form>
</body>
</html>

