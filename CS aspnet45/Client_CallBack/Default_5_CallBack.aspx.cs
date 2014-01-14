using System;
using System.Collections;

//********************************************************
using System.Collections.Specialized;  //自己寫的，ListDictionary會用到

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

public partial class Ch20_Client_CallBack_Default_5_CallBack : System.Web.UI.Page, 
    System.Web.UI.ICallbackEventHandler
//==重點========================================
// System.Web.UI.ICallbackEventHandler      //寫在 class的 { }外面，System.Web.UI.Page的後面
//因為需要接收回呼事件的任何自訂控制項，請實作 ICallbackEventHandler 介面。
{

    //-- 後置程式碼會用到的共同變數。
    protected ListDictionary catalog = null;
    protected string returnValue;

    protected void Page_Load(object sender, EventArgs e)
    {
        string cbReference = Page.ClientScript.GetCallbackEventReference(this, "arg", "ReceiveServerData", "context");
        string callbackScript;
        callbackScript = "function CallServer(arg, context)" + "{ " + cbReference + ";}";
        Page.ClientScript.RegisterClientScriptBlock(this.GetType(),"CallServer", callbackScript, true);

        catalog = new ListDictionary();
        catalog.Add("monitor，螢幕", 42);
        catalog.Add("laptop，筆記型電腦", 10);
        catalog.Add("keyboard，鍵盤", 23);
        catalog.Add("mouse，滑鼠", 17);
        catalog.Add("desktop，桌上型電腦", 37);
        catalog.Add("hadr disk，硬碟", 76);
        catalog.Add("CD-R，燒錄機", 34);
        catalog.Add("Power Supply，電源供應器", 21);

        ListBox1.DataSource = catalog;   //資料繫結
        ListBox1.DataTextField = "key";
        ListBox1.DataBind();
    }


    //  當回呼（CallBack）事件以實作 ICallbackEventHandler介面的控制項為目標時，會呼叫
    //   RaiseCallbackEvent方法以處理事件，並做為參數傳遞此事件引數，
    //   GetCallbackResult 方法會傳回「回呼的結果（CallBack Result）」。
    public void RaiseCallbackEvent(string eventArgument)
    {
        if (catalog[eventArgument] == null)
        {
            returnValue = "-1";
        }
        else
        {
            returnValue = catalog[eventArgument].ToString();
            //返回前端（Client端）的結果、回傳值
        }
    }

    public String GetCallbackResult()
    {
        return returnValue;
    }
}
