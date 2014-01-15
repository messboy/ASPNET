using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class _14_adonet_executeScalar : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack)
		{
			getcount();
		}      
	}

	private void getcount()
	{
		SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
		SqlCommand cmd = new SqlCommand("select count(*) from test", conn);
		try
		{
			conn.Open();
			object obj = cmd.ExecuteScalar();
			Response.Write("總共有: " + obj + "列");
		}
		catch (Exception ex)
		{
			Response.Write("Error---" + ex.ToString());
		}
		finally
		{
			if (conn.State == ConnectionState.Open)
			{
				conn.Close();
			}
		}
	}
#region SQL conn ref
	//    protected void Button1_Click(object sender, EventArgs e)
	//{
	//    string id = TextBox1.Text;
	//    string cname = TextBox2.Text;
	//    string birthday = TextBox3.Text;

	//    string sql =
	//        "insert into registers(sid,cname,birthday)values(@sid,@cname,@birthday)";
	//    SqlParameter[] parameters = {
	//                                new SqlParameter("sid",System.Data.SqlDbType.Char){Value = id},
	//                                new SqlParameter("cname",System.Data.SqlDbType.NVarChar){Value = cname},
	//                                new SqlParameter("birthday",System.Data.SqlDbType.DateTime){Value = birthday}
	//                                };
	//    var db = AllenKuo.Libs2.SqlDbLite.LoadFromConfig("default");
	//    db.ExecuteNonQuery(sql, parameters);
	//}

	//protected void Button2_Click(object sender, EventArgs e)
	//{
	//    string cname = TextBox4.Text;
	//    string id = TextBox5.Text;

	//    string sql =
	//        "UPDATE registers set sid=@sid where cname=@cname" ;
	//    SqlParameter[] parameters = {
	//                                new SqlParameter("sid",System.Data.SqlDbType.Char){Value = id},
	//                                new SqlParameter("cname",System.Data.SqlDbType.NVarChar){Value = cname},
	//                                };
	//    var db = AllenKuo.Libs2.SqlDbLite.LoadFromConfig("default");
	//    db.ExecuteNonQuery(sql, parameters);
	//}

	//protected void Button3_Click(object sender, EventArgs e)
	//{
	//    //設定變數值與sql語法
	//    string name = TextBox6.Text;
	//    string sql = "delete registers where cname=@name";
	//    //設定參數值
	//    SqlParameter[] parameter = {
	//                                   new SqlParameter("name", System.Data.SqlDbType.NVarChar) { Value = name } 
	//                                };
	//    //連接到資料庫
	//    var db = AllenKuo.Libs2.SqlDbLite.LoadFromConfig("default");
	//    db.ExecuteNonQuery(sql, parameter);
	//}
	#endregion

	protected void Button1_Click(object sender, EventArgs e)
	{
		SqlConnection conn =
			new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
		SqlCommand cmd = new SqlCommand("test_all", conn);
		SqlDataReader dr = null;
		
		try
		{
			conn.Open();
			dr = cmd.ExecuteReader();
			GridView1.DataSource = dr;
			GridView1.DataBind();
		}
		catch (Exception ex)
		{
			Response.Write("Error---" + ex.ToString());
		}
		finally
		{
			if(dr != null)
			{
				cmd.Cancel();
				dr.Close();
			}
			if( conn.State == ConnectionState.Open){
			conn.Close();
			}
		}
	}

    //使用預存程序
	protected void Button2_Click(object sender, EventArgs e)
	{
		SqlConnection conn =
			new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
		//預存程序名稱
        SqlCommand cmd = new SqlCommand("test_all", conn);
        //記得輸入類型
        cmd.CommandType = CommandType.StoredProcedure;
		SqlDataReader dr = null;

		try
		{
			conn.Open();
			dr = cmd.ExecuteReader();
			/*dr.read() 
			 * 1.執行時連線必須開啟
			 * 2.一次只會讀取一個資料
			 * 3.執行完成回傳boolean值，true代表有新資料，並將指標一向下一筆；false代表沒有資料
			 * */
			while (dr.Read())
			{   
				//寫欄位名稱 因為要轉成索引編號 性能較差，但是可讀性高,維護容易
				ListBox1.Items.Add(dr["title"].ToString());
				//直接告知索引編號 性能較好，但之後維護要注意
				ListBox2.Items.Add(dr[3].ToString());
			}
		}    
		catch (Exception ex)
		{
			Response.Write("Error---" + ex.ToString());
		}
		finally
		{
			if (dr != null)
			{
				cmd.Cancel();
				dr.Close();
			}
			if (conn.State == ConnectionState.Open)
			{
				conn.Close();
			}
		}
	}
}