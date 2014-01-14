<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AJAX_JavaScript_00.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_AJAX_JavaScript_00" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        這是一個錯誤的功能，請看錯誤畫面與訊息。<br />
        <a href="http://msdn.microsoft.com/zh-tw/library/bb359558.aspx">
        http://msdn.microsoft.com/zh-tw/library/bb359558.aspx</a>
        <br />
        <br />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <hr />
                <% Response.Write("Hello !! <br />"); %>
                <% Response.Write(DateTime.Now.ToLongTimeString()); %>
                <% Response.Write("<script language=\"javascript\">window.alert(\"--" + DateTime.Now.ToLongTimeString() + "--\")</script>"); %>
                <hr />
            </ContentTemplate>
        </asp:UpdatePanel>
    
    </div>
    </form>
</body>
</html>
