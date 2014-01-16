using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Data;


public partial class Dataset : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DBinit();
        }
    }

    private void DBinit ()    
    {
        using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString))
        {
            //產生連接Dataset的橋樑物件，順道寫SQL指令
            SqlDataAdapter adapter = null;
            adapter = new SqlDataAdapter("select id,test_time,title,author from test", conn);
            DataSet ds = new DataSet();

            adapter.Fill(ds, "test");

            ////Dataset是由許多table組成，目前只放一個test
            DataTable mytable = ds.Tables["test"];


            //建立顯示的表單
            StringBuilder mystring = new StringBuilder();
            mystring.Append("<table border=1><tr><td>id</td><td>test_time</td><td>title</td><td>author</td></tr>");

            for (int i=0; i< mytable.Rows.Count; i++)
            {
                mystring.Append("<tr>");
                mystring.Append("<td>" + mytable.Rows[i]["id"] + "</td>");
                mystring.Append("<td>" + mytable.Rows[i]["test_time"] + "</td>");
                mystring.Append("<td>" + mytable.Rows[i]["title"] + "</td>");
                mystring.Append("<td>" + mytable.Rows[i]["author"] + "</td>");
                mystring.Append("</td>");
            }
            mystring.Append("</table>");
             
            Label1.Text = mystring.ToString();
        }
    }
}