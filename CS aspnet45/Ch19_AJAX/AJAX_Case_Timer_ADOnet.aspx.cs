using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//----自己寫的（宣告)----
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
//----自己寫的（宣告)----


public partial class Book_Sample_Ch19_AJAX_AJAX_Case_Timer_ADOnet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = System.DateTime.Now.ToLongTimeString();
    }


    protected void Timer1_Tick(object sender, EventArgs e)
    {
        //=======微軟SDK文件的範本=======

        //----上面已經事先寫好NameSpace --  using System.Web.Configuration; ----     
        //----或是寫成下面這一行 (連結資料庫)----
        SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);

        SqlDataReader dr = null;

        SqlCommand cmd = new SqlCommand("Select count(id) From test", Conn);

        try     //==== 以下程式，只放「執行期間」的指令！=====================
        {
            //== 第一，連結資料庫。
            Conn.Open();   //---- 這時候才連結DB

            //== 第二，執行SQL指令。
            //dr = cmd.ExecuteReader();   //---- 這時候執行SQL指令，取出資料

            //==第三，自由發揮，把執行後的結果呈現到畫面上。
            Label2.Text = cmd.ExecuteScalar().ToString();

            Label1.Text = System.DateTime.Now.ToLongTimeString();
        }
        catch (Exception ex)
        {  //---- 如果程式有錯誤或是例外狀況，將執行這一段
            //---- 參考資料:  http://www.dotblogs.com.tw/billchung/archive/2009/03/31/7779.aspx
            Response.Write("<b>Error Message----  </b>" + ex.ToString() + "<hr />");
            throw ex;
        }
        finally
        {
            // == 第四，釋放資源、關閉資料庫的連結。
            //---- Always call Close when done reading.
            if (dr != null)
            {
                cmd.Cancel();
                //----關閉DataReader之前，一定要先「取消」SqlCommand
                //參考資料： http://blog.darkthread.net/blogs/darkthreadtw/archive/2007/04/23/737.aspx
                dr.Close();
            }

            //---- Close the connection when done with it.
            if (Conn.State == ConnectionState.Open)
            {
                Conn.Close();
                Conn.Dispose(); //---- 一開始宣告有用到 New的,最後必須以 .Dispose()結束
            }
            GridView1.Dispose();
        }
    }


    //***********************************************************************************

    protected void Button1_Click(object sender, EventArgs e)
    {
        DetailsView1.ChangeMode(DetailsViewMode.Insert);
        //DetailsView1.DefaultMode = DetailsViewMode.Insert;
    }


    protected void SqlDataSource2_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {
        //-- 新增成功後，DetailsView變換畫面，給使用者一個提醒（表示新增已經成功）
        DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
        //DetailsView1.DefaultMode = DetailsViewMode.ReadOnly;
    }


    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        //-- 新增成功後，DetailsView變換畫面，給使用者一個提醒（表示新增已經成功）
        DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
        //DetailsView1.DefaultMode = DetailsViewMode.ReadOnly;
    }

}