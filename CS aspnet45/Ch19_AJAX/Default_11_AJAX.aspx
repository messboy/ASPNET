<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_11_AJAX.aspx.cs" Inherits="Ch19_AJAX_Default_11_AJAX" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> 巢狀的 UpdatePanel #2（本範例有Bug）</title>

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
            font-weight: bold;
            text-decoration: underline;
            color: #FF0000;
        }
        .style6
        {
            font-size: x-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        範例：巢狀的 UpdatePanel  #2（<span class="style5">改良版，還是有Bug</span>）<br />
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        UpdatePanel「外面」的時間：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="False" 
        UpdateMode="Conditional">
        <ContentTemplate>

            <br />
            <br />&nbsp; 1. <span class="style4">第一個 UpdatePanel，每<span class="style6">3</span>,000毫秒</span>就會自動進行「局部更新」。<br />
            &nbsp; UpdatePanel #1「<span class="style1">內部</span>」的時間：
            <b><font color="red">
            <asp:Label ID="Label2" runat="server" Text="Label" style="font-size: xx-large"></asp:Label>
            （不會動）</font></b><br />
            <asp:Timer ID="Timer1" runat="server" Interval="3000">
            </asp:Timer>
            <br />


            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>

                    <hr />
                       <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. <span class="style3">
                    第二個 UpdatePanel，每<span class="style6">1</span>,000毫秒</span>就會自動進行「局部更新」。<br />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; UpdatePanel #2「<span class="style2">內部</span>」的時間：
                       <b>
                       <font color="blue">
                            <asp:Label ID="Label3" runat="server" Text="Label" 
                        style="font-size: xx-large"></asp:Label>
                       </font>
                    </b>
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
