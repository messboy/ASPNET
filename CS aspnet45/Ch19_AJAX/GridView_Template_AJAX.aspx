<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridView_Template_AJAX.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_GridView_Template_AJAX" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
        .style2
        {
            font-weight: bold;
            background-color: #FFCC99;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <b>網頁第一次執行的時間：<%= System.DateTime.Now.ToLongTimeString()%></b><br /><br />
        本範例源自微軟MSDN網站：<a href="http://msdn.microsoft.com/zh-tw/library/system.web.ui.updatepanel.aspx">http://msdn.microsoft.com/zh-tw/library/system.web.ui.updatepanel.aspx</a>
        <br />
        <br />
        <b>在樣板中使用 UpdatePanel 控制項 </b>
        <br />
        在下列範例中，會在 GridView 控制項的項目範本中使用 UpdatePanel 控制項。<span class="style1">每個資料列中的 
        UpdatePanel 控制項都會自動產生</span>。每個資料列的 UpdatePanel 控制項都包含可顯示該資料列中之項目數量的 Label 
        控制項，以及可減少或增加該數量的 Button 控制項。
        <br />
        <br />
            <asp:ScriptManager ID="ScriptManager1"  runat="server" />
            <br />
            <br />
            <span class="style2">NorhtWind北風資料庫
            </span>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                          DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ProductName"  HeaderText="ProductName（產品名稱）" />
                    <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice（單價）" />
                    <asp:TemplateField HeaderText="Quantity（數量。裡面有 UpdatePanel）">
                        <ItemTemplate>

                            <asp:UpdatePanel ID="QuantityUpdatePanel" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <div class="style2">這裡有 UpdatePanel <br />
                                            <asp:Label ID="QuantityLabel" runat="server" Text="0" 
                                                style="font-weight: 700; font-size: medium; color: #0000FF" />
                                                &nbsp; &nbsp; &nbsp;
                                            <asp:Button runat="server" ID="DecreaseQuantity" Text="-"  onclick="OnDecreaseQuantity" />
                                            <asp:Button runat="server" ID="IncreaseQuantity" Text="+" onclick="OnIncreaseQuantity" />
                                            <br />
                                            現在時間：<%= System.DateTime.Now.ToLongTimeString()%>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>


                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>            

            <!-- ------------------------------------------------------------ -->
            <br /><br />
            第二個 UpdatePanel<br />
            <asp:UpdatePanel ID="SummaryUpdatePanel"  runat="server" UpdateMode="Conditional">
                <ContentTemplate>

                     <div class="style2"> 
                            <asp:Button ID="Button1" runat="server"
                                        OnClick="Button1_Click"  Text="Get Summary（加總）"  />
                            <br />
                            <asp:Label ID="SummaryLabel"  runat="server" 
                                style="font-weight: 700; color: #009900">
                            </asp:Label>
                            <br />
                            現在時間：<%= System.DateTime.Now.ToLongTimeString()%>
                    </div>

                </ContentTemplate>
            </asp:UpdatePanel>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                               ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
                               SelectCommand="SELECT [ProductName], [UnitPrice] FROM 
                               [Alphabetical list of products] WHERE ([CategoryName] 
                               LIKE '%' + @CategoryName + '%')" >
                <SelectParameters>
                    <asp:Parameter DefaultValue="Beverages" Name="CategoryName" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br /> =================================================
            <br /><br /><b>網頁第一次執行的時間：<%= System.DateTime.Now.ToLongTimeString()%></b><br />
    </div>
    </form>
</body>
</html>
