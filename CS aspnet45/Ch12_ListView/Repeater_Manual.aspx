<%@ Page Language="C#"%>
<%@ Import NameSpace = "System.Data" %>
<%@ Import NameSpace = "System.Data.SqlClient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>

    <div align="center">

        <%  
//--���ѡG�Ĥ@�A�s��SQL��Ʈw
SqlConnection Conn = new SqlConnection("server=localhost; uid=test; pwd=test; database=test");
Conn.Open();

//--���ѡG�ĤG�A����SQL���O�A�ϥ�DataReader
string sqlstr = "select top 10 id,test_time,title,summary from test ";
SqlCommand cmd  = new SqlCommand(sqlstr ,Conn);
SqlDataReader dr = cmd.ExecuteReader();

//--���ѡG�ĤT�A�ۥѵo��
    //--�]Repeater�����<ItemTemplate>�˪��A�۰����ڭ̧����o�@�q�j�骺�{���^
      Response.Write("<table width='90%' border=1>");

while (dr.Read())
{
      Response.Write("<tr>");
      Response.Write("  <td>" + dr["id"] + "</td>");
      Response.Write("  <td>" + dr["test_time"] + "</td>");
      Response.Write("  <td>" + dr["title"] + "</td>");
      Response.Write("  <td>" + dr["summary"] + "</td>");
      Response.Write("</tr>");
}

      Response.Write("</table>");

//--���ѡG�ĥ|�A������Ʈw���s��
cmd.Cancel();
dr.Close();
Conn.Close();
        %>
    </div>

</body>
</html>
