<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_9_01_AJAX_MultiUpdatePanel.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_Default_9_AJAX_MultiUpdatePanel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> #1</title>
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
            font-weight: bold;
            background-color: #FF9999;
        }
    a:link{color:#1364c4;text-decoration:none}.SentenceHover{background-color:#ffffe1}
        .style11
        {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        1). 頁面上, 三個<span class="style1">獨立的</span> UpdatePanel<br />
        <br />
        有問題!!......所有時間都會<span class="style5">被[最小的時間]給干擾</span><br />

    
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <br />
    <hr />
    <p>====== (UpdatePanel #1) 五秒======</p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <span class="style3">時間:<%=DateTime.Now.ToLongTimeString() %></span><asp:Timer ID="Timer1" runat="server" Interval="5000">
            </asp:Timer>
        </ContentTemplate>
    </asp:UpdatePanel>

    <br />
    <br />
    <hr />
    <p>====== (UpdatePanel #2) 三秒======</p>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <span class="style2">時間:<%=DateTime.Now.ToLongTimeString() %></span><asp:Timer ID="Timer2" runat="server" Interval="3000">
            </asp:Timer>
        </ContentTemplate>
    </asp:UpdatePanel>

    <br />
    <br />
    <hr />
    <p>====== (UpdatePanel #3) 一秒======</p>
    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
        <ContentTemplate>
            <span class="style4">時間:<%=DateTime.Now.ToLongTimeString() %></span><asp:Timer ID="Timer3" runat="server" Interval="1000">
            </asp:Timer>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
    <p>
        &nbsp;</p>
    <p>
        參考資料：<a 
            href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.updatepanel.childrenastriggers.aspx">http://msdn.microsoft.com/zh-tw/library/system.web.ui.updatepanel.childrenastriggers.aspx</a>
    </p>
    <p>
        <span id="xn6_fb6e670d643c618fc432820b1c6c2627" class="sentence SentenceHover">
        <strong>當 </strong><span xmlns="http://www.w3.org/1999/xhtml">
        <a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.updatepanel.updatemode.aspx">
        <strong>UpdateMode</strong></a></span><strong> 屬性是設定為 </strong>
        <span xmlns="http://www.w3.org/1999/xhtml"><span class="unresolvedLink"><strong>
        Always</strong></span></span><strong> 且 </strong>
        <span xmlns="http://www.w3.org/1999/xhtml"><span class="selflink"><strong>
        ChildrenAsTriggers</strong></span></span><strong> 屬性是設定為 </strong>
        <span xmlns="http://www.w3.org/1999/xhtml"><span class="input"><strong>false</strong></span></span>，<span 
            xmlns="http://www.w3.org/1999/xhtml"><a 
            href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.updatepanel.onprerender.aspx">OnPreRender</a></span> 
        方法期間會擲回 <span xmlns="http://www.w3.org/1999/xhtml">
        <a href="http://msdn.microsoft.com/zh-tw/library/system.invalidoperationexception.aspx">
        InvalidOperationException</a></span> 例外狀況。</span><span 
            id="xn7_355341b7b2fb14e1d229487bf78a5f41" class="sentence"><span 
            xmlns="http://www.w3.org/1999/xhtml"><a 
            href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.updatepanel.aspx">UpdatePanel</a></span> 
        控制項<span class="style11"><strong>不</strong></span>允許此屬性組合。</span></p>
</body>
</html>
