using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//----自己寫的----
using System.IO;
//----自己寫的----


public partial class Book_Sample_Ch18_FileUpload_8_Dir : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //-- 註解：先設定好檔案上傳的路徑，這是Web Server電腦上的硬碟「實體」目錄。
        //       C#語法在撰寫磁碟的目錄位置時，請留意以下的寫法：
        string savePath = "c:\\temp\\uploads\\";
        
        //************************************************
        //** 需搭配 System.IO 命名空間
        string my_Dir = "c:\\temp\\uploads\\" ;
        if (!Directory.Exists(my_Dir))
        {
            Directory.CreateDirectory(my_Dir);  //--如果這目錄不存在，就建立它。
        }
        //************************************************


        if (FileUpload1.HasFile)
        {
            string fileName = FileUpload1.FileName;   //-- User上傳的檔名（不包含 Client端的路徑！）

            savePath = savePath + fileName;
            FileUpload1.SaveAs(savePath);

            Label1.Text = "上傳成功，檔名---- " + fileName;
        }
        else
        {
            Label1.Text = "請先挑選檔案之後，再來上傳";
        }
    }
}