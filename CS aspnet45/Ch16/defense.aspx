﻿<%
if (Session["Login"].ToString() == "OK")
   {
   Response.Write("<h3>恭喜您，您成功登入，才會看見這一頁！ Session_Loging_End.aspx</h3><hr>");
   Response.Write("<br>您的個人資料是----<br>");
   Response.Write("<br>    帳號 =>  " + Session["u_name"].ToString());
   // Response.Write("<br>    姓名 =>  " + Session["u_realname"].ToString());
   // Response.Write("<br>    密碼 =>  " + Session["u_passwd"].ToString());
   }
else
   {
   Response.Write("<h3><font color=red><b>嚴重警告！</b></font>您的帳號、密碼錯誤！是非法使用者～</h3>");
   Response.End();     //--註解：程式立刻終止！
   }

Response.Write("<br><br><font color=blue>");
Response.Write("<h3>此為網站管理區，外人莫入！</h3></font>");
%>


