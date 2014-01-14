﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_Template.aspx.cs" Inherits="Ch06_3_Template" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>DetailsView #3  修改樣板(Template)</title>
    <style type="text/css">
        .style1
        {
            font-weight: bold;
            background-color: #FFCC66;
        }
        .style3
        {
            color: #FF0000;
            font-weight: bold;
        }
        .style2
        {
            background-color: #66FF66;
        }
    </style>
</head>
<body>
    <p>
        DetailsView #3，修改SqlDataSource，使其自動產生「增/刪/修」的功能</p>
        <span class="style1">修改樣板(Template)</span>
        <hr />
    <form id="form1" runat="server">
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" 
            Width="600px">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" 
                HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="test_time" HeaderText="日期" 
                    SortExpression="test_time" />
                <asp:BoundField DataField="class" HeaderText="文章分類" SortExpression="class" />
                <asp:BoundField DataField="title" HeaderText="標題" SortExpression="title" />
                <asp:TemplateField HeaderText="摘要" SortExpression="summary">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Height="60px" 
                            Text='<%# Bind("summary") %>' Width="450px"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Height="60px" 
                            Text='<%# Bind("summary") %>' Width="450px"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("summary") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="內容（全文）" SortExpression="article">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Height="250px" 
                            Text='<%# Bind("article") %>' TextMode="MultiLine" Width="450px"></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Height="250px" 
                            Text='<%# Bind("article") %>' TextMode="MultiLine" Width="450px"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("article") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="author" HeaderText="作者" SortExpression="author" />
                <asp:BoundField DataField="hit_no" HeaderText="點閱次數" SortExpression="hit_no" />
                <asp:BoundField DataField="get_no" HeaderText="評分" SortExpression="get_no" />
                <asp:BoundField DataField="email_no" HeaderText="文章轉寄次數" 
                    SortExpression="email_no" />
                <asp:BoundField DataField="approved" HeaderText="審核？是否可發表？" 
                    SortExpression="approved" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" >
                <ItemStyle Font-Bold="True" Font-Size="Large" ForeColor="#0033CC" />
                </asp:CommandField>
            </Fields>
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:DetailsView>
        
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT * FROM [test]" 
            DeleteCommand="DELETE FROM [test] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [test] ([test_time], [class], [title], [summary], [article], [author], [hit_no], [get_no], [email_no], [approved]) VALUES (@test_time, @class, @title, @summary, @article, @author, @hit_no, @get_no, @email_no, @approved)" 
            UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [class] = @class, [title] = @title, [summary] = @summary, [article] = @article, [author] = @author, [hit_no] = @hit_no, [get_no] = @get_no, [email_no] = @email_no, [approved] = @approved WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Datetime" Name="test_time" />
                <asp:Parameter Name="class" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="summary" Type="String" />
                <asp:Parameter Name="article" Type="String" />
                <asp:Parameter Name="author" Type="String" />
                <asp:Parameter Name="hit_no" Type="Int32" />
                <asp:Parameter Name="get_no" Type="Int32" />
                <asp:Parameter Name="email_no" Type="Int32" />
                <asp:Parameter Name="approved" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter DbType="Datetime" Name="test_time" />
                <asp:Parameter Name="class" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="summary" Type="String" />
                <asp:Parameter Name="article" Type="String" />
                <asp:Parameter Name="author" Type="String" />
                <asp:Parameter Name="hit_no" Type="Int32" />
                <asp:Parameter Name="get_no" Type="Int32" />
                <asp:Parameter Name="email_no" Type="Int32" />
                <asp:Parameter Name="approved" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
            
            
    </p>
    <div>
    
        <span class="style3">注&nbsp; 意!!</span><br />
        如果採用SQL 2005，請將HTML碼裡面的 SqlDataSource參數稍做修改。<br />
        &lt;asp:Parameter <span class="style2">DbType=&quot;Datetime&quot;</span> Name=&quot;test_time&quot; /&gt;<br />
        <br />
        如果採用SQL 2008，則寫成 &lt;asp:Parameter <span class="style1">DbType=&quot;Date&quot;</span> 
        Name=&quot;test_time&quot; /&gt;</div>
    </form>
 
</body>
</html>
