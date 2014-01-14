using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//----自己寫的（宣告）----
using System;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
//----自己寫的（宣告）----



public partial class Book_Sample_CaseStudy_Street_Address_Test_01_Manual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //----上面已經事先寫好 Imports System.Web.Configuration ----
        //---- (連結資料庫)----
        SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString_MARS"].ConnectionString.ToString());

        SqlDataReader dr = null;
        SqlCommand cmd= new SqlCommand("Select city_name From Address_2 Group by city_name", Conn);

        try     //==== 以下程式，只放「執行期間」的指令！=====================
        {
            Conn.Open();   //---- 這時候才連結DB

            dr = cmd.ExecuteReader();   //---- 這時候執行SQL指令，取出資料

            int i = 1;
            Label  myLabel ;

            while(dr.Read())
            {
                myLabel = (Label)Page.FindControl("Label" + i);

                myLabel.Text = "<table><tr><td width=\"100\">" + dr[0].ToString() + "</a></td></tr>";

                //== 雙重迴圈 ==
                SqlDataReader dr1= null;
               SqlCommand cmd1 = new SqlCommand("Select district_name From Address_2 Where city_name = '" + dr[0].ToString() + "'", Conn);
                dr1 = cmd1.ExecuteReader();
                while(dr1.Read())
                {
                    myLabel.Text += "<tr><td width=\"100\"><a href=\"超連結.aspx\">" + dr1[0] + "</a></td></tr>";
                }
                cmd1.Cancel();
                dr1.Close();

                myLabel.Text += "</table>";
                i++;
            }

        }
        catch (Exception ex)  //---- 如果程式有錯誤或是例外狀況，將執行這一段
        {
            Response.Write("<b>Error Message----  </b>" + ex.ToString() + "<hr />");
        }
        finally
        {
            if (dr != null)
            {
                cmd.Cancel();
                //----關閉DataReader之前，一定要先「取消」SqlCommand
                //參考資料： http://blog.darkthread.net/blogs/darkthreadtw/archive/2007/04/23/737.aspx
                dr.Close();
            }
            if (Conn.State == ConnectionState.Open) 
            {
                Conn.Close();
                Conn.Dispose();  //---- 一開始宣告有用到 New的,最後必須以 .Dispose()結束
            }
        }

    }
}