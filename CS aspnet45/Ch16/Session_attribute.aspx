<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Session_attribute.aspx</title>
</head>
<body>
    <%
  //--���ѡG�o�q�{���O Inline Code�A�ɦW�� Session_attribute.aspx�C

  Session["my_test1"] = "***�u���A�@�H�P�o�@���s����***�ݪ���o�T���I";

  Response.Write("****���槹���I****<hr>");

  Response.Write("<br> SessionID = " + Session.SessionID);
  Response.Write("<br> Session���X�Ӫ���H  " + Session.Count.ToString());
  Response.Write("<br> Session���Ҧ��]Mode�^�H  " + Session.Mode.ToString());
  Response.Write("<br> �ĥεLCookie���A�ܡH  " + Session.IsCookieless.ToString());
  Response.Write("<br> �O�_���s�إߪ� Session�H  " + Session.IsNewSession.ToString());
  Response.Write("<br> �O�_�u��Ū�v�H  " + Session.IsReadOnly.ToString());
  Response.Write("<br> Session���ͩR�g���]�����^ = " + Session.Timeout.ToString());
  Response.Write("<br> Session���X�ӯ����� = " + Session.Keys.Count.ToString());
    %>
</body>
</html>
