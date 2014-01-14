<%@ Page Language="C#" AutoEventWireup="true" CodeFile="03_Orders_Add_3_SqlDataSource_Manual.aspx.cs" Inherits="Book_Sample_CaseStudy_NorthWind_03_Orders_Add_3_SqlDataSource_Manual" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-weight: bold;
            background-color: #FFCC00;
        }
        .style2
        {
            color: #FF0000;
        }
        .style3
        {
            color: #FF3300;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Northwind DB -- <span class="style1">Orders</span> Table 資料新增 
        <br />
        <span class="style3">自己動手寫 SqlDataSource程式 (Code Behind)</span>
    <hr />
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" ForeColor="#333333" 
            HorizontalAlign="Left" Width="640px" DefaultMode="Insert" 
            oniteminserting="FormView1_ItemInserting">
            <PagerSettings Position="Top" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <InsertItemTemplate>
                <span class="style2">CustomerID:</span>
                <asp:DropDownList ID="DropDownList1_CustomerID" runat="server" 
                    DataSourceID="SqlDataSource2_CustomerID" DataTextField="CompanyName" 
                    DataValueField="CustomerID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2_CustomerID" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                    SelectCommand="SELECT [CustomerID], [CompanyName] FROM [Customers]">
                </asp:SqlDataSource>
                <br />
                <br />
                <span class="style2">EmployeeID:</span>
                <asp:DropDownList ID="DropDownList2_EmployeeID" runat="server" 
                    DataSourceID="SqlDataSource3_EmployeeID" DataTextField="LastName" 
                    DataValueField="EmployeeID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3_EmployeeID" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                    SelectCommand="SELECT [EmployeeID], [LastName] FROM [Employees]">
                </asp:SqlDataSource>
                <br />
                <br />
                OrderDate:
                <asp:TextBox ID="OrderDateTextBox" runat="server" />
                <br />
                RequiredDate:
                <asp:TextBox ID="RequiredDateTextBox" runat="server" />
                <br />
                ShippedDate:
                <asp:TextBox ID="ShippedDateTextBox" runat="server" />
                <br />
                <span class="style2">ShipVia:</span>
                <asp:DropDownList ID="DropDownList3_ShipVia" runat="server" 
                    DataSourceID="SqlDataSource4_ShipVia" DataTextField="CompanyName" 
                    DataValueField="ShipperID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4_ShipVia" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                    SelectCommand="SELECT [ShipperID], [CompanyName] FROM [Shippers]">
                </asp:SqlDataSource>
                <br />
                <br />
                Freight:
                <asp:TextBox ID="FreightTextBox" runat="server" />
                <br />
                ShipName:
                <asp:TextBox ID="ShipNameTextBox" runat="server" />
                <br />
                ShipAddress:
                <asp:TextBox ID="ShipAddressTextBox" runat="server" />
                <br />
                ShipCity:
                <asp:TextBox ID="ShipCityTextBox" runat="server" />
                <br />
                ShipRegion:
                <asp:TextBox ID="ShipRegionTextBox" runat="server"  />
                <br />
                ShipPostalCode:
                <asp:TextBox ID="ShipPostalCodeTextBox" runat="server" />
                <br />
                ShipCountry:
                <asp:TextBox ID="ShipCountryTextBox" runat="server" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center"/>
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <InsertRowStyle BackColor="#FFCCFF" />
        </asp:FormView>

    <!-- 沒有 SqlDataSource，必須自己寫程式。後置程式碼 / Code Behind -->

        </div>
    </form>
</body>
</html>

