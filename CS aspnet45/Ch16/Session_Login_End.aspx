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
           Response.Write("<h3>���߱z�A�z���\�n�J�A�~�|�ݨ��o�@���I Session_Loging_End.aspx</h3><hr>");
           Response.Write("<br>�z���ӤH��ƬO----<br>");
           Response.Write("<br>    �b�� =>  " + Session["u_name"]);
           Response.Write("<br>    �K�X =>  " + Session["u_passwd"]);
           }
        else
           {
           Response.Write("<h3><font color=red><b>�Y��ĵ�i�I</b></font>�z���b���B�K�X���~�I�O�D�k�ϥΪ̡�</h3>");
           Response.End();     //--���ѡG�{���ߨ�פ�I
           }

        Response.Write("<br><br><font color=blue>");
        Response.Write("<h3>���������޲z�ϡA�~�H���J�I</h3></font>");
    %>
</body>
</html>
