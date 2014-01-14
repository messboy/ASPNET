<%@ Page Language="C#" AutoEventWireup="true" CodeFile="04_Orders_Add_Manual.aspx.cs" Inherits="Book_Sample_CaseStudy_NorthWind_04_Orders_Add_Manual" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>從頭做到尾的大範例 -- 訂單系統</title>
    <style type="text/css">
        .style2
        {
            color: #FF0000;
            background-color: #FFFF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" BackColor="#CCFFCC">
                <asp:Label ID="Label1" runat="server" Text="Order (訂單資料)----自己設定的輸入畫面" 
                    style="font-weight: 700; font-size: large"></asp:Label>
                <br />        
                &nbsp;&nbsp;&nbsp; CustomerID:
                <asp:DropDownList ID="DropDownList_CustomerID" runat="server" 
                    DataSourceID="SqlDataSource5_Customer" DataTextField="CompanyName" 
                    DataValueField="CustomerID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5_Customer" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                    SelectCommand="SELECT [CompanyName], [CustomerID] FROM [Customers]">
                </asp:SqlDataSource>
                <br />
                &nbsp;&nbsp;&nbsp; EmployeeID:
                <asp:DropDownList ID="DropDownList_EmployeeID" runat="server" 
                    DataSourceID="SqlDataSource6_Employee" DataTextField="LastName" 
                    DataValueField="EmployeeID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource6_Employee" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                    SelectCommand="SELECT [EmployeeID], [LastName] FROM [Employees]">
                </asp:SqlDataSource>
                <br />
                &nbsp;&nbsp;&nbsp; OrderDate:
                <asp:TextBox ID="TextBox_OrderDate" runat="server"  />
                <br />
                &nbsp;&nbsp;&nbsp; RequiredDate:
                <asp:TextBox ID="TextBox_RequiredDate" runat="server" />
                <br />
                &nbsp;&nbsp;&nbsp; ShippedDate:
                <asp:TextBox ID="TextBox_ShippedDate" runat="server"  />
                <br />
                &nbsp;&nbsp;&nbsp; ShipVia:
                <asp:DropDownList ID="DropDownList_ShipVia" runat="server" 
                    DataSourceID="SqlDataSource7_Shippers" DataTextField="CompanyName" 
                    DataValueField="ShipperID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource7_Shippers" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                    SelectCommand="SELECT [ShipperID], [CompanyName] FROM [Shippers]">
                </asp:SqlDataSource>
                <br />
                &nbsp;&nbsp;&nbsp; Freight:
                <asp:TextBox ID="TextBox_Freight" runat="server" />
                <br />
                &nbsp;&nbsp;&nbsp; ShipName:
                <asp:TextBox ID="TextBox_ShipName" runat="server" />
                <br />
                &nbsp;&nbsp;&nbsp; ShipAddress:
                <asp:TextBox ID="TextBox_ShipAddress" runat="server"  />
                <br />
                &nbsp;&nbsp;&nbsp; ShipCity:
                <asp:TextBox ID="TextBox_ShipCity" runat="server"  />
                <br />
                &nbsp;&nbsp;&nbsp; ShipRegion:
                <asp:TextBox ID="TextBox_ShipRegion" runat="server" />
                <br />
                &nbsp;&nbsp;&nbsp; ShipPostalCode:
                <asp:TextBox ID="TextBox_ShipPostalCode" runat="server"  />
                <br />
                &nbsp;&nbsp;&nbsp; ShipCountry:
                <asp:TextBox ID="TextBox_ShipCountry" runat="server"  />     
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1_Orders" runat="server" 
                    Text="Submit ---- 訂單 (Orders) 新增" onclick="Button1_Orders_Click" />   
                
                <asp:SqlDataSource ID="SqlDataSource1_Orders" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                    
                    InsertCommand="INSERT INTO [Orders] ([CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry]) VALUES (@CustomerID, @EmployeeID, @OrderDate, @RequiredDate, @ShippedDate, @ShipVia, @Freight, @ShipName, @ShipAddress, @ShipCity, @ShipRegion, @ShipPostalCode, @ShipCountry);select @get_Order_id = SCOPE_IDENTITY()" 
                    oninserted="SqlDataSource1_Orders_Inserted" >
                    <InsertParameters>
                        <asp:ControlParameter ControlID="DropDownList_CustomerID" Name="CustomerID" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList_EmployeeID" Name="EmployeeID" 
                            PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="TextBox_OrderDate" Name="OrderDate" 
                            PropertyName="Text" Type="DateTime" />
                        <asp:ControlParameter ControlID="TextBox_RequiredDate" Name="RequiredDate" 
                            PropertyName="Text" Type="DateTime" />
                        <asp:ControlParameter ControlID="TextBox_ShippedDate" Name="ShippedDate" 
                            PropertyName="Text" Type="DateTime" />
                        <asp:ControlParameter ControlID="DropDownList_ShipVia" Name="ShipVia" 
                            PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="TextBox_Freight" Name="Freight" 
                            PropertyName="Text" Type="Decimal" />
                        <asp:ControlParameter ControlID="TextBox_ShipName" Name="ShipName" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox_ShipAddress" Name="ShipAddress" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox_ShipCity" Name="ShipCity" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox_ShipRegion" Name="ShipRegion" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox_ShipPostalCode" Name="ShipPostalCode" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox_ShipCountry" Name="ShipCountry" 
                            PropertyName="Text" Type="String" />
                        <asp:Parameter Name="get_Order_id" DbType="Int32" Direction="Output" />
                        
                    </InsertParameters>
                </asp:SqlDataSource> 
                
        </asp:Panel>
    

    
    <hr />
        <asp:Panel ID="Panel2" runat="server" BackColor="#FFCC66" Visible="False">
            <asp:Label ID="Label4" runat="server" Text="Order (訂單資料)----新增成功後，展現最新一筆資料在畫面上" 
                    style="font-weight: 700; font-size: large; color: #996633;"></asp:Label>
                <br />        
            <asp:DetailsView ID="DetailsView1" runat="server" BackColor="White" 
                BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                ForeColor="Black" GridLines="Vertical" Height="50px" 
                Width="640px">
                <FooterStyle BackColor="#CCCC99" />
                <RowStyle BackColor="#F7F7DE" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:DetailsView>
        <br />
        
        </asp:Panel>
    <hr />


        <br />


        <asp:Panel ID="Panel3" runat="server" BackColor="#99CCFF" Visible="False">
            <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #000099; font-size: large;" 
                Text="Order Details (訂單裡面的產品)"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; OrderID :
            <asp:Label ID="Label4_OrderId" runat="server" 
                style="font-weight: 700; color: #FF0000; font-size: large"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <span class="style2">ProductID</span> :
            <asp:DropDownList ID="DropDownList5_ProductID" runat="server" 
                DataSourceID="SqlDataSource2_Product" DataTextField="ProductName" 
                DataValueField="ProductID" AutoPostBack="True" 
                onselectedindexchanged="DropDownList5_ProductID_SelectedIndexChanged">
            </asp:DropDownList>
            &nbsp; （啟用 AutoPostBack）
            <asp:SqlDataSource ID="SqlDataSource2_Product" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                SelectCommand="SELECT [ProductID], [ProductName] FROM [Products]">
            </asp:SqlDataSource>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <span class="style2">UnitPrice</span> :
            <asp:Label ID="Label5_UnitPrice" runat="server" style="color: #0000FF"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; Quantity :
            <asp:TextBox ID="TextBox1_Quantity" runat="server"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; Discount :
            <asp:TextBox ID="TextBox2_Discount" runat="server"></asp:TextBox>
            <br />&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="確定。完成一筆產品的輸入" 
                onclick="Button2_Click" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource3_OrderDetail" runat="server" 
                ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                InsertCommand="INSERT INTO [Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (@OrderID, @ProductID, @UnitPrice, @Quantity, @Discount)" >
                <InsertParameters>
                    <asp:SessionParameter Name="OrderID" SessionField="myOrdersID" />
                    <asp:ControlParameter ControlID="DropDownList5_ProductID" Name="ProductID" 
                        PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="Label5_UnitPrice" Name="UnitPrice" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1_Quantity" Name="Quantity" 
                        PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2_Discount" Name="Discount" 
                        PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        
        <br />
        <br />
        <br />


    <hr />
        <asp:Panel ID="Panel4" runat="server" Visible="False" BorderColor="#FFCCCC" >
            <asp:Label ID="Label3" runat="server" Text="即時列出這筆訂單的最新狀況：Order Details " 
                style="color: #CC0066; font-weight: 700; font-size: large"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="OrderID,ProductID" 
                DataSourceID="SqlDataSource4_Display" ForeColor="Black" GridLines="Horizontal" 
                HorizontalAlign="Left" Width="640px">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" 
                        SortExpression="OrderID">
                    <ItemStyle Font-Bold="True" Font-Size="Medium" ForeColor="Red" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" 
                        SortExpression="ProductID" />
                    <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                        SortExpression="UnitPrice" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                        SortExpression="Quantity" />
                    <asp:BoundField DataField="Discount" HeaderText="Discount" 
                        SortExpression="Discount" />
                </Columns>
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
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
            <asp:SqlDataSource ID="SqlDataSource4_Display" runat="server" 
                ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
                DeleteCommand="DELETE FROM [Order Details] WHERE [OrderID] = @OrderID AND [ProductID] = @ProductID" 
                InsertCommand="INSERT INTO [Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (@OrderID, @ProductID, @UnitPrice, @Quantity, @Discount)" 
                SelectCommand="SELECT * FROM [Order Details] WHERE ([OrderID] = @OrderID)" 
                UpdateCommand="UPDATE [Order Details] SET [UnitPrice] = @UnitPrice, [Quantity] = @Quantity, [Discount] = @Discount WHERE [OrderID] = @OrderID AND [ProductID] = @ProductID">
                <SelectParameters>
                    <asp:SessionParameter Name="OrderID" SessionField="myOrdersID" Type="Int32" />
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
            <br />

        </asp:Panel>
        <br />


    
        </div>
    </form>
</body>
</html>

