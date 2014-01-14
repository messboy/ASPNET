using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//----自己寫的（宣告）----
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
//----自己寫的（宣告）----


public partial class Book_Sample_Ch19_AJAX_2_TextBox_Search_AJAX : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection();
        //----上面已經事先寫好 using System.Web.Configuration ----
        Conn.ConnectionString = WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString;

        SqlCommand cmd = new SqlCommand("select title from test where id = " + TextBox1.Text, Conn);

        try     //==== 以下程式，只放「執行期間」的指令！=====================
        {
            Conn.Open();   //---- 這時候才連結DB

            //---- 這時候執行SQL指令，取出資料。只有撈出單一個欄位，用這方法最快
            if (cmd.ExecuteScalar() == null)
            {
                TextBox2.Text = "查無資料！";
            }
            else
            {
                TextBox2.Text = (String)cmd.ExecuteScalar();
            }
        }
        catch (Exception ex)  //---- 如果程式有錯誤或是例外狀況，將執行這一段
        {
            Response.Write("<b>Error Message----  </b>" + ex.ToString() + "<HR/>");
        }
        finally
        {
            cmd.Cancel();
            //----關閉DataReader之前，一定要先「取消」SqlCommand
            //參考資料： http://blog.darkthread.net/blogs/darkthreadtw/archive/2007/04/23/737.aspx

            if (Conn.State == ConnectionState.Open)
            {
                Conn.Close();
                Conn.Dispose();
            }
        }
    }
}