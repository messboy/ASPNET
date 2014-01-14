<%@ Page Language="C#" AutoEventWireup="true" CodeFile="2_TextBox_Search.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_2_TextBox_Search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>未命名頁面</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
        .style2
        {
            background-color: #CCFF99;
        }
    </style>
</head>
<body>
    <p>
        不透過按鈕(Button)，直接輸入文章編號。<br />
        就會自動搜尋出文章標題。</p>
    <form id="form1" runat="server">
    <div>
    
        id :         <asp:TextBox ID="TextBox1" runat="server" 
            AutoPostBack="True" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp; <span class="style1">(重點：AutoPostBack = True)<br />
        </span>
        <br />
        Title :         <asp:TextBox ID="TextBox2" runat="server" Width="85%"></asp:TextBox>
    
    </div>
    </form>
    <p class="style1">
        <span class="style2">本範例透過 <b>.ExecuteScalar()方法</b>來完成</span></p>
 
</body>
</html>
