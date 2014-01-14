using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//----自己寫的 （宣告）----
using System.Data;   //--DataView會用到
using System.Data.SqlClient;
//----自己寫的 （宣告）----


public partial class Book_Sample_CaseStudy_Search_Engine_Search_DataSet_2_Manual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)  {
            DBInit();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DBInit();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        int j = (int)e.NewPageIndex;
        Response.Write("目前位於第" + (j + 1) + "頁<br>");
        //== 把 GridView1 的 [EnableSortingAndPagingCallBack]屬性關閉(=False)，才會執行到這一行！ ==

        DBInit();
    }


    //====自己手寫的程式碼， SqlDataSource ====(start)
    protected void DBInit()
    {
        SqlDataSource  SqlDataSource1 = new SqlDataSource();
        //== 連結資料庫的連接字串 ConnectionString  ==
        SqlDataSource1.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString;

        SqlDataSource1.SelectCommand = "SELECT * FROM [test]";
        SqlDataSource1.FilterExpression = "title like '%{0}%'";
        SqlDataSource1.FilterParameters.Add("newparameter1", TextBox1.Text);

        DataSourceSelectArguments args = new DataSourceSelectArguments();
        //== DataSourceSelectArguments 提供一項機制，讓資料繫結控制項於擷取資料時，用來向資料來源控制項要求資料相關的作業。
         
        //== 執行SQL指令 .select() ==
        DataView dv = (DataView)SqlDataSource1.Select(args);

        GridView1.DataSource = dv;
        GridView1.DataBind();
        //===================
    }
    //====自己手寫的程式碼， SqlDataSource====(end)
}