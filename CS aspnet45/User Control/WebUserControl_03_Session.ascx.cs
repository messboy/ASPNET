using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_User_Control_WebUserControl_03_Session : System.Web.UI.UserControl
{

    //== 預設值 ==
    private Boolean m_AllowPaging = true;
    private int m_PageSize = 5;

    //==公開屬性 ==
    public Boolean YesOrNo_AllowPaging
    {
        get { return m_AllowPaging; }
        set { m_AllowPaging = value; }
    }
    public int NumOfPageSize
    {
        get { return m_PageSize; }
        set { m_PageSize = value; }
    }

    //== 重點！！必須在 Page_PreRender這個事件才行！！ ==
    protected void Page_PreRender(object sender, EventArgs e)
    {
        //== 以下程式，解決了上一支程式的缺點。GridView1.PageSize = NumOfPageSize
        if (Session["NumOfPageSize"] == null)
        {
            GridView1.PageSize = NumOfPageSize;
        }
        else
        {
            GridView1.PageSize = Convert.ToInt32(Session["NumOfPageSize"]);
        }
        
        GridView1.AllowPaging = YesOrNo_AllowPaging;
    }


    protected void Page_Load(object sender, EventArgs e)
    {

    }
}