using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Ch18_FileUpload_8_Multi_Upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //--註解：網站上的目錄路徑。所以不寫磁碟名稱（不寫 “實體”路徑）。
        //--以下的 URL路徑，請依照實際狀況，進行修改。否則程式會報錯！
        string saveDir = "\\Book_Sample\\Ch18_FileUpload\\Uploads\\";
        string appPath = Request.PhysicalApplicationPath;
        //-- appPath是網站 "根"目錄「轉換成」Server端硬碟路徑。

        string pathToCheck = null;
        System.Text.StringBuilder myLabel = new System.Text.StringBuilder();
        //如果事先宣告 using System.Text;
        //便可改寫成 StringBuilder myLabel = new StringBuilder();

        for(int i = 1; i <= Request.Files.Count;i++)
        {
            FileUpload myFL = (FileUpload)Page.Form.FindControl("FileUpload" + i);

            if (myFL.HasFile) {
                string fileName = myFL.FileName;   //-- User上傳的檔名（不包含 Client端的路徑！）
                pathToCheck = appPath + saveDir + fileName;

                //===========================================(Start)
                if (System.IO.File.Exists(pathToCheck))
                {
                    int my_counter  = 2;
                    String tempfileName =null;
                    while (System.IO.File.Exists(pathToCheck))
                    {
                        //-- 檔名相同的話，目前上傳的檔名（改成 tempfileName），前面會用數字來代替。
                        tempfileName = my_counter.ToString() + "_" + fileName;  //-- 用新檔名，取代重複的檔名！
                        pathToCheck = appPath + saveDir + tempfileName;  //-- appPath是網站 "根"目錄「轉換成」Server端硬碟路徑。
                        my_counter = my_counter + 1;
                    }
                    Label1.Text += "<br />抱歉，您上傳的檔名發生衝突，檔名修改---- " + tempfileName;
                }

                //*** 完成檔案上傳的動作。***
                myFL.SaveAs(pathToCheck);
                //===========================================(End)
                Label1.Text += "<br />目錄與檔名---- " + pathToCheck;
            }
        }  //-- for loop (end)

        Label2.Text = "<hr />上傳成功";
    }
}
