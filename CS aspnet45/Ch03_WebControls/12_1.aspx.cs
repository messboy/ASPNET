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

public partial class Ch03_WebControls_12_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
    {
        e.ImageUrl = "~/Ch03_WebControls/MIS2000Lab_book_image/L339.jpg";
        e.NavigateUrl = "http://www.taconet.com.tw/mis2000lab/";
        e.AlternateText = " Linux架站徹底研究";
    }
}
