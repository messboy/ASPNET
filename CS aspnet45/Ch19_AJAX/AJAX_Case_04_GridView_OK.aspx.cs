using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch19_AJAX_AJAX_Case_04_GridView_OK : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    //--本範例源自於微軟MSDN網站：http://msdn.microsoft.com/zh-tw/library/bb386452.aspx


    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //-- GridView.RowDataBound 事件
        //-- 資料列繫結至 GridView 控制項中的資料時發生。
        //-- 使用 RowDataBound 事件，先修改資料來源中某個欄位的值，再顯示到 GridView 控制項。

        //-- 參考資料：http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.gridview.rowdatabound.aspx

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            SqlDataSource SQLds = (SqlDataSource)(e.Row.FindControl("SqlDataSource2"));
            //-- 先抓到 GridView1每一列 DataRow裡面的 SqlDataSource2控制項

            System.Data.DataRowView DRV = (System.Data.DataRowView)(e.Row.DataItem);

            SQLds.SelectParameters["t_id"].DefaultValue = DRV["id"].ToString();
            //-- DRV("id")的意思： 
            //--           外部的（父）UpdatePanel的 GridView1，目前這一列資料的「主索引鍵（id欄位）」是幾號？
            //-- 把上一步驟抓到的「主索引鍵」，交給 SqlDataSource2去執行。
        }

    }
}