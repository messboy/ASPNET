using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch19_AJAX_Search_Eng_3_Manual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //-- 利用 RegisterAsyncPostBackControl 方法，將一個控制項註冊成觸發程序。
        //-- 接著它用 Update 方法，以程式設計方式來重新整理 UpdatePanel 控制項。

        //-- 資料來源：http://msdn.microsoft.com/zh-tw/library/bb386452.aspx

        //********************************************************
        //** 寫法雷同 AJAX_Case_02_Manual.aspx。
        ScriptManager1.RegisterAsyncPostBackControl(Button1);
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        //-- 記得要修改原本的 SqlDataSource的「參數」。
        //-- 原本的參數：<asp:ControlParameter ControlID="TextBox1" PropertyName="Text" 
        //--                                                            Name="title" Type="String" />
        //-- 修改後：<asp:Parameter Name="title" Type="String" />

        SqlDataSource1.SelectParameters["title"].DefaultValue = Server.HtmlEncode(TextBox1.Text);

        //********************************************************
        //** 寫法雷同 AJAX_Case_02_Manual.aspx。
        UpdatePanel1.Update();
    }
}