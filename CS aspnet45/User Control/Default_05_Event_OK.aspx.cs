using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_User_Control_Default_05_Event_OK : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //--寫在 HTML網頁裡面了，直接寫在 UC標籤內部。
        //           <mis2000lab:GridView1 runat="server" ID="mis2000GV" 
        //               OnEditRecord="mis2000lab_EditRecord" OnFinishedEditRecord="mis2000lab_FinishedEditRecord" />

        mis2000GV.mis2000lab_EditRecord +=
             new Book_Sample_User_Control_WebUserControl_05_Event_OK.EditRecordHandler(mis2000GV_mis2000lab_EditRecord);

        mis2000GV.mis2000lab_FinishedEditRecord +=
           new Book_Sample_User_Control_WebUserControl_05_Event_OK.FinishedEditRecordHandler(mis2000GV_mis2000lab_FinishedEditRecord);
    }


    //****  以下的事件必須自己動手撰寫！！ *******************************************
    protected void mis2000GV_mis2000lab_EditRecord(
        object sender, Book_Sample_User_Control_WebUserControl_05_Event_OK.mis2000lab_EventArgs e)
    {        //*** 請特別注意這個事件的「第二個」參數！！
              //*** Class名稱是從 UC過來的。檔名 WebUserControl_05_Event_OK.ascx

              Response.Write("<br/> UC的 mis2000lab_EditRecord事件 -- " + e.TestString);
    }


    protected void mis2000GV_mis2000lab_FinishedEditRecord(object sender, EventArgs e)
    {
           Response.Write("<br/> UC的 mis2000lab_FinishedEditRecord事件 -- Bye! Bye!");
    }


}