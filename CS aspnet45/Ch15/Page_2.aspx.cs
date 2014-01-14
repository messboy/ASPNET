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

public partial class Ch15_Page_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Calendar my_Calendar;
        my_Calendar = (Calendar)PreviousPage.FindControl("calendar1");

        Label1.Text = my_Calendar.SelectedDate.ToString();
    }
}
