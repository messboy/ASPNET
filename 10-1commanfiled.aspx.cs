using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _10_1commanfiled : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ////使用者點選到哪一列
        //Response.Write("<br>GridView1.SelectedIndex--" + GridView1.SelectedIndex);
        //Response.Write("<br>GridView1.SelectedRow.RowIndex--" + GridView1.SelectedRow.RowIndex);

        ////使用者點到test資料表的那一筆紀錄的"主索引值"
        //Response.Write("<br>GridView1.Selectedvalue--" + GridView1.SelectedValue);
        //Response.Write("<br>GridView1.SelectedDatakey.Value--" + GridView1.SelectedDataKey.Value);

        //多個主索引薦   
        //value = values[0]
        Label1.Text = GridView1.SelectedDataKey.Values[0].ToString();
        Label2.Text = GridView1.SelectedDataKey.Values[1].ToString();
        Label3.Text = GridView1.SelectedDataKey.Value.ToString();

        Session["s_id"] = Convert.ToInt32(GridView1.SelectedDataKey.Values[0]);
        Session["s_title"] = GridView1.SelectedDataKey.Values[1].ToString();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int pk_index = Convert.ToInt32(e.CommandArgument);
        Response.Write("被點選的這一列，對應資料表的主索引建--" + GridView1.DataKeys[pk_index].Value); 

    }
}