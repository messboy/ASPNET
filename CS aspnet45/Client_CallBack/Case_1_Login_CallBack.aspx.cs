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

public partial class Ch20_Client_CallBack_Case_1_Login_CallBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < (DropDownList1.Items.Count); i++)
        {
            if (DropDownList1.Items[i].Selected)
            {
                Session["my_color"] = DropDownList1.Items[i].Value;
                Session["my_name"] = TextBox1.Text;

                Response.Redirect("Case_2_CallBack.aspx");
            }
        }

        Label1.Text = "您尚未選擇字體顏色～";
    }
}
