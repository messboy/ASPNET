<%@ Page Language="C#" AutoEventWireup="true" CodeFile="02_Orders_3_Report.aspx.cs" Inherits="Book_Sample_CaseStudy_NorthWind_02_Orders_3_Report" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
串連Northwind DB，三個 Table的報表
<br />
<hr />
<br />
    <form id="form1" runat="server">
    <div>
    
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" 
            DataKeyNames="OrderID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            HorizontalAlign="Left" Width="640px">
            <PagerSettings Position="Top" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <EditItemTemplate>
                OrderID:
                <asp:Label ID="OrderIDLabel1" runat="server" Text='<%# Eval("OrderID") %>' />
                <br />
                CustomerID:
                <asp:TextBox ID="CustomerIDTextBox" runat="server" 
                    Text='<%# Bind("CustomerID") %>' />
                <br />
                EmployeeID:
                <asp:TextBox ID="EmployeeIDTextBox" runat="server" 
                    Text='<%# Bind("EmployeeID") %>' />
                <br />
                OrderDate:
                <asp:TextBox ID="OrderDateTextBox" runat="server" 
                    Text='<%# Bind("OrderDate") %>' />
                <br />
                RequiredDate:
                <asp:TextBox ID="RequiredDateTextBox" runat="server" 
                    Text='<%# Bind("RequiredDate") %>' />
                <br />
                ShippedDate:
                <asp:TextBox ID="ShippedDateTextBox" runat="server" 
                    Text='<%# Bind("ShippedDate") %>' />
                <br />
                ShipVia:
                <asp:TextBox ID="ShipViaTextBox" runat="server" Text='<%# Bind("ShipVia") %>' />
                <br />
                Freight:
                <asp:TextBox ID="FreightTextBox" runat="server" Text='<%# Bind("Freight") %>' />
                <br />
                ShipName:
                <asp:TextBox ID="ShipNameTextBox" runat="server" 
                    Text='<%# Bind("ShipName") %>' />
                <br />
                ShipAddress:
                <asp:TextBox ID="ShipAddressTextBox" runat="server" 
                    Text='<%# Bind("ShipAddress") %>' />
                <br />
                ShipCity:
                <asp:TextBox ID="ShipCityTextBox" runat="server" 
                    Text='<%# Bind("ShipCity") %>' />
                <br />
                ShipRegion:
                <asp:TextBox ID="ShipRegionTextBox" runat="server" 
                    Text='<%# Bind("ShipRegion") %>' />
                <br />
                ShipPostalCode:
                <asp:TextBox ID="ShipPostalCodeTextBox" runat="server" 
                    Text='<%# Bind("ShipPostalCode") %>' />
                <br />
                ShipCountry:
                <asp:TextBox ID="ShipCountryTextBox" runat="server" 
                    Text='<%# Bind("ShipCountry") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                CustomerID:
                <asp:TextBox ID="CustomerIDTextBox" runat="server" 
                    Text='<%# Bind("CustomerID") %>' />
                <br />
                EmployeeID:
                <asp:TextBox ID="EmployeeIDTextBox" runat="server" 
                    Text='<%# Bind("EmployeeID") %>' />
                <br />
                OrderDate:
                <asp:TextBox ID="OrderDateTextBox" runat="server" 
                    Text='<%# Bind("OrderDate") %>' />
                <br />
                RequiredDate:
                <asp:TextBox ID="RequiredDateTextBox" runat="server" 
                    Text='<%# Bind("RequiredDate") %>' />
                <br />
                ShippedDate:
                <asp:TextBox ID="ShippedDateTextBox" runat="server" 
                    Text='<%# Bind("ShippedDate") %>' />
                <br />
                ShipVia:
                <asp:TextBox ID="ShipViaTextBox" runat="server" Text='<%# Bind("ShipVia") %>' />
                <br />
                Freight:
                <asp:TextBox ID="FreightTextBox" runat="server" Text='<%# Bind("Freight") %>' />
                <br />
                ShipName:
                <asp:TextBox ID="ShipNameTextBox" runat="server" 
                    Text='<%# Bind("ShipName") %>' />
                <br />
                ShipAddress:
                <asp:TextBox ID="ShipAddressTextBox" runat="server" 
                    Text='<%# Bind("ShipAddress") %>' />
                <br />
                ShipCity:
                <asp:TextBox ID="ShipCityTextBox" runat="server" 
                    Text='<%# Bind("ShipCity") %>' />
                <br />
                ShipRegion:
                <asp:TextBox ID="ShipRegionTextBox" runat="server" 
                    Text='<%# Bind("ShipRegion") %>' />
                <br />
                ShipPostalCode:
                <asp:TextBox ID="ShipPostalCodeTextBox" runat="server" 
                    Text='<%# Bind("ShipPostalCode") %>' />
                <br />
                ShipCountry:
                <asp:TextBox ID="ShipCountryTextBox" runat="server" 
                    Text='<%# Bind("ShipCountry") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                OrderID:
                <asp:Label ID="OrderIDLabel" runat="server" 
                    style="font-weight: 700; color: #FF0000; font-size: medium;" 
                    Text='<%# Eval("OrderID") %>' />
                <br />
                CustomerID:
                <asp:Label ID="CustomerIDLabel" runat="server" 
                    Text='<%# Bind("CustomerID") %>' />
                <br />
                EmployeeID:
                <asp:Label ID="EmployeeIDLabel" runat="server" 
                    Text='<%# Bind("EmployeeID") %>' />
                <br />
                OrderDate:
                <asp:Label ID="OrderDateLabel" runat="server" Text='<%# Bind("OrderDate") %>' />
                <br />
                RequiredDate:
                <asp:Label ID="RequiredDateLabel" runat="server" 
                    Text='<%# Bind("RequiredDate") %>' />
                <br />
                ShippedDate:
                <asp:Label ID="ShippedDateLabel" runat="server" 
                    Text='<%# Bind("ShippedDate") %>' />
                <br />
                ShipVia:
                <asp:Label ID="ShipViaLabel" runat="server" Text='<%# Bind("ShipVia") %>' />
                <br />
                Freight:
                <asp:Label ID="FreightLabel" runat="server" Text='<%# Bind("Freight") %>' />
                <br />
                ShipName:
                <asp:Label ID="ShipNameLabel" runat="server" Text='<%# Bind("ShipName") %>' />
                <br />
                ShipAddress:
                <asp:Label ID="ShipAddressLabel" runat="server" 
                    Text='<%# Bind("ShipAddress") %>' />
                <br />
                ShipCity:
                <asp:Label ID="ShipCityLabel" runat="server" Text='<%# Bind("ShipCity") %>' />
                <br />
                ShipRegion:
                <asp:Label ID="ShipRegionLabel" runat="server" 
                    Text='<%# Bind("ShipRegion") %>' />
                <br />
                ShipPostalCode:
                <asp:Label ID="ShipPostalCodeLabel" runat="server" 
                    Text='<%# Bind("ShipPostalCode") %>' />
                <br />
                ShipCountry:
                <asp:Label ID="ShipCountryLabel" runat="server" 
                    Text='<%# Bind("ShipCountry") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="編輯" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="刪除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="新增" />
            </ItemTemplate>
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center"/>
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        </asp:FormView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
            DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @OrderID" 
            InsertCommand="INSERT INTO [Orders] ([CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (@CustomerID, @EmployeeID, @OrderDate, @RequiredDate, @ShippedDate, @ShipVia, @Freight, @ShipName, @ShipAddress, @ShipCity, @ShipRegion, @ShipPostalCode, @ShipCountry)" 
            SelectCommand="SELECT * FROM [Orders]" 
            UpdateCommand="UPDATE [Orders] SET [CustomerID] = @CustomerID, [EmployeeID] = @EmployeeID, [OrderDate] = @OrderDate, [RequiredDate] = @RequiredDate, [ShippedDate] = @ShippedDate, [ShipVia] = @ShipVia, [Freight] = @Freight, [ShipName] = @ShipName, [ShipAddress] = @ShipAddress, [ShipCity] = @ShipCity, [ShipRegion] = @ShipRegion, [ShipPostalCode] = @ShipPostalCode, [ShipCountry] = @ShipCountry WHERE [OrderID] = @OrderID">
            <DeleteParameters>
                <asp:Parameter Name="OrderID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
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
                <asp:Parameter Name="OrderID" Type="Int32" />
            </UpdateParameters>
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
    

    <hr />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" 
        ForeColor="#333333" GridLines="None" HorizontalAlign="Left" Width="640px" 
            AllowSorting="True">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" 
                SortExpression="OrderID">
            <ItemStyle Font-Bold="True" Font-Size="Medium" ForeColor="Red" />
            </asp:BoundField>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" 
                SortExpression="ProductID" >
            <ItemStyle Font-Bold="True" Font-Size="Medium" ForeColor="#009933" />
            </asp:BoundField>
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                SortExpression="UnitPrice" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />
            <asp:BoundField DataField="Discount" HeaderText="Discount" 
                SortExpression="Discount" />
        </Columns>
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
        DeleteCommand="DELETE FROM [Order Details] WHERE [OrderID] = @OrderID AND [ProductID] = @ProductID" 
        SelectCommand="SELECT * FROM [Order Details] WHERE ([OrderID] = @OrderID)" 
                UpdateCommand="UPDATE [Order Details] SET [UnitPrice] = @UnitPrice, [Quantity] = @Quantity, [Discount] = @Discount WHERE [OrderID] = @OrderID AND [ProductID] = @ProductID">
        
        <SelectParameters>
            <asp:ControlParameter ControlID="FormView1" Name="OrderID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="OrderID" Type="Int32" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="Quantity" Type="Int16" />
            <asp:Parameter Name="Discount" Type="Single" />
            <asp:Parameter Name="OrderID" Type="Int32" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
        </div>
    <p>
        &nbsp;</p><hr />
    <p>
        產品資料（Products Table）</p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" 
            BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="ProductID" 
            DataSourceID="SqlDataSource3" GridLines="Horizontal">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="ProductID">
                <ItemStyle Font-Bold="True" Font-Size="Medium" ForeColor="#009933" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                    SortExpression="ProductName" />
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" 
                    SortExpression="SupplierID" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" 
                    SortExpression="CategoryID" />
                <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" 
                    SortExpression="QuantityPerUnit" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                    SortExpression="UnitPrice" />
                <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" 
                    SortExpression="UnitsInStock" />
                <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" 
                    SortExpression="UnitsOnOrder" />
                <asp:BoundField DataField="ReorderLevel" HeaderText="ReorderLevel" 
                    SortExpression="ReorderLevel" />
                <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued" 
                    SortExpression="Discontinued" />
            </Columns>
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
            SelectCommand="SELECT * FROM [Products] WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="ProductID" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
