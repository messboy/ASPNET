using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch19_AJAX_AJAX_ResponseWrite_01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(Button1, typeof(Button), "JavaScript_Sample1", "window.alert(\"Hello!! Code Behind!!\")", true);
   
        //*** 參數 ***
        //  control型別：System.Web.UI.Control
        //     正在註冊用戶端指令碼（JavaScript）區塊的控制項。
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
        String JavaScript_Str = "window.alert(\"Hello!! --" + DateTime.Now.ToLongTimeString()+ "--\")";
        //失敗！！  ----  String JavaScript_Str = "return confirm(\"再一次確認，您要刪除這筆資料嗎？\")";
        //失敗！！  ----  String JavaScript_Str = "if (confirm(\"再一次確認，您確定要刪除嗎？\")){return true;} else {return false;}";

        ScriptManager.RegisterStartupScript(Button2, typeof(Button), "JavaScript_Sample1", JavaScript_Str, true);
    }
}