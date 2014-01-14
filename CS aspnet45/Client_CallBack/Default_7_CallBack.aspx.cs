using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

//----自己寫的----
using System.Web.Configuration;
using System.Data.SqlClient;
//----自己寫的----


public partial class Ch20_Client_CallBack_Default_7_CallBack : System.Web.UI.Page,
    System.Web.UI.ICallbackEventHandler
   //==重點==================
{

    //-- 後置程式碼會用到的共同變數。
    protected string returnValue;

    protected void Page_Load(object sender, EventArgs e)
    {
        //=======下面這幾段，是固定的寫法=======================
        string cbReference = Page.ClientScript.GetCallbackEventReference(this, "arg", "ReceiveServerData", "context");

        string callbackScript = "function CallServer(arg, context)" + "{ " + cbReference + ";}";

        //-- 檢查一下 CallServer()這個JavaScript是否在Client端已經註冊了？
        if (!Page.ClientScript.IsClientScriptBlockRegistered(this.GetType(), "CallServer"))
        {
            //-- ClientScriptManager 類別是用來管理用戶端指令碼，並將它們加入至 Web 應用程式。
            //-- 參考網站 http://msdn2.microsoft.com/zh-tw/library/system.web.ui.clientscriptmanager.aspx
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "CallServer", callbackScript, true);
        }        
        //=======上面這幾段，是固定的寫法=======================
    }


    //  當回呼（CallBack）事件以實作 ICallbackEventHandler介面的控制項為目標時，會呼叫
    //   RaiseCallbackEvent方法以處理事件，並做為參數傳遞此事件引數，
    //   GetCallbackResult 方法會傳回「回呼的結果（CallBack Result）」。

    public void RaiseCallbackEvent(string u_id)   //重點！！輸入的變數名稱，記得修改～～
    {   //***************************** 
        //==== 負責進行處理的主程式！=========================
        if (u_id != null)
        {
            SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
            Conn.Open();

            SqlDataReader dr = null;
            SqlCommand cmd = new SqlCommand("select article from test where id = " + u_id, Conn);               
                dr = cmd.ExecuteReader();
                dr.Read();
                returnValue = dr["article"].ToString();   //-- 返回前端（Client端）的結果、回傳值

                if (dr != null)
                {
                    cmd.Cancel();
                    dr.Close();
                }
                if (Conn.State == ConnectionState.Open)
                {
                    Conn.Close();
                    Conn.Dispose();
                }
        }
    }

    public String GetCallbackResult()
    {
        return returnValue;
    }
}
