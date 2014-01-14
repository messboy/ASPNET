﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ch18_FileUpload_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile) 
        {
            String fileName = FileUpload1.FileName;  //-- User上傳的檔名（不包含 Client端的路徑！）

            //*********************************************************************
            //*** 方法一 *****
           //-- 註解：先設定好檔案上傳的路徑，這是Web Server電腦上的硬碟「實體」目錄。
           //       C#語法在撰寫磁碟的目錄位置時，請留意以下的寫法：
           //String savePath = "c:\\temp\\uploads\\";

            //*** 方法二 *****
            String savePath = Server.MapPath("~/Book_Sample/Ch18_FileUpload/Uploads/");
            //--網站上的 URL路徑。 Server.MapPath() 轉換成Web Server電腦上的硬碟「實體」目錄。

            //*** 方法三 *****
            //--註解：網站上的目錄路徑。所以不寫磁碟名稱（不寫 “實體”路徑）。
            //--以下的 URL路徑，請依照實際狀況，進行修改。否則程式會報錯！
            //String saveDir = "\\Book_Sample\\Ch18_FileUpload\\Uploads\\"; 
            //String appPath  = Request.PhysicalApplicationPath;
            ////-- appPath是網站 "根"目錄「轉換成」Server端硬碟路徑。

            //String savePath   = appPath + saveDir;
            //*********************************************************************


            String saveResult = savePath + fileName;
            //-- 重點！！必須包含 Server端的「目錄」與「檔名」，才能使用 .SaveAs()方法！
            FileUpload1.SaveAs(saveResult);

            Label1.Text = "<b>上傳成功</b>，檔名---- " + fileName;
            Label1.Text += "<br />路徑檔名---- " + savePath;
        }
        else
        {
            Label1.Text = "請先挑選檔案之後，再來上傳";
        }
    }
}
