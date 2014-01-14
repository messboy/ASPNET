using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch19_AJAX_AJAX_JavaScript_02 : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        //ScriptManager.RegisterStartupScript(Page, typeof(Button), "JavaScript_Sample", "window.alert(\"Hello!! Code Behind!!\")", true);

        // 如果您要註冊與部分網頁更新 [無關]的啟動指令碼，而且只要在初始網頁呈現期間註冊一次指令碼，
        // 請使用 ClientScriptManager 類別的 RegisterStartupScript 方法。
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(Page, typeof(Button), "JavaScript_Sample2", "window.alert(\"Hello!! Code Behind!!\")", true);

        //*** 參數 ***

        //  page型別：System.Web.UI.Page
        //    正在註冊用戶端指令碼區塊的頁面物件。

        //  type型別：System.Type
        //     用戶端指令碼區塊的型別。這個參數通常是使用 typeof 運算子 (C#) 或 GetType 運算子 (Visual Basic) 所指定，用以擷取註冊指令碼的控制項型別。
        //  key型別：System.String
        //     指令碼區塊的唯一識別項。請自己命名！
        //  script型別：System.String
        //     JavaScript指令碼。
        //  addScriptTags型別：System.Boolean
        //     若要使用 <script> 和 </script> 標記來匡住 JavaScript指令碼區塊，則為 true，否則為 false。
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        String JavaScript_Str = "window.alert(\"Hello!! --" + DateTime.Now.ToLongTimeString() + "--\")";

        ScriptManager.RegisterStartupScript(Page, typeof(Button), "JavaScript_Sample2", JavaScript_Str, true);
    }
}