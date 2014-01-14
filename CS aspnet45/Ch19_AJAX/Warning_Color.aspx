<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Warning_Color.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_Warning_Color" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            width: 100%;
            background-color: #008000;
        }
        .style2
        {
            color: #FF0000;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        透過 AJAX，按下按鈕，變化燈號（圖片）以提醒 User。<br />
        <br />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <br />
                AJAX範例 ----<br />
                <asp:Button ID="Button1_AJAX" runat="server" Text="Button_AJAX" 
                    onclick="Button1_AJAX_Click" /><br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Button_No Image" 
                    onclick="Button2_Click" /><br />
                <br />
                <asp:Image ID="Image1" runat="server" Visible="false" />
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
        <hr />
        <br />
        以下是「<span class="style2">沒有</span>」AJAX的範例 ----
        <br />
        <asp:Button ID="Button3" runat="server" Text="Button" onclick="Button3_Click" />
        <br />
        <table class="style1">
            <tr>
                <td>
                    <asp:Image ID="Image2" runat="server" Visible="false" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
