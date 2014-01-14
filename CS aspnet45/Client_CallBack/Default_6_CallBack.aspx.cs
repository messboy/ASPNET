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

public partial class Ch20_Client_CallBack_Default_6_CallBack : System.Web.UI.Page,
    System.Web.UI.ICallbackEventHandler
//==重點========================================
// System.Web.UI.ICallbackEventHandler      //寫在 class的 { }外面，System.Web.UI.Page的後面
//因為需要接收回呼事件的任何自訂控制項，請實作 ICallbackEventHandler 介面。
{

    //-- 後置程式碼會用到的共同變數。
    protected string returnValue;

    protected void Page_Load(object sender, EventArgs e)
    {
        //==只把前端的JavaScript函式--My_RND填入下面的程式碼，就完成了！==
        //=======下面這幾段，是固定的寫法=======================
        string cbReference = Page.ClientScript.GetCallbackEventReference(this, "arg", "ReceiveServerData", "context");

        string callbackScript = "function CallServer(arg, context)" + "{ " + cbReference + ";}";  
        //function My_Time() 裡面是空的，因為前端沒有傳遞東西過來。

        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "CallServer", callbackScript, true);
        //=======上面這兩段，是固定的寫法=======================
    }


    //  當回呼（CallBack）事件以實作 ICallbackEventHandler介面的控制項為目標時，會呼叫
    //   RaiseCallbackEvent方法以處理事件，並做為參數傳遞此事件引數，
    //   GetCallbackResult 方法會傳回「回呼的結果（CallBack Result）」。
    public void RaiseCallbackEvent(string eventArgument)
    {       //==== 負責進行處理的主程式！=========================
            returnValue = DateTime.Now.ToLongTimeString();
            //返回前端（Client端）的結果、回傳值
    }

    public String GetCallbackResult()
    {
        return returnValue;
    }
}
