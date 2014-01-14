<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_8_AJAX.aspx.cs" Inherits="Ch19_AJAX_Default_8_AJAX" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>

    <style type="text/css">
        .style1 {
            background-color: #FF6666;
            color: #FFFF66;
        }
        .style2
        {
            color: #FF0000;
        }
        .style3
        {
            background-color: #99FF66;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        
           UpdatePanel�~���A�{�b�ɶ��G<asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <br /><%=DateTime.Now.ToLongTimeString() %>
        <hr />
        <br />
        <br />
        
           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <span class="style3">(<b>���������</b>���]�t�b UpdatePanel�̭��A�o�ӽd���٤����n)
                    <br />
                    <br />
                    </span>
                    <br />
                    �ЬD��@�g�峹�G<asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="id" 
                        AutoPostBack="True">
        </asp:DropDownList>
                    &nbsp;(AJAX)
                    
                    <br /><span class="style2">UpdatePanel</span><span class="style1">�̭�</span><span 
                        class="style2">�A�{�b�ɶ��G</span>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    <br /><%=DateTime.Now.ToLongTimeString() %>
                    <br />
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT [id], [title] FROM [test]"></asp:SqlDataSource>                
                
                
                    <br />
                
                
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                        CellPadding="2" DataKeyNames="id" DataSourceID="SqlDataSource2" 
                        Font-Size="Small" ForeColor="Black" GridLines="None">
                        <FooterStyle BackColor="Tan" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                ShowSelectButton="True" />
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="test_time" HeaderText="test_time" 
                                SortExpression="test_time" />
                            <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                            <asp:BoundField DataField="summary" HeaderText="summary" 
                                SortExpression="summary" />
                            <asp:BoundField DataField="article" HeaderText="article" 
                                SortExpression="article" />
                            <asp:BoundField DataField="author" HeaderText="author" 
                                SortExpression="author" />
                            <asp:BoundField DataField="hit_no" HeaderText="hit_no" 
                                SortExpression="hit_no" />
                            <asp:BoundField DataField="get_no" HeaderText="get_no" 
                                SortExpression="get_no" />
                            <asp:BoundField DataField="email_no" HeaderText="email_no" 
                                SortExpression="email_no" />
                            <asp:BoundField DataField="approved" HeaderText="approved" 
                                SortExpression="approved" />
                        </Columns>
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                            HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
                        DeleteCommand="DELETE FROM [test] WHERE [id] = @id" 
                        InsertCommand="INSERT INTO [test] ([test_time], [class], [title], [summary], [article], [author], [hit_no], [get_no], [email_no], [approved]) VALUES (@test_time, @class, @title, @summary, @article, @author, @hit_no, @get_no, @email_no, @approved)" 
                        SelectCommand="SELECT * FROM [test] WHERE ([id] = @id)" 
                        UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [class] = @class, [title] = @title, [summary] = @summary, [article] = @article, [author] = @author, [hit_no] = @hit_no, [get_no] = @get_no, [email_no] = @email_no, [approved] = @approved WHERE [id] = @id">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="id" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="test_time" Type="DateTime" />
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
                            <asp:Parameter Name="test_time" Type="DateTime" />
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
                </ContentTemplate>
            </asp:UpdatePanel>        
            
            <br /><br />
            <hr /><br /><br />
            <br />
            UpdatePanel�~���A�{�b�ɶ��G
            <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
    </div>
    </form>
 
</body>
</html>

