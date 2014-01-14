<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_10_AJAX_Easy.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_Default_10_AJAX_Easy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            background-color: #FFFF00;
        }
        .style2
        {
            color: #0000FF;
            background-color: #99CCFF;
            font-weight: bold;
        }
        .style3
        {
            background-color: #99CCFF;
        }
        .style4
        {
            background-color: #FFFF00;
        }
        .style5
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style6
        {
            color: #FF0000;
            font-size: small;
            text-align: center;
        }
        .style7
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        範例：巢狀的 UpdatePanel&nbsp;&nbsp;&nbsp; <span class="style4">成功！！</span><br />
        （最簡單的作法，只要<span class="style5">個別設定「UpdateMode = Conditional」</span>即可）<br />
        <br />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        UpdatePanel「外面」的時間：<%=Now()%><br />
        <br />
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <br />
            <br />
            &nbsp; 1. <span class="style4">第一個 UpdatePanel，每3,000毫秒</span>就會自動進行「局部更新」。<br />
            &nbsp; UpdatePanel #1「<span class="style1">內部</span>」的時間：<%=Now()%><br />
            <asp:Timer ID="Timer1" runat="server" Interval="3000">
            </asp:Timer>
            <div class="style7">
                <b><span class="style6">......因為第一個（父）UpdatePanel<br />
                    會受到內部的（子）UpdatePanel所影響......</span><br class="style6" />
                </b>
            </div>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <hr />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp; 2. <span class="style3">第二個 UpdatePanel，每1,000毫秒</span>就會自動進行「局部更新」。<br />
                    &nbsp;&nbsp;&nbsp;&nbsp; UpdatePanel #2「<span class="style2">內部</span>」的時間：<%=Now()%><br />
                    <hr />
                    <asp:Timer ID="Timer2" runat="server" Interval="1000">
                    </asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
