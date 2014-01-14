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

public partial class Search_Engine_CheckBoxList : System.Web.UI.Page
{

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Search_String = "";
        Boolean u_select = false;

        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                Search_String += CheckBoxList1.Items[i].Text + ",";
                u_select = true;   //使用者有點選任何一個CheckBoxList子選項
            }
        }

        //**********************************
        // 消除最後一個多餘的「,」符號
        int leng = Search_String.Length;
        Search_String = Left(Search_String, (leng - 1));
        //因為C＃語法沒有 Left()函數，所以要自己寫！請看最下方。
        //**********************************


        if (u_select)
        {
            Label1.Text = Search_String;
        }
        else
        {
            Label1.Text = "您尚未點選任何一個CheckBoxList子選項";
            Response.End();
        }        
        
        //=======================================
        //== SqlDataSource1 資料庫的連接字串 ConnectionString，
        //== 已事先寫在「HTML畫面的設定」裡面 ==
        //=======================================
        SqlDataSource1.SelectParameters.Clear();

        SqlDataSource1.SelectCommand = "SELECT [test_time], [id], [class], [title] FROM [test] WHERE ([class] LIKE '%' + @class + '%')";
        SqlDataSource1.SelectParameters.Add("class", Search_String);
        //缺點：組合起來的搜尋條件，變成  class LIKE '%A,B,C'。這樣搜尋很不準確。
    }


     //因為C＃語法沒有 Left()函數，所以要自己寫！
    public static string Left(string param, int length)
    {
        //we start at 0 since we want to get the characters starting from the
        //left and with the specified lenght and assign it to a variable
        string result = param.Substring(0, length);
        //return the result of the operation
        return result;
    } 
}
