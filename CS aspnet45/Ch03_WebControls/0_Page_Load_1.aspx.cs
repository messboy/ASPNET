using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch03_WebControls_MIS2000Lab_book_image_0_Page_Load_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // 務必把 Label1的文字（Text屬性）預設為零。

        int i = Convert.ToInt32(Label1.Text) + 1;
        Label1.Text = i.ToString();
    }
}