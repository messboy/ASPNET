<%@ Page Language="C#" AutoEventWireup="true" CodeFile="01_InlineCode.aspx.cs" Inherits="Ch02_1_InlineCode" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�ڪ��Ĥ@��ASP.NET�{��</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <%
        //���ѡG�o�O�ڪ��Ĥ@��ASP.NET�{��
        Response.Write("Hello!The World");
    %>
    </div>
    </form>
 
</body>
</html>