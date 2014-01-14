﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

//----自己寫的（宣告）----
using System.Data.SqlClient;
//using System.Web.Configuration;
//using System.Data;   //-- DataView會用到
//----自己寫的（宣告）----

public partial class Search_Engine_3_SqlDataSource : System.Web.UI.Page
{
    protected void DBInit()
    {
        //SqlDataSource SqlDataSource1 = new SqlDataSource();
        //== 連結資料庫的連接字串 ConnectionString  ==
        //== 已經由 HTML設定畫面裡面的 SqlDataSource完成了
        //SqlDataSource1.ConnectionString = WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString;
        //== SqlDataSource精靈   自動產生的SQL指令，可以當作參考 ==
        SqlDataSource1.SelectParameters.Clear();

        //==以下是自己改寫的「多重欄位 搜尋引擎」，SQL指令的文字組合 ==
        string mySQLstr = " 1=1 ";   //請注意， 1=1後面多一個空白！

        if (TextBox1.Text != "")
        {
            mySQLstr = mySQLstr + " AND ([title] LIKE '%' + @title + '%')";
            //== 重點在此：參數必須寫在IF判別式這裡，不能一起寫在後面。==
            SqlDataSource1.SelectParameters.Add("title", TextBox1.Text);
        }
            
        if (TextBox2.Text != "")
        {
            mySQLstr = mySQLstr + " AND ([summary] LIKE '%' + @summary + '%')";
            SqlDataSource1.SelectParameters.Add("summary", TextBox2.Text);
        }

        if (TextBox3.Text != "")
        {
            mySQLstr = mySQLstr + " AND ([article] LIKE '%' + @article + '%')";
            SqlDataSource1.SelectParameters.Add("article", TextBox3.Text);
        }

        //============================================
        //== SqlDataSource1 資料庫的連接字串 ConnectionString，
        //== 已事先寫在「HTML畫面的設定」裡面 ==
        //============================================

        //== 最後，合併成完整的SQL指令（搜尋引擎～專用） ==
        SqlDataSource1.SelectCommand = "SELECT * FROM [test] WHERE " + mySQLstr;

        Response.Write("<hr>您要搜尋哪些欄位？SQL指令為  " + SqlDataSource1.SelectCommand + "<hr>");
        //== 重點在此：參數必須寫在上面的「每一個IF判別式」裡面，不能一起寫在下邊。==
        //== 否則，這裡有出現的參數，就必須有「值」，不能留白！ ==
        //SqlDataSource1.SelectParameters.Add("title", TextBox1.Text);
        //SqlDataSource1.SelectParameters.Add("summary", TextBox2.Text);
        //SqlDataSource1.SelectParameters.Add("article", TextBox3.Text);

        //== 執行SQL指令 .select() ==
        //DataView dv = (DataView)SqlDataSource1.Select(new DataSourceSelectArguments);

        //GridView1.DataSource = dv;
        //GridView1.DataBind();
        //
        //== 執行SQL指令 與 GridView1.DataBind()的部份，均已經事先寫好
        //==在「HTML畫面的設定」上，也就是下面這一行，就通通搞定了。ASP.NET 真強！
        //==<asp:GridView ID="GridView1" DataSourceID="SqlDataSource1">
        //============================================
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Convert.ToInt32(GridView1.PageIndex) != 0)
        {
            //如果不加上這行IF判別式，假設當我們正在看第四頁時，
            //又輸入新的條件，重新作搜尋。「新的」搜尋結果將會直接看見 "第四頁"！
            //如果新的搜尋只找出三頁結果，那麼GridView硬要秀出第四頁，就會出錯！
           GridView1.PageIndex = 0;
            //重新搜尋時，強制 GridView回到第一頁。
        }

        DBInit();
    }


    protected void  GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
            GridView1.PageIndex = e.NewPageIndex;

            Response.Write("目前位於第" + (Convert.ToInt32(e.NewPageIndex) + 1) + "頁<br>");
            //== 把 GridView1 的 [EnableSortingAndPagingCallBack]屬性關閉(=False)，才會執行到這一行！ ==
             
            DBInit();
    }

}
