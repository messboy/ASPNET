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

public partial class Ch16_Cookie_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "123" & TextBox2.Text == "123")
        {
            Response.Cookies["u_name"].Value = "123";

            Response.Cookies["Login"].Value = "OK";
            Response.Cookies["Login"].Expires = DateTime.Now.AddDays(30);
            //登入成功，這個Cookie的期限是三十天內都有效！
        }

        Response.Redirect("Cookie_Login_end.aspx");
        //登入後，不管帳號密碼對不對，都會到下一個網頁。
        //帳號密碼正確的人，下一頁會看見正確訊息！
        //帳號密碼錯誤的人，下一頁會看見錯誤訊息。

    }
}
