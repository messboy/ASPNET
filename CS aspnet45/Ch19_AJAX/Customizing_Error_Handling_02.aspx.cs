using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch19_AJAX_Customizing_Error_Handling_02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            int a = Int32.Parse(TextBox1.Text);
            int b = Int32.Parse(TextBox2.Text);

            int res = a / b;
            Label1.Text = res.ToString();
        }
        catch (Exception ex)
        {
            if (TextBox1.Text.Length > 0 && TextBox2.Text.Length > 0)
            {
                //====================================================
                ex.Data["ExtraInfo"] = " You can't divide " + TextBox1.Text + " by " + TextBox2.Text + ".";
                //==重 點！！會把這個錯誤，傳給下面的 ScriptManager1_AsyncPostBackError事件！！
            }
            throw ex;
        }
    }


    //***************************************************************************************
    //***  重 點！！！
    protected void ScriptManager1_AsyncPostBackError(object sender, AsyncPostBackErrorEventArgs e)
    {
        if (e.Exception.Data["ExtraInfo"] != null)
        {
            ScriptManager1.AsyncPostBackErrorMessage =
                                        e.Exception.Message + e.Exception.Data["ExtraInfo"].ToString();
            //== 上面的 Button_click事件傳來的「ExtraInfo」變數
        }
        else
        {
            ScriptManager1.AsyncPostBackErrorMessage = "An unspecified error occurred.";
        }
    }


}