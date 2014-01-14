using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch19_AJAX_GridView_Template_Delete_PopUp_CodeBehind : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //-- 請參考微軟MSDN網站的說明：
        //   參考網址  http://msdn2.microsoft.com/zh-tw/library/system.web.ui.webcontrols.datacontrolrowtype(VS.80).aspx
        
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Button d_button;
            d_button = (Button)e.Row.Cells[0].FindControl("Button1");

            // 正確執行 ---- d_button.OnClientClick = "javascript:return confirm('再一次確認，您確定要對 id編號-- " & e.Row.Cells(1).Text & " 的資料，進行處置動作嗎？')"
            d_button.Attributes.Add("onclick", "javascript:if (confirm('再一次確認，您確定要刪除嗎？')){return true;} else {return false;}");

            //===============================================================
            // Error錯誤寫法 ----- d_button.Attributes.Add("onclick", "if(!window.confirm('確定要刪除嗎？')) return;")
            //===============================================================
        }
    }
}