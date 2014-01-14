using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//----自己寫的----
using System.Web.Configuration;

using System.Data;
using System.Data.SqlClient;
//----自己寫的----

public partial class Book_Sample_CaseStudy_NorthWind_03_Orders_Add_3_SqlDataSource_Manual : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        SqlDataSource SqlDataSource1 = new SqlDataSource();
        SqlDataSource1.ConnectionString = WebConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString;

        //************************************************************
        //***  透過「參數」的方法，來做 SqlDataSource資料新增。
        //************************************************************
        DropDownList myCustomerID = (DropDownList)FormView1.FindControl("DropDownList1_CustomerID");

        //== FindControl -- 抓取大型控制項的「樣版（Template）裡面」的子控制項 ==
        SqlDataSource1.InsertParameters.Add("CustomerID", myCustomerID.SelectedValue);

        DropDownList myEmployeeID = (DropDownList)FormView1.FindControl("DropDownList2_EmployeeID");
        SqlDataSource1.InsertParameters.Add("EmployeeID", myEmployeeID.SelectedValue);

        TextBox myOrderDate= (TextBox)FormView1.FindControl("OrderDateTextBox");
        SqlDataSource1.InsertParameters.Add("OrderDate", myOrderDate.Text);

        TextBox myRequiredDate= (TextBox)FormView1.FindControl("RequiredDateTextBox");
        SqlDataSource1.InsertParameters.Add("RequiredDate", myRequiredDate.Text);

        TextBox myShippedDate = (TextBox)FormView1.FindControl("ShippedDateTextBox");
        SqlDataSource1.InsertParameters.Add("ShippedDate", myShippedDate.Text);

        DropDownList myShipVia = (DropDownList)FormView1.FindControl("DropDownList3_ShipVia");
        SqlDataSource1.InsertParameters.Add("ShipVia", myShipVia.SelectedValue);

        TextBox myFreight= (TextBox)FormView1.FindControl("FreightTextBox");
        SqlDataSource1.InsertParameters.Add("Freight", myFreight.Text);

        TextBox myShipName= (TextBox)FormView1.FindControl("ShipNameTextBox");
        SqlDataSource1.InsertParameters.Add("ShipName", myShipName.Text);

        TextBox myShipAddress= (TextBox)FormView1.FindControl("ShipAddressTextBox");
        SqlDataSource1.InsertParameters.Add("ShipAddress", myShipAddress.Text);

        TextBox myShipCity = (TextBox)FormView1.FindControl("ShipCityTextBox");
        SqlDataSource1.InsertParameters.Add("ShipCity", myShipCity.Text);

        TextBox myShipRegion = (TextBox)FormView1.FindControl("ShipRegionTextBox");
        SqlDataSource1.InsertParameters.Add("ShipRegion", myShipRegion.Text);

        TextBox myShipPostalCode = (TextBox)FormView1.FindControl("ShipPostalCodeTextBox");
        SqlDataSource1.InsertParameters.Add("ShipPostalCode", myShipPostalCode.Text);

        TextBox myShipCountry = (TextBox)FormView1.FindControl("ShipCountryTextBox");
        SqlDataSource1.InsertParameters.Add("ShipCountry", myShipCountry.Text);
        //************************************************************

        SqlDataSource1.InsertCommand = "INSERT INTO [Orders] ([CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (@CustomerID, @EmployeeID, @OrderDate, @RequiredDate, @ShippedDate, @ShipVia, @Freight, @ShipName, @ShipAddress, @ShipCity, @ShipRegion, @ShipPostalCode, @ShipCountry)";

        int affectRows = SqlDataSource1.Insert();  //--執行 Insert()的動作。

        if (affectRows > 0)
        {
            Response.Write("<h2>資料新增，成功！！</h2>");
        }

        SqlDataSource1.Dispose();
    }
}