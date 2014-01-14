using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch19_AJAX_BackHistory_02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (ScriptManager1.IsInAsyncPostBack && !ScriptManager1.IsNavigating)
        {
             ScriptManager1.AddHistoryPoint("BackHistory", TextBox1.Text);
        }
           
        Label1.Text = TextBox1.Text;
    }


    //==== 重點！！ ================================
    protected void ScriptManager1_Navigate(object sender, HistoryEventArgs e)
    {
        Label1.Text = e.State["BackHistory"].ToString();
    }
}