<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customizing_Error_Handling_01.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_Customizing_Error_Handling_01" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        自訂 UpdatePanel控制項的錯誤處理 <span class="style1">（Server端，後置程式碼）</span><br />
        <a href="http://msdn.microsoft.com/zh-tw/library/Bb398934(v=VS.100).aspx">
        http://msdn.microsoft.com/zh-tw/library/Bb398934(v=VS.100).aspx</a>
        <br />
        <br />
        <br />
        請在「除數」裡面輸入 0，以察看錯誤訊息！<br />
        <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server" 
            onasyncpostbackerror="ScriptManager1_AsyncPostBackError" >
            </asp:ScriptManager>


            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                    <br />===============================================<br /><br />

                    <asp:TextBox ID="TextBox1" runat="server" Width="39px"></asp:TextBox>
                    /
                    <asp:TextBox ID="TextBox2" runat="server" Width="39px" ForeColor="Red"></asp:TextBox>
                    =
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700"></asp:Label><br />
                    <asp:Button ID="Button1" runat="server"  Text="開始計算！" onclick="Button1_Click" />


                </ContentTemplate>
            </asp:UpdatePanel>

    
    </div>
    </form>
</body>
</html>

