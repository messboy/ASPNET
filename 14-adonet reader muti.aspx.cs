using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class _14_adonet_reader_muti : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getmutiquery();
        }
    }

    //聯繫SQL 處理多筆SQL查詢
    private void getmutiquery()
    {
        string cmdtext = "select top 10 * from Orders; select top 11 * from Products";
        
        using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand(cmdtext, conn);
            SqlDataReader dr = null;

            //開啟資料庫連線
            conn.Open();

            //將指令結果指定給dr
            dr = cmd.ExecuteReader();

            //dr 讀取SQL第一次查詢資料
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr[1].ToString());
            }
               
            //dr 下一筆查詢資料結果
            dr.NextResult();
            //dr 讀取SQL第二筆查詢資料結果
            while (dr.Read())
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            
            //關閉cmd dr 連結資料庫conn的部分，using end會幫我們處理
            cmd.Cancel();
            dr.Close();
        }
    }
}