<%@ Page Language="C#"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>

    <%
        if (Session["Login"] == "OK")
           {
           Response.Write("<h3>恭喜您，您成功登入，才會看見這一頁！ Session_Loging_End.aspx</h3><hr>");
           Response.Write("<br>您的個人資料是----<br>");
           Response.Write("<br>    帳號 =>  " + Session["u_name"]);
           Response.Write("<br>    密碼 =>  " + Session["u_passwd"]);
           }
        else
           {
           Response.Write("<h3><font color=red><b>嚴重警告！</b></font>您的帳號、密碼錯誤！是非法使用者～</h3>");
           Response.End();     //--註解：程式立刻終止！
           }

        Response.Write("<br><br><font color=blue>");
        Response.Write("<h3>此為網站管理區，外人莫入！</h3></font>");
    %>
</body>
</html>
