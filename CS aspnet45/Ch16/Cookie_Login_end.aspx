<%@ Page Language="C#" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�n�J��A�~�|�ݨ��o�@���I</title>
</head>
<body>
    <%
   
    if (Request.Cookies["Login"] != null)
    {
        if (Request.Cookies["Login"].Value == "OK")
        {
            Response.Write("<h3>���߱z�A�z���\�n�J�A�~�|�ݨ��o�@���I</h3>");
        }
    }
    else
    {
        Response.Write("<h3><font color=red>�Y��ĵ�i�I</font>�z���b���B�K�X���~�I�O�D�k�ϥΪ̡�</h3>");
        Response.End();     //--���ѡG�{���ߨ�פ�I
    }    

    Response.Write("<br><hr>");
    
    %>
</body>
</html>
