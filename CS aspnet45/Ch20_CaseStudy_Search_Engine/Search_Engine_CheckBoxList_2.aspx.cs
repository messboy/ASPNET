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

public partial class Search_Engine_CheckBoxList_2 : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Search_String = "";
        Boolean u_select = false;
        int word_length = 0;

        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                //***  與上一支程式的差異所在 ***************************************
                Search_String = Search_String + " [class] LIKE '%" + CheckBoxList1.Items[i].Text + "%' or ";
                //******************************************************************
                
                u_select = true;   //使用者有點選任何一個CheckBoxList子選項
            }
        }

        if (u_select)
        {
            word_length = Search_String.Length;  //計算 Search_String的字串長度，VB語法為Len(Search_String)
            Search_String = Left(Search_String, (word_length - 3));
            //因為C＃語法沒有 Left()函數，所以要自己寫！請看最下方。
            //刪去最後三個字 「or 」
            
            Label1.Text = Search_String;
        }
        else
        {
            Label1.Text = "您尚未點選任何一個CheckBoxList子選項";
            //Response.End();    //建議改成 return跳離。
            return;
        }        

        //=======================================
        //== SqlDataSource1 資料庫的連接字串 ConnectionString，
        //== 已事先寫在「HTML畫面的設定」裡面            ==
        //=======================================
        SqlDataSource1.SelectCommand = "SELECT [test_time], [id], [class], [title] FROM [test] WHERE " + Search_String;
        //這次不使用 SqlDataSource提供的@參數
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
