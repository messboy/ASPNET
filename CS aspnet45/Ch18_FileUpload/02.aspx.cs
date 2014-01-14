using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;  //註解：事先宣告System.IO這個 NameSpace！

public partial class Ch18_FileUpload_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {  //參考資料：http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.fileupload.saveas.aspx
       //註解：先設定好檔案上傳的路徑，這是Web Server電腦上的硬碟「實際」目錄。
        string savePath = "c:\\temp\\uploads\\";

        if (FileUpload1.HasFile)  {
            //==================================================(Start)
            string fileName = FileUpload1.FileName;  //-- User上傳的檔名（不包含 Client端的路徑！）

            string pathToCheck = savePath + fileName;
            string tempfileName = "" ;

            if (System.IO.File.Exists(pathToCheck))
            {
                int my_counter = 2;                
                while (System.IO.File.Exists(pathToCheck))
                {
                    //路徑與檔名都相同的話，目前上傳的檔名（改成 tempfileName），前面會用數字來代替。
                    tempfileName = my_counter.ToString() + "_" + fileName;
                    pathToCheck = savePath + tempfileName;
                    my_counter = my_counter + 1;
                }
                fileName = tempfileName;
                Label1.Text = "抱歉，您上傳的檔名發生衝突，檔名修改如下" + "<br>" + fileName;
            }

            //完成檔案上傳的動作。
            savePath = savePath + fileName;
            FileUpload1.SaveAs(savePath);
            //==================================================(End)
            Label1.Text = "上傳成功，檔名---- " + fileName;
        }
        else  {
            Label1.Text = "請先挑選檔案之後，再來上傳";  }
    }
}
