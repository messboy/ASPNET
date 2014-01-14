using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_User_Control_WebUserControl_02_Error : System.Web.UI.UserControl
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
        GridView1.PageSize = NumOfPageSize;
        GridView1.AllowPaging = YesOrNo_AllowPaging;
    }


    protected void Page_Load(object sender, EventArgs e)
    {

    }
}