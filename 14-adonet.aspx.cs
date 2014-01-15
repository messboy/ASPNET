using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// 自己加入
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class _14_adonet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //產生連線物件conn, 連線的位置是webconfig的連線字串
        SqlConnection conn = 
            new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);

        //產生指令物件
        SqlCommand cmd =
            new SqlCommand("select id,test_time,summary from test");

        //等等使用Datareader 來擷取查詢command後的結果
        SqlDataReader dr = null;

        //指令物件要連接的資料庫是conn
        cmd.Connection = conn;

        try
        {
            //連結資料庫
            conn.Open();
            //將唯讀的查詢指令指定給dr
            dr = cmd.ExecuteReader();
            //資料繫結
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("Error Message----" + ex.ToString());
        }
        finally
        {
            if (dr != null)
                cmd.Cancel();
            //關閉Datereader 之前一定要先取修sqlCommand
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
                conn.Dispose();
            }
        }
    }
}