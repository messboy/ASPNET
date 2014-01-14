using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch19_AJAX_AJAX_Case_02_Manual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //-- 利用 RegisterAsyncPostBackControl 方法，將一個控制項註冊成觸發程序。
        //-- 接著它用 Update 方法，以程式設計方式來重新整理 UpdatePanel 控制項。

        //-- 資料來源：http://msdn.microsoft.com/zh-tw/library/bb386452.aspx

        ScriptManager1.RegisterAsyncPostBackControl(Button1);
        ScriptManager1.RegisterAsyncPostBackControl(Button2);

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        UpdatePanel2.Update();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        UpdatePanel1.Update();
    }
}