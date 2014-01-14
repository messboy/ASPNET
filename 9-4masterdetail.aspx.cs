using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _9masterdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView2.DataSourceID = "SqlDataSource2";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSourceID = "SqlDataSource1";
    }
}