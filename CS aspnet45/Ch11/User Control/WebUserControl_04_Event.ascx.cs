using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_User_Control_WebUserControl_04_Event : System.Web.UI.UserControl
{

    //=======================================================
    //== 委派兩個事件。 ==
    //==    如此一來，ASP.NET網頁引用這個UC的時候，就能使用這個UC的兩個事件。
    //=======================================================

    public delegate void EditRecordHandler(object sender, EventArgs e);
    public event EditRecordHandler mis2000lab_EditRecord;   //--事件(1)

    public delegate void FinishedEditRecordHandler(object sender, EventArgs e);
    public event FinishedEditRecordHandler mis2000lab_FinishedEditRecord;   //--事件(2)


    protected virtual void OnEditRecord(EventArgs e)   //--寫在 .aspx網頁上，被觸發的「方法」！
    {
        if (mis2000lab_EditRecord != null)
        {
            mis2000lab_EditRecord(this, e);   //--觸發此OnEditRecord「方法」，會執行 mis2000lab_EditRecord事件！
        }
    }

    protected virtual void OnFinishedEditRecord(EventArgs e)   //--寫在 .aspx網頁上，被觸發的「方法」！
    {
        if (mis2000lab_FinishedEditRecord != null)
        {
            mis2000lab_FinishedEditRecord(this, e);
        }
    }
    //=======================================================



    protected void Page_Load(object sender, EventArgs e)
    {

    }
}