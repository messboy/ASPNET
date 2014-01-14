using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch19_AJAX_Warning_Color : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_AJAX_Click(object sender, EventArgs e)
    {
        //-- 作者註解：
        //   您可以在這邊撰寫ADO.NET程式，新增一筆訂單。
        //   檢查庫存數量後，如果一切正常，就出現綠燈圖片（在此以綠色封面代替）。

        Image1.Visible = true;
        Image1.ImageUrl = "XP10067封面_small.jpg";

        //********************************************************************
        //-- 如何應用這個技巧？？
        //   您可以加入 if判別式，一按下 Button按鈕，判別後，立刻出現
        //   正確與否的圖片。AJAX可以「立即」出現圖片，不需要重整網頁。

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Image1.Visible = false;
        Image1.ImageUrl = "";

        Image2.Visible = false;
        Image2.ImageUrl = "";
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Image2.Visible == false)
        {
            Image2.Visible = true;
            Image2.ImageUrl = "XP10067封面_small.jpg";       
        }
        else
        {
            Image2.Visible = false;
        }
            
    }
}