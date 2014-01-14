<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search_Eng_3_Manual.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_Search_Eng_3_Manual" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>簡單的搜尋引擎 #3（自己寫程式）</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
        .style2
        {
            color: #FF0000;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    簡單的搜尋引擎 #3（自己寫程式） ---- <b>寫法雷同 AJAX_Case_02_Manual.aspx。</b><br />
        <br />
        1).自己要修改一下 SqlDataSource的「參數」&nbsp; 
        <br />
        2). UpdatePanel<span class="style2">不</span>使用 Trigger（自己寫程式）<br /><br /><hr />
    <br />
    
    
        請輸入關鍵字（搜尋title欄位）<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
    
    
    </div>
    <p>
        網頁被執行的時間：<font color="blue"><%=DateTime.Now.ToString() %></font>
    </p>

    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </p>
    <p> ======= UpdatePanel ========================</p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="False" 
        UpdateMode="Conditional">
        <ContentTemplate>
        
             UpdatePanel「內部」時間：<font color="green"><%=DateTime.Now.ToString()%></font><br /><br /><asp:GridView 
                 ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                ForeColor="Black" GridLines="Vertical">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="test_time" HeaderText="test_time" 
                        SortExpression="test_time" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="#CCCCCC" />
                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                 <SortedAscendingHeaderStyle BackColor="#808080" />
                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                 <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
                SelectCommand="SELECT [id], [test_time], [title] FROM [test] WHERE ([title] LIKE '%' + @title + '%')">
                
                <SelectParameters>
                    <asp:Parameter Name="title" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

             <br />
             <b>UpdatePanel裡面，<span class="style1">沒有</span>設定「Trigger」</b>

        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>

