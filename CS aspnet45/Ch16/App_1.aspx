<%@ Page Language="C#"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>App_1.aspx</title>
</head>
<body>
    <%
          //--���ѡG�o�q�{���O Inline Code�A�ɦW�� App_1.aspx�C

          Application["my_test1"] = "Hello!�z�n�A����H���ݪ���o�q�T���I";
          Application["my_test2"] = 1000;

          Response.Write("****���槹���I****");
    %>
</body>
</html>
