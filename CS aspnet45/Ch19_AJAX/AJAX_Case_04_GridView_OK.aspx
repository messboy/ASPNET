<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AJAX_Case_04_GridView_OK.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_AJAX_Case_04_GridView_OK" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> GridView 大腸包小腸 Part II（AJAX版）</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
        .style2
        {
            color: #FFFFFF;
        }
        .style3
        {
            background-color: #0000FF;
        }
    </style>
</head>
<body>
<br />
 GridView 大腸包小腸 Part II（AJAX版，<span class="style2"><strong><span class="style3">改良版</span></strong></span>）<br /><br />
 
資料來源 : <a href="http://msdn.microsoft.com/zh-tw/library/bb386452.aspx">http://msdn.microsoft.com/zh-tw/library/bb386452.aspx</a>&nbsp;
<hr />
<br />

<form id="form1" runat="server">
    <div>
        <asp:ScriptManager runat="server" ID="ScriptManager1" EnablePartialRendering="true" />
        <hr />
        <span class="style1"><strong>修正：</strong></span><br />
        (1). 採用我的設定！完全切割，並且加上 Trigger<br />
        (2). 內部（第二層GridView）動作時，其他幾個第二層Gridview<span class="style1"><strong>不</strong></span>會連動。<br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" 
            ChildrenAsTriggers="False" >
            <ContentTemplate>
                    <br />========================================<br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1"
                        ForeColor="#333333" GridLines="None" PageSize="3" 
                        onrowdatabound="GridView1_RowDataBound">
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
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
                                            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional" 
                                                ChildrenAsTriggers="False">
                                                <ContentTemplate>
                                                
                                                            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True"
                                                                AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double"
                                                                BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource2" GridLines="Horizontal"
                                                                PageSize="5" Font-Size="Small">
                                                                <FooterStyle BackColor="White" ForeColor="#333333" />
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
                                                                <RowStyle BackColor="White" ForeColor="#333333" />
                                                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                                                <SortedDescendingHeaderStyle BackColor="#275353" />
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
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="GridView2" EventName="Sorting" />
                                                    <asp:AsyncPostBackTrigger ControlID="GridView2" EventName="PageIndexChanging" />
                                                </Triggers>
                                            </asp:UpdatePanel>
                                            <!--  有沒有加上第二層 UpdatePanel2，結果都一樣。 (end) -->
                                    
                                    
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <RowStyle BackColor="#E3EAEB" VerticalAlign="Top" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" 
                            HorizontalAlign="Left" />
                        <AlternatingRowStyle BackColor="White" VerticalAlign="Top" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    
                    <asp:Label runat="server" ID="OuterTimeLabel" 
                        style="background-color: #0000FF; color: #CCFFFF;">第一層的GridView時間：<%=DateTime.Now.ToLongTimeString() %></asp:Label>
                    <br />========================================<br />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView1" EventName="PageIndexChanging" />
                <asp:AsyncPostBackTrigger ControlID="GridView1" EventName="Sorting" />
            </Triggers>
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
