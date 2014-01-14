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


public partial class Book_Sample_CaseStudy_Search_Engine_Search_Engine_2_Manual_Parameter_function : System.Web.UI.Page
{

    //***************************************************
    SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
    SqlDataAdapter myAdapter = new SqlDataAdapter();  //-- 務必先有 DataAdapter才行！
    SqlCommand cmd = new SqlCommand();

    string mySearchString = "Select id,test_time,title,summary,author From test Where 1=1 ";
    //***************************************************


    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        DBInit();
    }


    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //---- 分 頁 ----
        GridView1.PageIndex = e.NewPageIndex;
        DBInit();
    }


    //====自己手寫的程式碼， DataAdapter / DataSet ====(start)
    protected void DBInit()
    {
        try
        {  //=======================================================
            //== 參考資料：http://msdn.microsoft.com/zh-tw/library/bbw6zyha(v=vs.80).aspx
            //== 方法一 ==
            //=========                    
            if (TextBox1.Text != "")  {
                mySearchString += Generate_SQL_Where("title", SqlDbType.VarChar, 120, TextBox1.Text);
                //-- (1).自己寫的 function，用來組合 SQL指令的「Where子句」、「參數」。
            }

            if (TextBox2.Text != "")  {
                mySearchString += Generate_SQL_Where("summary", SqlDbType.VarChar, 200, TextBox2.Text);
                //-- (1).自己寫的 function，用來組合 SQL指令的「Where子句」、「參數」。
            }
            //=======================================================
            Response.Write(mySearchString.ToString() + "<hr />");

            GridView1.DataSource = Generate_DataSet(mySearchString);  //-- (2).自己寫的 function，用來執行SQL指令(DataAdapter)，傳回DataSet。
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("<HR />" + ex.ToString() + "<HR />");
        }
        //finally  {   
        //    if (Conn.State == ConnectionState.Open)   {
        //        Conn.Close();
        //        Conn.Dispose();
        //    }   //使用SqlDataAdapter的時候，不需要寫程式去控制Conn.Open()與 Conn.Close()。
        //}
        //====自己手寫的程式碼， DataAdapter / DataSet ====(end)
    }


    //****************************************************************
    //*** (1). 自己寫的 function ***
    protected String Generate_SQL_Where(String u_CloumnName, SqlDbType u_dbType, int u_Int, String u_Input)
    {
        String WhereStr = " and ([" + u_CloumnName + "] LIKE '%' + @" + u_CloumnName + " + '%')";
        //== SQL指令的寫法很特別！！==
        //-- 輸入欄位名稱，拼湊成這樣的 Where字串。例如： " and ([summary] LIKE '%' + @summary + '%')"

        String cName =  "@"+u_CloumnName;
        cmd.Parameters.Add(cName, u_dbType, u_Int);
        cmd.Parameters["@" + u_CloumnName].Value = u_Input;

        //== 希望組合成下面的參數。
        // cmd.Parameters.Add("@title", SqlDbType.VarChar, 120);
        // cmd.Parameters["@title"].Value = TextBox1.Text;
        return WhereStr;
    }


    //*** (2). 自己寫的 function，用來執行SQL指令(DataAdapter)，傳回DataSet。
    protected DataSet Generate_DataSet(String SQLstr)
    {
        cmd.CommandText = mySearchString;
        cmd.Connection = Conn;

        myAdapter.SelectCommand = cmd;

        DataSet ds = new DataSet();
        myAdapter.Fill(ds, "test");     // 執行SQL指令。把資料庫撈出來的資料，填入DataSet裡面。
        // DataSet是由許多 DataTable組成的，我們目前只放進一個名為 test的 DataTable而已。

        return ds;
    }

}