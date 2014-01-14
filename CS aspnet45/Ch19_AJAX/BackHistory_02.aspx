<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BackHistory_02.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_BackHistory_02" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            background-color: #FFCCCC;
        }
        .style2
        {
            color: #666666;
        }
        .style3
        {
            background-color: #FFCCFF;
        }
        .style4
        {
            color: #666666;
            background-color: #FFCCFF;
        }
        .style5
        {
            color: #FF0000;
        }
        .style6
        {
            color: #CC00FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <strong><span class="style1">瀏覽器</span>的「回到上一頁」，搭配AJAX #2 <span class="style5">
        （後置程式碼）</span></strong><br />
        <br />
        1.&nbsp; 請設定 ScriptManager的<span class="style5"><strong>「EnableHistory」屬性</strong></span>為 
        <span class="style5"><strong>True</strong></span><br />
        2.&nbsp; 請撰寫後置程式碼，記錄時間點（ScriptManager1<span class="style5"><strong>.Add</strong>HistoryPoint()方法</span>）<br />
        <br />
        <br />
    外部時間：<%= System.DateTime.Now.ToLongTimeString()%>
    <br />
    <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnableHistory="True" 
            onnavigate="ScriptManager1_Navigate">
        </asp:ScriptManager>
        <br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <br />
                <span class="style6"><strong>C#範例，請您輸入第一次之後，<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                </span><span class="style5">再輸入第二次</span><span class="style6">，才能用瀏覽器的按鈕，回上一頁。</span></strong><br /> 
                請輸入您的姓名：<asp:TextBox ID="TextBox1" runat="server">（預設值）</asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" style="font-weight: 700; " 
                    CssClass="style4"></asp:Label><span class="style2"><span class="style3">
                ...... 現在時間：<%= System.DateTime.Now.ToLongTimeString()%></span></span><br /><br />

            </ContentTemplate>
        </asp:UpdatePanel>
    <br />
    <br />
    <br />
    <br />
    外部時間：<%= System.DateTime.Now.ToLongTimeString()%>     
    </div>
    </form>
</body>
</html>
