<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Cookie_01</title>
</head>
<body>
    <%
//--���ѡG�Ĥ@�ؼg�k�C �w��Ĥ@�� Cookie�A�|�����]�w Cookies ���X���ȡC
Response.Cookies["userName"].Value = "MIS2000 Lab.";
Response.Cookies["userName"].Expires = DateTime.Now.AddDays(1);

//--���ѡG�ĤG�ؼg�k�C
//--�إ� HttpCookie���O������������B�]�w���ݩʡA�M��g�� Add��k�N��[�J Cookies���X�C
HttpCookie aCookie = new HttpCookie("lastVisit");
aCookie.Value = DateTime.Now.ToShortDateString();
aCookie.Expires = DateTime.Now.AddDays(1);
Response.Cookies.Add(aCookie);

Response.Write("�g�JCookie �A�����I");    
    %>
</body>
</html>
