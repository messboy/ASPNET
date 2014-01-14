using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch19_AJAX_ListView_3_AJAX_4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "my_Detail")
        {
            ListView1.SelectedIndex = -1;
            //--註解：「-1」代表離開「選取」按鈕的狀態！
        }
    }
}