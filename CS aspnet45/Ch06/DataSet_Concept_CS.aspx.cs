﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//----自己（宣告）寫的----
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
//----自己（宣告）寫的----


public partial class _Book_New_Samples_DB_DataSet_DataSet_Concept_CS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        //== DataSet的資料新增，可以參考我寫的文章：
        //== http://www.dotblogs.com.tw/mis2000lab/archive/2008/12/15/ado.net_dataset_insertcommand_1215.aspx

        //************************
        //****  DataSet  /  資料新增 ****
        //************************

        //****(1). 將 test資料庫的紀錄，放進 DataSet裡面。
        SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString.ToString());
        DataSet ds  = new DataSet();

        SqlDataAdapter u_Adapter = new SqlDataAdapter();
        u_Adapter.SelectCommand = new SqlCommand("Select top 5 * from test order by id DESC", Conn);
        u_Adapter.Fill(ds, "test");  //---- 這時候執行SQL指令。取出資料，放進 DataSet。

        GridView2.DataSource = ds;
        GridView2.DataBind();

        //****(2). 新增一筆紀錄（一列資料列）到 DataSet裡面。
        DataRow new_row =  ds.Tables["test"].NewRow();
        //-- 手動新增一行 DataRow
        new_row["test_time"] = DateTime.Now.ToShortDateString();
        new_row["class"] = "科技，教育";
        new_row["title"] = "DataSet  /  資料新增 #333";
        new_row["summary"] = "摘要：DataSet  /  資料新增 #333";
        new_row["article"] = "文章內容：DataSet  /  資料新增 #333";
        new_row["author"] = "作者：MIS2000 Lab.";

        ds.Tables["test"].Rows.Add(new_row);  //--將新增的一列 DataRow加入 DataSet裡面

        GridView3.DataSource = ds;
        GridView3.DataBind();

        //****(3). DataSet裡面，新增的一筆紀錄（一列資料列）。真正回寫到資料庫裡面。。
        //==事先寫好 InsertCommand ===================================
        u_Adapter.InsertCommand = new SqlCommand("INSERT INTO [test] ([test_time], [class], [title], [summary], [article], [author]) VALUES (getdate(), @class, @title, @summary, @article, @author)", Conn);
        //-- InsertCommand 參數 --(start)

        u_Adapter.InsertCommand.Parameters.Add("@test_time", SqlDbType.DateTime, 10);
        u_Adapter.InsertCommand.Parameters["@test_time"].Value = DateTime.Now.ToShortDateString();

        u_Adapter.InsertCommand.Parameters.Add("@class", SqlDbType.NVarChar, 50);
        u_Adapter.InsertCommand.Parameters["@class"].Value = "科技，教育";

        u_Adapter.InsertCommand.Parameters.Add("@title", SqlDbType.NVarChar, 100);
        u_Adapter.InsertCommand.Parameters["@title"].Value = "DataSet  /  資料新增 #333";

        u_Adapter.InsertCommand.Parameters.Add("@summary", SqlDbType.NVarChar, 250);
        u_Adapter.InsertCommand.Parameters["@summary"].Value = "摘要：DataSet  /  資料新增 #333";

        u_Adapter.InsertCommand.Parameters.Add("@article", SqlDbType.NVarChar, 16);
        u_Adapter.InsertCommand.Parameters["@article"].Value = "文章內容：DataSet  /  資料新增 #333";

        u_Adapter.InsertCommand.Parameters.Add("@author", SqlDbType.NVarChar, 100);
        u_Adapter.InsertCommand.Parameters["@author"].Value = "作者：MIS2000 Lab.";
        //-- InsertCommand 參數 --(end)
        //=====================================================

        u_Adapter.Update(ds, "test");
        //---- 這時候執行SQL指令。把 DataSet裡面的新資料，回寫到資料庫！
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString.ToString());
        DataSet ds  = new DataSet();

        SqlDataAdapter u_Adapter = new SqlDataAdapter();
        u_Adapter.SelectCommand = new SqlCommand("Select top 5 * from test order by id DESC", Conn);
        u_Adapter.Fill(ds, "test");  //---- 這時候執行SQL指令。取出資料，放進 DataSet。

        GridView4.DataSource = ds;
        GridView4.DataBind();
    }
}