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


public partial class Book_Sample_CaseStudy_Search_Engine_Search_Engine_2_Manual_Parameter : System.Web.UI.Page
{
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
        //----上面已經事先寫好 using System.Web.Configuration ----
        //----連結資料庫的另一種寫法----
        SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
        
        try
        {
            //Conn.Open();  //---- 這一行註解掉，可以不用寫，DataAdapter會自動開啟

            //作者註解：SqlDataAdapter的 .Fill()方法使用 SQL指令的SELECT，從資料來源擷取資料。
            //   此時，DbConnection物件（如Conn）必須是有效的，但不需要是開啟的
            //  （因為DataAdapter會自動開啟或關閉連結）。
            //   如果在呼叫 .Fill ()方法之前關閉 IDbConnection，它會先開啟連接以擷取資料，
            //   然後再關閉連接。如果在呼叫 .Fill ()方法之前開啟連接，它會保持開啟狀態。
            //   因此，我們使用SqlDataAdapter的時候，不需要寫程式去控制Conn.Open()與 Conn.Close()。


            //=====重 點=====(start)
            string mySearchString = "Select id,test_time,title,summary,author From test Where 1=1 ";
            
            //=======================================================
            //== 參考資料：http://msdn.microsoft.com/zh-tw/library/bbw6zyha(v=vs.80).aspx
            //== 方法一 ==
            //=========
            //SqlDataAdapter myAdapter = new SqlDataAdapter();  //-- 務必先有 DataAdapter才行！

            //SqlCommand cmd = new SqlCommand();

            //if (TextBox1.Text != "")  {
            //    mySearchString += " and ([title] LIKE '%' + @title + '%')";
            //    cmd.Parameters.Add("@title", SqlDbType.VarChar, 120);
            //    cmd.Parameters["@title"].Value = TextBox1.Text;
            //}
            //if (TextBox2.Text != "")  {
            //    mySearchString += " and ([summary] LIKE '%' + @summary + '%')";
            //    cmd.Parameters.Add("@summary", SqlDbType.VarChar, 200);
            //    cmd.Parameters["@summary"].Value = TextBox2.Text;
            //}
            
            //cmd.CommandText = mySearchString;
            //cmd.Connection = Conn;

            //myAdapter.SelectCommand = cmd;   //****** 重  點！！******

            //DataSet ds = new DataSet();
            //myAdapter.Fill(ds, "test");     //把資料庫撈出來的資料，填入DataSet裡面。
            // DataSet是由許多 DataTable組成的，我們目前只放進一個名為 test的 DataTable而已。


            //=======================================================
            //== 方法二 ==
            //=========
            if (TextBox1.Text != "")  {
                mySearchString += " and ([title] LIKE '%' + @title + '%')";
            }

            if (TextBox2.Text != "")  {
                mySearchString += " and ([summary] LIKE '%' + @summary + '%')";
            }
            //--------------------------------------------------------------------------
            SqlDataAdapter myAdapter = new SqlDataAdapter(mySearchString, Conn);
            //== 參數必須在執行SQL指令的時候，寫在下方等待呼叫。不然程式會出錯。
            //--------------------------------------------------------------------------
            if (TextBox1.Text != "")  {
                myAdapter.SelectCommand.Parameters.Add("@title", SqlDbType.VarChar, 120);
                myAdapter.SelectCommand.Parameters["@title"].Value = TextBox1.Text;
            }
            if (TextBox2.Text != "")  {
                myAdapter.SelectCommand.Parameters.Add("@summary", SqlDbType.VarChar, 200);
                myAdapter.SelectCommand.Parameters["@summary"].Value = TextBox2.Text;
            }

            DataSet ds = new DataSet();
            myAdapter.Fill(ds, "test");     //把資料庫撈出來的資料，填入DataSet裡面。
            // DataSet是由許多 DataTable組成的，我們目前只放進一個名為 test的 DataTable而已。


            //=======================================================
            Response.Write(mySearchString.ToString() + "<hr />");

            GridView1.DataSource = ds.Tables["test"];
            GridView1.DataBind();
        }
        catch (Exception ex)  {
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
}