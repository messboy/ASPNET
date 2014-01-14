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

public partial class Ch15_Page_4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Page.PreviousPage != null)   // 第一種寫法
        if (!Page.IsCrossPagePostBack)    // 第二種寫法
        {
            Label1.Text = PreviousPage.my_Calendar.SelectedDate.ToString();
            //重點在於「PreviousPage」這個字！
        }
        else 
        {
            Response.Redirect("Page_3.aspx");
              //—註解：強制跳回第一支原始網頁
        }
    }
}
