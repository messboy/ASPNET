<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AJAX_Case_01.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_AJAX_Case_01" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>透過Button按鈕控制另一個 UpdatePanel，但自己不受影響</title>
    <style type="text/css">
        .style2
        {
            color: #FF3300;
            font-weight: bold;
            font-size: large;
        }
        .style3
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
    
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="False" 
        UpdateMode="Conditional">
        <ContentTemplate>
            UpdatePanel<span class="style2">1</span>
            <br />
            <br />
            <big><b><font color="blue"><%= DateTime.Now%></font></b></big>
            <br />
            <asp:Button ID="Button1" runat="server" Text="讓「下面」的 UpdatePanel動作" />
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
    <br /><br />
    <hr />
    <br />
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" ChildrenAsTriggers="False" 
        UpdateMode="Conditional">
        <ContentTemplate>
            UpdatePanel<span class="style3">2</span>
            <br />
            <br />
            <big><b><font color="red"><%= DateTime.Now %></font></b></big>
            <br />
            <asp:Button ID="Button2" runat="server" Text="讓「上面」的 UpdatePanel動作" />
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
    <br />
    
    </form>
</body>
</html>

