<%@ Page Language="C#" AutoEventWireup="true" CodeFile="03_Orders_Add_2_Error_DetailsView.aspx.cs" Inherits="Book_Sample_CaseStudy_NorthWind_03_Orders_Add_2_Error_DetailsView" %>

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
            font-size: large;
            font-weight: bold;
        }
        </style>
</head>
<body>
    <p class="style2">
        DeatilsView</p>
    <p>
    Northwind DB -- <span class="style1">Orders</span> Table 資料新增 :</p>
    <hr />
    
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="OrderID" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
            Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="OrderID" />
                <asp:TemplateField HeaderText="CustomerID" SortExpression="CustomerID">
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1_CustomerID" runat="server" 
                            DataSourceID="SqlDataSource2_CustomerID" DataTextField="CompanyName" 
                            DataValueField="CustomerID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2_CustomerID" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                            SelectCommand="SELECT [CustomerID], [CompanyName] FROM [Customers]">
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EmployeeID" SortExpression="EmployeeID">
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList2_EmployeeID" runat="server" 
                            DataSourceID="SqlDataSource3_EmployeeID" DataTextField="LastName" 
                            DataValueField="EmployeeID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3_EmployeeID" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                            SelectCommand="SELECT [EmployeeID], [LastName] FROM [Employees]">
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                    SortExpression="OrderDate" />
                <asp:BoundField DataField="RequiredDate" HeaderText="RequiredDate" 
                    SortExpression="RequiredDate" />
                <asp:BoundField DataField="ShippedDate" HeaderText="ShippedDate" 
                    SortExpression="ShippedDate" />
                <asp:TemplateField HeaderText="ShipVia" SortExpression="ShipVia">
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList3_ShipVia" runat="server" 
                            DataSourceID="SqlDataSource4_ShipVia" DataTextField="CompanyName" 
                            DataValueField="ShipperID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4_ShipVia" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                            SelectCommand="SELECT [ShipperID], [CompanyName] FROM [Shippers]">
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Freight" HeaderText="Freight" 
                    SortExpression="Freight" />
                <asp:BoundField DataField="ShipName" HeaderText="ShipName" 
                    SortExpression="ShipName" />
                <asp:BoundField DataField="ShipAddress" HeaderText="ShipAddress" 
                    SortExpression="ShipAddress" />
                <asp:BoundField DataField="ShipCity" HeaderText="ShipCity" 
                    SortExpression="ShipCity" />
                <asp:BoundField DataField="ShipRegion" HeaderText="ShipRegion" 
                    SortExpression="ShipRegion" />
                <asp:BoundField DataField="ShipPostalCode" HeaderText="ShipPostalCode" 
                    SortExpression="ShipPostalCode" />
                <asp:BoundField DataField="ShipCountry" HeaderText="ShipCountry" 
                    SortExpression="ShipCountry" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
            InsertCommand="INSERT INTO [Orders] ([CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (@CustomerID, @EmployeeID, @OrderDate, @RequiredDate, @ShippedDate, @ShipVia, @Freight, @ShipName, @ShipAddress, @ShipCity, @ShipRegion, @ShipPostalCode, @ShipCountry)" >

            <InsertParameters>
                <asp:Parameter Name="CustomerID" Type="String" />
                <asp:Parameter Name="EmployeeID" Type="Int32" />
                <asp:Parameter Name="OrderDate" Type="DateTime" />
                <asp:Parameter Name="RequiredDate" Type="DateTime" />
                <asp:Parameter Name="ShippedDate" Type="DateTime" />
                <asp:Parameter Name="ShipVia" Type="Int32" />
                <asp:Parameter Name="Freight" Type="Decimal" />
                <asp:Parameter Name="ShipName" Type="String" />
                <asp:Parameter Name="ShipAddress" Type="String" />
                <asp:Parameter Name="ShipCity" Type="String" />
                <asp:Parameter Name="ShipRegion" Type="String" />
                <asp:Parameter Name="ShipPostalCode" Type="String" />
                <asp:Parameter Name="ShipCountry" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
