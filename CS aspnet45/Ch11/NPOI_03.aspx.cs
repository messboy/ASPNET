using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//== 自己寫的（宣告） ==================
using System.IO;
using NPOI.HSSF.UserModel;
//using NPOI.HPSF;                    //-- v.1.2.4版可以取消這個命名空間。
//using NPOI.POIFS.FileSystem;    //-- v.1.2.4版可以取消這個命名空間。
//===============================
using NPOI.SS.UserModel;    //-- v.1.2.4新增的。
//===============================


public partial class Book_Sample_Ch11_NOPI_03 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        //== 本範例的資料來源：http://msdn.microsoft.com/zh-tw/ee818993.aspx 
        //== v1.2.4版的範例，請參閱 http://tonyqus.sinaapp.com/archives/169

        HSSFWorkbook workbook= new HSSFWorkbook();

        //== 新增試算表 Sheet名稱。這是舊的 v.1.2.1版寫法
        HSSFSheet u_sheet = (HSSFSheet)workbook.CreateSheet("My Sheet_124");

        //== 建立儲存格樣式（底色）。v.1.2.4版 =============================(start)
        HSSFCellStyle style1 = (HSSFCellStyle)workbook.CreateCellStyle();
        style1.FillForegroundColor = NPOI.HSSF.Util.HSSFColor.BLUE.index2;  //==藍色底的儲存格
        style1.FillPattern = FillPatternType.SOLID_FOREGROUND;  //==底圖（紋路）

        HSSFCellStyle style2 = (HSSFCellStyle)workbook.CreateCellStyle();
        style2.FillForegroundColor = NPOI.HSSF.Util.HSSFColor.YELLOW.index2;  //==黃色底的儲存格
        style2.FillPattern = FillPatternType.SQUARES;  //==底圖（紋路）

        //== 建立儲存格樣式（底色）。 v.1.2.1版，在此出現錯誤。
        //HSSFCellStyle style1 = (HSSFCellStyle)workbook.CreateCellStyle();
        //style1.FillForegroundColor = NPOI.HSSF.Util.HSSFColor.BLUE.index2;  //==藍色底的儲存格
        //style1.FillPattern = HSSFCellStyle.SOLID_FOREGROUND;

        //HSSFCellStyle style2 = (HSSFCellStyle)workbook.CreateCellStyle();
        //style2.FillForegroundColor = NPOI.HSSF.Util.HSSFColor.YELLOW.index2;  //==黃色底的儲存格
        //style2.FillPattern = HSSFCellStyle.SOLID_FOREGROUND;
        //======================================================(end)


        //== 設定儲存格樣式與資料。
        //== 這裡在 v.1.2.4版 有很大的改變，請參閱之前的 (NPOI範例 02)
        //== 只有「每一列」的第一個格子，才能用 .CreateRow()方法！
        HSSFCell cell = (HSSFCell)u_sheet.CreateRow(0).CreateCell(0);
        cell.CellStyle = style1;
        cell.SetCellValue("0000");  //== 插入資料值。

        cell = (HSSFCell)u_sheet.CreateRow(1).CreateCell(0);
        cell.CellStyle = style2;
        cell.SetCellValue("1111");  //== 插入資料值。

        cell = (HSSFCell)u_sheet.CreateRow(2).CreateCell(0);
        cell.CellStyle = style1;
        cell.SetCellValue("2222");  //== 插入資料值。

        cell = (HSSFCell)u_sheet.CreateRow(3).CreateCell(0);
        cell.CellStyle = style2;
        cell.SetCellValue("3333");  //== 插入資料值。

        cell = (HSSFCell)u_sheet.CreateRow(4).CreateCell(0);
        cell.CellStyle = style1;
        cell.SetCellValue("4444");  //== 插入資料值。


        MemoryStream ms = new MemoryStream();  //==需要 System.IO命名空間
        workbook.Write(ms);

        //== Excel檔名，請寫在最後面 filename的地方
        Response.AddHeader("Content-Disposition", "attachment; filename=EmptyWorkbook_3.xls");
        Response.BinaryWrite(ms.ToArray());

        //== 釋放資源
        workbook = null;   //== C#為 null
        ms.Close();
        ms.Dispose();
    }

}