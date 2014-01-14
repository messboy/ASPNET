<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search_Eng_1_Auto.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_Search_Eng_1_Auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>簡單的搜尋引擎 #1（不寫程式）</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    簡單的搜尋引擎 #1（不寫程式）<br /><hr />
    <br />
    
    
        請輸入關鍵字（搜尋title欄位）<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    
    
    </div>
    <p>
        網頁被執行的時間：<font color="blue"><%=DateTime.Now.ToLongTimeString() %></font>
    </p>
    <p>
        ======= UpdatePanel ========================</p>
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="False" 
        UpdateMode="Conditional">
        <ContentTemplate>
        
             UpdatePanel「內部」時間：<font color="green"><%=DateTime.Now.ToLongTimeString() %></font>
             <br /><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                ForeColor="Black" GridLines="Vertical">
                <RowStyle BackColor="#F7F7DE" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="test_time" HeaderText="test_time" 
                        SortExpression="test_time" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
                SelectCommand="SELECT [id], [test_time], [title] FROM [test] WHERE ([title] LIKE '%' + @title + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" PropertyName="Text"
                                                       Name="title" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
    </form>
</body>
</html>
