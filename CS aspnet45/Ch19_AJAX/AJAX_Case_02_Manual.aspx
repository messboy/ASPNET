<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AJAX_Case_02_Manual.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_AJAX_Case_02_Manual" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>透過Button按鈕控制另一個 UpdatePanel，但自己不受影響</title>
    <style type="text/css">
        .style2
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style3
        {
            color: #FF3300;
            font-weight: bold;
            font-size: large;
        }
        .style4
        {
            color: #0000FF;
            font-weight: bold;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
        <br />
        自己寫程式，控制 UpdatePanel控制項的 .Update()方法<span class="style2"><br />
        <br />
        不</span>需要在畫面上，設定 <span class="style2">Triggers屬性</span><br />
    
        <br />
    
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="False" 
        UpdateMode="Conditional">
        <ContentTemplate>
            UpdatePanel<span class="style3">1</span>
            <br />
            <br />
            <big><b><font color="blue"><%= DateTime.Now%></font></b></big>
            <br />
            <asp:Button ID="Button1" runat="server" Text="讓「下面」的 UpdatePanel動作" 
                onclick="Button1_Click" />
        </ContentTemplate>

    </asp:UpdatePanel>
    <br /><br />
    <hr />
    <br />
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" ChildrenAsTriggers="False" 
        UpdateMode="Conditional">
        <ContentTemplate>
            UpdatePanel<span class="style4">2</span>
            <br />
            <br />
            <big><b><font color="red"><% = DateTime.Now %></font></b></big>
            <br />
            <asp:Button ID="Button2" runat="server" Text="讓「上面」的 UpdatePanel動作" 
                onclick="Button2_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    
    </form>
</body>
</html>

