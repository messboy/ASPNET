<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AJAX_Case_03_GridView_Bad.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_AJAX_Case_03_GridView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> GridView 大腸包小腸 Part II（AJAX版）</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
    </style>
</head>
<body>
<br />
 GridView 大腸包小腸 Part II（AJAX版，微軟MSDN版）<br /><br />
 
資料來源 : <a href="http://msdn.microsoft.com/zh-tw/library/bb386452.aspx">http://msdn.microsoft.com/zh-tw/library/bb386452.aspx</a>&nbsp;
<hr />
<br />

<form id="form1" runat="server">
    <div>
        <asp:ScriptManager runat="server" ID="ScriptManager1" EnablePartialRendering="true" />
        <hr />
        <span class="style1"><strong>缺點：</strong></span><br />
        (1). 微軟MSDN的設定，只有「UpdateMode = Conditional」而已，其他設定未更動！<br />
        (2).
        如果第一層 UpdatePanel設定了「ChildrenAsTriggers="false"」，那麼「內部的」第二層GridView無法進行排序。
         
        <br />
        (3). 內部（第二層GridView）動作時，其他幾個第二層Gridview也會連動。<br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" >
            <ContentTemplate>
            
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1"
                        ForeColor="#333333" GridLines="None" PageSize="3" 
                        onrowdatabound="GridView1_RowDataBound" >
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" >
                                <ItemStyle Width="20px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="test_time" DataFormatString="{0:yyyy/MM/dd}" HeaderText="test_time" SortExpression="test_time" >
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" >
                                <ItemStyle Width="250px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="(子) GridView 留言版">
                                <ItemTemplate>
                                
                                
                                            <!--  有沒有加上第二層 UpdatePanel2，結果都一樣。 (start) -->
                                            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                
                                                            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True"
                                                                AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None"
                                                                BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Vertical"
                                                                PageSize="5" Font-Size="Small">
                                                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                                                <Columns>
                                                                    <asp:BoundField DataField="test_id" HeaderText="test_id">
                                                                        <ItemStyle Width="30px" />
                                                                    </asp:BoundField>
                                                                    <asp:BoundField DataField="article" HeaderText="article" SortExpression="article" >
                                                                        <ItemStyle Width="250px" />
                                                                    </asp:BoundField>
                                                                    <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" >
                                                                        <ItemStyle Width="80px" />
                                                                    </asp:BoundField>
                                                                </Columns>
                                                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                                                <AlternatingRowStyle BackColor="Gainsboro" />
                                                            </asp:GridView>
                                                            <hr />
                                                            <asp:Label runat="server" ID="InnerTimeLabel" style="background-color: #FFFF00">
                                                            內部（第二層GridView）時間（隨AJAX會變動）：<%=DateTime.Now.ToLongTimeString()%></asp:Label>
                                                            
                                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
                                                                SelectCommand="SELECT test_id, article, author from test_talk WHERE test_id = @t_id ORDER BY id DESC">
                                                                <SelectParameters>
                                                                  <asp:Parameter Name="t_id" Type="int32" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                    
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                            <!--  有沒有加上第二層 UpdatePanel2，結果都一樣。 (end) -->
                                    
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" VerticalAlign="Top" />
                        <EditRowStyle BackColor="#999999" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" VerticalAlign="Top" />
                    </asp:GridView>
                    
                    <asp:Label runat="server" ID="OuterTimeLabel" 
                        style="background-color: #0000FF; color: #CCFFFF;">第一層的GridView時間：<%=DateTime.Now.ToLongTimeString() %></asp:Label>
                    
            </ContentTemplate>
        </asp:UpdatePanel>
        
        &nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT id, test_time, title from test">
        </asp:SqlDataSource>
        <br /><hr />
 <asp:Label runat="server" ID="Label1" 
                        style="background-color: #CC0000; color: #CCFFFF;">外部時間：<%=DateTime.Now.ToLongTimeString() %>（PostBack執行網頁的時間，以後就固定不動）</asp:Label>
    </div>
    </form>

</body>
</html>


