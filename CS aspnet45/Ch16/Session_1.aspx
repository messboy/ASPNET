<%@ Page Language="C#"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Session_1</title>
</head>
<body>
    <%
  //--���ѡG�o�q�{���O Inline Code�A�ɦW�� Session_1.aspx�C

  Session["my_test1"] = "***�u���A�@�H�P�o�@���s����***�ݪ���o�T���I";
  Session["my_test2"] = 1000;

  Response.Write("****���槹���I****");
    %>
</body>
</html>
