<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateProgress.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_UpdateProgress" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style2
        {
            font-size: large;
            background-color: #FF9999;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <b>UpdateProgress控制項</b><br />
        <a href="http://msdn.microsoft.com/zh-tw/library/bb386421.aspx">
        http://msdn.microsoft.com/zh-tw/library/bb386421.aspx</a>
        <br />
        <br />網頁時間（外部）：<%=DateTime.Now.ToLongTimeString() %>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                    <hr />這裡面是 UpdatePanel控制項<br />
                    <asp:Label ID="Label1" runat="server" 
                        style="font-weight: 700; background-color: #FFFF66"></asp:Label><br /><br />

                    <asp:Button ID="Button1" runat="server" Text="按下去會沈睡5秒鐘～Button_" 
                        onclick="Button1_Click" />
                    
                    <hr />
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <br />
        <br />
        請把UpdateProgress控制項<span class="style1">放在「UpdatePanel」外面
        </span>
        <br />
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" 
            AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>

                     <table class="style2">
                        <tr>
                            <td>
                                 <img src="loading_01.gif" />
                                 <span>...抱歉！正在處理中.........Sorry! Still Processing... </span>
                                 <img src="loading_02.gif" />
                             </td>
                        </tr>
                    </table>

            </ProgressTemplate>
        </asp:UpdateProgress>
        <br />
    
    </div>
    </form>
</body>
</html>

