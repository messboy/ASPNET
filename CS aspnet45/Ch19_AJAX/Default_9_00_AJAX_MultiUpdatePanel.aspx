<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_9_00_AJAX_MultiUpdatePanel.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_Default_9_00_AJAX_MultiUpdatePanel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>#1</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style2
        {
            color: #009900;
        }
        .style3
        {
            color: #0000FF;
        }
        .style4
        {
            color: #996600;
        }
        .style5
        {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #CC0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        0). 頁面上, 三個<span class="style1">獨立的</span> UpdatePanel<br />
        最簡單的作法，只要<span class="style5">個別設定「UpdateMode = Conditional」</span>即可<br />
        <br />
        <br />
        成功!!<br />
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <br />
    <hr />
    <p>
        ====== (UpdatePanel #1) 五秒======</p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <span class="style3">時間:<%=DateTime.Now.ToLongTimeString() %></span><asp:Timer ID="Timer1"
                runat="server" Interval="5000" ontick="Timer1_Tick">
            </asp:Timer>
            <br />次數：<asp:Label ID="Label1" runat="server" Text="0"></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
    <hr />
    <p>
        ====== (UpdatePanel #2) 三秒======</p>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <span class="style2">時間:<%=DateTime.Now.ToLongTimeString() %></span><asp:Timer ID="Timer2"
                runat="server" Interval="3000" ontick="Timer2_Tick">
            </asp:Timer>
            <br />次數：<asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <br />
    <hr />
    <p>
        ====== (UpdatePanel #3) 一秒======</p>
    <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <span class="style4">時間:<%=DateTime.Now.ToLongTimeString() %></span><asp:Timer ID="Timer3"
                runat="server" Interval="1000" ontick="Timer3_Tick">
            </asp:Timer>
            <br />次數：<asp:Label ID="Label3" runat="server" Text="0"></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
