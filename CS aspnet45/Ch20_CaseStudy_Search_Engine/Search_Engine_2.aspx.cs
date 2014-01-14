using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

//----自己寫的----
using System.Web.Configuration;
using System.Data.SqlClient;
//----自己寫的----


public partial class Search_Engine_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        DBInit();
    }


    //====自己手寫的程式碼， DataAdapter / DataSet ====(start)
    protected void DBInit()
    {
        //----上面已經事先寫好 using System.Web.Configuration ----
        //----連結資料庫的另一種寫法----
        SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
        SqlDataAdapter myAdapter = null;

        try
        {
            //Conn.Open();  //---- 這一行註解掉，可以不用寫，DataAdapter會自動開啟

            //--作者註解：SqlDataAdapter的 .Fill()方法使用 SQL指令的SELECT，從資料來源擷取資料。
            //   此時，DbConnection物件（如Conn）必須是有效的，但不需要是開啟的
            //  （因為DataAdapter會自動開啟或關閉連結）。
            //   如果在呼叫 .Fill ()方法之前關閉 IDbConnection，它會先開啟連接以擷取資料，
            //   然後再關閉連接。如果在呼叫 .Fill ()方法之前開啟連接，它會保持開啟狀態。
            //   因此，我們使用SqlDataAdapter的時候，不需要寫程式去控制Conn.Open()與 Conn.Close()。


            //=====重 點=====(start)
            //============= 方法一 ===========(start)
            //string mySearchString = "Select id,test_time,title,summary,author From test Where 1=1 ";

            //if (TextBox1.Text != "")
            //{
            //    mySearchString += " and title like '%" + TextBox1.Text + "%'";
            //}

            //if (TextBox2.Text != "")
            //{
            //    mySearchString += " and summary like '%" + TextBox2.Text + "%'";
            //}
            //============= 方法一 ===========(end)

            //*** 方法二 ********************************************(start)
            //-- 避免出現 Where 1=1的條件，增加SQL指令執行上的負擔。
            String mySearchString = "Select id,test_time,title,summary,author From test ";

            String myWhereString = null;
            int hasAND = 0;

            String TB1 = TextBox1.Text.Trim();  //--去除字串「前後」的空白。
            if (TB1.Length > 0)
            {
                myWhereString = " title like '%" + TB1 + "%'";
                hasAND++;
            }

            String TB2 = TextBox2.Text.Trim();  //--去除字串「前後」的空白。
            if (TB2.Length > 0)  //-- 要不要加上 AND字樣？
            {
                if (hasAND > 0)
                {
                    myWhereString = " summary like '%" + TB2 + "%'";
                    myWhereString = myWhereString + " And summary like '%" + TB2 + "%'";
                }
                else
                {
                    myWhereString = " summary like '%" + TB2 + "%'";
                }
            }

            //--方法二 的 重點！
            String WhereStr = myWhereString.Trim();  //--去除字串「前後」的空白。
            if (WhereStr.Length > 0)
            {    //-- 有條件子句的話，才加上「Where」字樣。
                mySearchString = mySearchString + " Where " + myWhereString;
            }
            //*** 方法二 ********************************************(end)

            Response.Write(mySearchString.ToString() + "<hr />"); 
            //=====重 點=====(end)


            myAdapter = new SqlDataAdapter(mySearchString, Conn);
            DataSet ds = new DataSet();
            myAdapter.Fill(ds, "test");     //把資料庫撈出來的資料，填入DataSet裡面。
            // DataSet是由許多 DataTable組成的，我們目前只放進一個名為 test的 DataTable而已。

            GridView1.DataSource = ds.Tables["test"];
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("<hr />" + ex.ToString() + "<hr />");
        }
        //finally
        //{   
        //    if (Conn.State == ConnectionState.Open) 
        //    {
        //        Conn.Close();
        //        Conn.Dispose();
        //    }  //使用SqlDataAdapter的時候，不需要寫程式去控制Conn.Open()與 Conn.Close()。
        //}
        //====自己手寫的程式碼， DataAdapter / DataSet ====(end)
    }
}
