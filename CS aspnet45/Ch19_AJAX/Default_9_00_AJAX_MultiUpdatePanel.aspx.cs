using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch19_AJAX_Default_9_00_AJAX_MultiUpdatePanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        int i = Convert.ToInt32(Label1.Text) + 1;
        Label1.Text = i.ToString();
    }
    protected void Timer2_Tick(object sender, EventArgs e)
    {
        int i = Convert.ToInt32(Label2.Text) + 1;
        Label2.Text = i.ToString();
    }
    protected void Timer3_Tick(object sender, EventArgs e)
    {
        int i = Convert.ToInt32(Label3.Text) + 1;
        Label3.Text = i.ToString();
    }
}