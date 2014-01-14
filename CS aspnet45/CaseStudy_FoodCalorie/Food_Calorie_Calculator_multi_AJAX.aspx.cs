using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_CaseStudy_FoodCalorie_Food_Calorie_Calculator_multi_AJAX : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        //-- 點選任何一個子選項，底下的 ListBox就會出現，並立刻計算卡路里
        ListBox1.Items.Add(DropDownList1.SelectedItem.Text + "@" + DropDownList1.SelectedValue);

        Label1.Text = "<font color=blue>" + DropDownList1.SelectedValue + "</font>";  //--被選取的這項食物的卡路里

        ViewState["total"] = Convert.ToInt32(ViewState["total"]) + Convert.ToInt32(DropDownList1.SelectedValue);
        Label2.Text = ViewState["total"].ToString();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        //-- 點選 Listbox 的子選項，可以刪除之。

        int calo = ListBox1.SelectedItem.Text.IndexOf("@", 0) + 1;
        //-- 相當於 VB語法的 Instr()， 在字串中找關鍵字。
        //    找不到的話， 會傳回「-1」。
        //    找到的話，回傳一個Integer數字（從零算起）。表示在字串裡面第幾個字，符合條件。 

        int word_length = (ListBox1.SelectedItem.Text.Length - calo);
        Label1.Text = "<font color=red> -" + Right(ListBox1.SelectedItem.Text, word_length) + "</font>";  
        //--被選取的這項食物的卡路里

        ViewState["total"] = Convert.ToInt32(ViewState["total"]) - Convert.ToInt32(Right(ListBox1.SelectedItem.Text, word_length));
        Label2.Text = ViewState["total"].ToString();

        ListBox1.Items.Remove(ListBox1.SelectedItem.Text);  //--移除 ListBox1「被選到的」子選項
    }


    //== VB語法裡面的 Right function改寫成 C#語法 ==
    public static string Right(string param, int length)
    {
        //start at the index based on the lenght of the sting minus
        //the specified lenght and assign it a variable
        string result = param.Substring(param.Length - length, length);
        //return the result of the operation
        return result;
    }
}