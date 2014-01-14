using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_Ch19_AJAX_Search_Eng_2_Manual : System.Web.UI.Page
{


    //=============================================
    //這個事件必須自己動手寫上, Visual Studio的「C#語法」不會自動產生
    protected void Page_Init(Object sender, EventArgs e)
    {
        //-- 自己寫程式，動態加入Trigger。       
        //-- 參考資料：http://bibby.be/2008/06/updatepanelcontrol.html

        AsyncPostBackTrigger myTrigger = new AsyncPostBackTrigger();

        UpdatePanel1.Triggers.Add(myTrigger);
        myTrigger.ControlID = Button1.UniqueID;  //-- UniqueID是重點。
    }
    //=============================================


    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        //-- 記得要修改原本的 SqlDataSource的「參數」。
        //-- 原本的參數：<asp:ControlParameter ControlID="TextBox1" PropertyName="Text" 
        //--                             Name="title" Type="String" />
        //-- 修改後：<asp:Parameter Name="title" Type="String" />

        SqlDataSource1.SelectParameters["title"].DefaultValue = Server.HtmlEncode(TextBox1.Text);
    }
}