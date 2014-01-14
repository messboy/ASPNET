using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch19_AJAX_UpdateProgress : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(5000);    //-- 沈睡五秒鐘

        Label1.Text = "UpdatePanel 內部時間 -- " + DateTime.Now.ToString();
    }
}