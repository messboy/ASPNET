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

public partial class Ch02_10 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //註解：判別「使用者輸入的值」是否大於10？

        if (Convert.ToInt32(Request["u_number"]) > 10)
        {
            Response.Write("恭喜！您輸入的值，大於10喔！");
        }
        else
        {
            //註解：「不大於10」代表：使用者輸入的值，一定是「小於」或「等於」10，
            //     我們只需再利用一次 if判別式，就能正確得到答案了。

              if (Convert.ToInt32(Request["u_number"]) == 10)
              {
                  Response.Write("您輸入的值，剛好等於10。");
              }
              else
              {
                  Response.Write("抱歉！您輸入的值，小於10。");
              }

        }


    }
}
