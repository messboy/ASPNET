using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book_Sample_User_Control_Default_04_Event : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //--寫在 HTML網頁裡面了，直接寫在 UC標籤內部。
        //           <mis2000lab:GridView1 runat="server" ID="mis2000GV" 
        //               OnEditRecord="mis2000lab_EditRecord" OnFinishedEditRecord="mis2000lab_FinishedEditRecord" />

        //mis2000GV.mis2000lab_EditRecord +=
        //     new Book_Sample_User_Control_WebUserControl_04_Event.EditRecordHandler(mis2000GV_mis2000lab_EditRecord);

        //mis2000GV.mis2000lab_FinishedEditRecord +=
        //   new Book_Sample_User_Control_WebUserControl_04_Event.FinishedEditRecordHandler(mis2000GV_mis2000lab_FinishedEditRecord);
    }
}