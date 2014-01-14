using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

///----自己寫的----
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
//----自己寫的----

public partial class Book_Sample_CaseStudy_NorthWind_04_Orders_Add_Manual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Orders_Click(object sender, EventArgs e)
    {
        //== 1.  新增一筆 Oders訂單
        SqlDataSource1_Orders.Insert();

        Panel1.Visible = false;
    }


    protected void SqlDataSource1_Orders_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {
        //== 2.  新增 Oders訂單之後，先抓住 Primary Key，以待後續使用。
        Session["myOrdersID"] = e.Command.Parameters["@get_Order_id"].Value.ToString();

        //******************************************************
        //== 3.  把剛剛新增完成的 Oders訂單內容，透過 DetailsView呈現出來（唯讀畫面）
        SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString.ToString());
        Conn.Open();

        SqlCommand cmd = new SqlCommand("SELECT * FROM [Orders] Where OrderID = " + Session["myOrdersID"].ToString(), Conn);
        SqlDataReader dr = cmd.ExecuteReader();

        DetailsView1.DataSource = dr;
        DetailsView1.DataBind();

        Panel2.Visible = true;
        DetailsView1.DefaultMode = DetailsViewMode.ReadOnly;
        //-- 新增完成後，DetailsView就變成「唯讀」模式。只能顯示資料。

        cmd.Cancel();
        dr.Close();
        Conn.Close();
        //******************************************************

        Panel3.Visible = true;
        //-- 新增完成後，開始輸入這筆訂單的「產品資訊與明細」。所以 DetailsView要出現在畫面上。
        Label4_OrderId.Text = Session["myOrdersID"].ToString();
    }


    protected void DropDownList5_ProductID_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString.ToString());
        Conn.Open();

        SqlDataReader dr = null;
        SqlCommand cmd = new SqlCommand("select UnitPrice from Products Where ProductID = " + DropDownList5_ProductID.SelectedValue, Conn);
        dr = cmd.ExecuteReader();

        dr.Read();
        Label5_UnitPrice.Text = dr["UnitPrice"].ToString();

        cmd.Cancel();
        dr.Close();
        Conn.Close();    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        //-- 每次輸入(新增)一筆產品資料與明細
        SqlDataSource3_OrderDetail.Insert();

        //-- 每次輸入一筆產品資料與明細，成功新增後，底下的 GridView就會立即更新資料。
        //-- GridView展現這筆訂單的即時狀況。
        Panel4.Visible = true;
        GridView1.DataSourceID = "SqlDataSource4_Display";
    }
}