using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using System.Text;  //自己宣告NameSpace，給 StringBuilder用的！


public partial class Ch20_Client_CallBack_Default_Multi_CallBack : System.Web.UI.Page,
    System.Web.UI.ICallbackEventHandler
//==重點==================
{

    //-- 後置程式碼會用到的共同變數。返回前端（Client端）的結果、回傳值
    public int returnValue = 0;   

    protected void Page_Load(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("全部都是 CallBack來處理，沒有PostBack（整頁重整）的狀況");

        if (Page.IsPostBack)
        {
            //--註解：「不是」第一次執行本頁面，才稱為PostBack。
            sb.Append("A page postback has occurred.    「不是」第一次執行本頁面，才稱為PostBack。");
        }

        MyLabel.Text = sb.ToString();

        ClientScriptManager cs = Page.ClientScript;

        StringBuilder context1 = new StringBuilder();   //撰寫一個function
        context1.Append("function ReceiveServerData1(arg, context)");
        context1.Append("{");
        context1.Append("   Message1.innerText =  arg;");
        context1.Append("   value1 = arg;");
        context1.Append("}");

                //=======下面這幾段，是固定的寫法=======================
        // –註解：定義CallBack 的參考（references）
        string cbReference1 = cs.GetCallbackEventReference(this, "arg", "ReceiveServerData1", context1.ToString());
        string cbReference2 = cs.GetCallbackEventReference("'" + Page.UniqueID + "'", "arg", "ReceiveServerData2", "", "ProcessCallBackError", false);
        //–註解：如果 RaiseCallbackEvent方法傳回錯誤，便會呼叫 ProcessCallBackError用戶端函式。

        string callbackScript1 = "function CallServer1(arg, context) {" + cbReference1 + "; }";
        string callbackScript2 = "function CallServer2(arg, context) {" + cbReference2 + "; }";

        // –註解：註冊會呼叫Server端進行處理的 （Client端）JavaScript程式區塊。
        cs.RegisterClientScriptBlock(this.GetType(), "CallServer1", callbackScript1, true);
        cs.RegisterClientScriptBlock(this.GetType(), "CallServer2", callbackScript2, true);
        //=======上面這幾段，是固定的寫法=======================
    }


    //  當回呼（CallBack）事件以實作 ICallbackEventHandler介面的控制項為目標時，會呼叫
    //   RaiseCallbackEvent方法以處理事件，並做為參數傳遞此事件引數，
    //   GetCallbackResult 方法會傳回「回呼的結果（CallBack Result）」。
    public void RaiseCallbackEvent(string eventArgument)  
    { 
        //==== 負責進行處理的主程式！=========================

        returnValue = Convert.ToInt32(eventArgument) + 1;
        //--註解：將傳遞給它的值，進行累加的計算。
    }

    public String GetCallbackResult()
    {
        return returnValue.ToString();
        //--註解：將累加的值，以字串傳回
    }
}
