<%@ Page Language="C#"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>App_2.aspx</title>
</head>
<body>
    <%
          //--���ѡG�o�q�{���O Inline Code�A�ɦW�� App_2.aspx�C
          //             Ū���W�@���{���g�JApplication���ȡC  

          Response.Write("Application�̭����ȡA��Ӻ��������{�����i�H�@�ΡI<hr>");
          Response.Write("<br> my_test1����---- " + Application["my_test1"]);
          Response.Write("<br> my_test2����---- " + Application["my_test2"]);

    %>
</body>
</html>
