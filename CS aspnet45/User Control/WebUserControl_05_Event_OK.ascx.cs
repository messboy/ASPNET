using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_User_Control_WebUserControl_05_Event_OK : System.Web.UI.UserControl
{

    //=======================================================
    //== 委派兩個事件。 ==
    //==    如此一來，ASP.NET網頁引用這個UC的時候，就能使用這個UC的兩個事件。
    //=======================================================

    public delegate void EditRecordHandler(object sender, mis2000lab_EventArgs e);  //** 第二個參數，修正過！
    public event EditRecordHandler mis2000lab_EditRecord;   //--事件(1)

    public delegate void FinishedEditRecordHandler(object sender, EventArgs e);
    public event FinishedEditRecordHandler mis2000lab_FinishedEditRecord;   //--事件(2)


    protected virtual void OnEditRecord(mis2000lab_EventArgs e)     //** 第二個參數，修正過！
    {   //--寫在 .aspx網頁上，被觸發的「方法(1)」！
        if (mis2000lab_EditRecord != null)  {
            mis2000lab_EditRecord(this, e);   //--觸發此OnEditRecord「方法」，會執行 mis2000lab_EditRecord事件！
        }
    }

    protected virtual void OnFinishedEditRecord(EventArgs e)
    {   //--寫在 .aspx網頁上，被觸發的「方法(2)」！
        if (mis2000lab_FinishedEditRecord != null)  {
            mis2000lab_FinishedEditRecord(this, e);
        }
    }
    //=======================================================


    //*********************************
    //**  自訂EventArgs **
    public class mis2000lab_EventArgs : EventArgs
    {
        private string m_TestString = "<font color=red>UC裡面的預設值！</font>";

        public string TestString
        {
            get { return m_TestString; }
        }

        public mis2000lab_EventArgs(string m_TestString)
        {   //--與 Class同名。
            //-- 類似VB語法 Class 的 Sub New()
            this.m_TestString = TestString;
        }
    }
    
    
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;

        //**********************************
        mis2000lab_EventArgs cre = new mis2000lab_EventArgs("<font color=darkgreen>UC裡面的 GridView1_RowEditing事件</font>");

        OnEditRecord(cre);   //** 重點！！ **
    }
}