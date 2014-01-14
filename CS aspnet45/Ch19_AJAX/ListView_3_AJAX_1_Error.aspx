<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListView_3_AJAX_1_Error.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_ListView_3_AJAX_1_Error" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ListView (AJAX)</title>
    <style type="text/css">
        .style1
        {
            color: #0033CC;
        }
        .style2
        {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
    這個 ListView控制項，Master-Detail（主細表），<br />
    <br />
    <span class="style2">在個別的「樣版」裡面，都加上 UpdatePanel，會出現什麼情況？？</span><br 
        class="style2" />
    <br class="style2" />
    <span class="style2">本範例會出現錯誤！</span><br />
    <br />
     <br />
     <br />
    
    

        
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" 
        DataSourceID="SqlDataSource1" 
        style="font-size: small">
        
        <AlternatingItemTemplate>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
            <span style="background-color: #FF99CC;">
            <span class="style1">
             id:<asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>'></asp:Label>
            </span>
            <br class="style1" />
            <span class="style1">test_time:
            <asp:Label ID="test_timeLabel" runat="server" 
                Text='<%# Eval("test_time","{0:yyyy/MM/dd}") %>'></asp:Label>
            </span>
            <br class="style1" />
            <span class="style1">title:
            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' Font-Bold="True" Font-Size="Medium"></asp:Label>
            </span>
            <br class="style1" />
            <span class="style1">summary:
            <asp:Label ID="summaryLabel" runat="server" Text='<%# Eval("summary") %>'></asp:Label>
            </span>
            <br />

            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />&nbsp;
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />&nbsp;
            <asp:Button ID="Button2" runat="server" Text="選取（Select）" CommandName="Select"  />       
            <hr />
            </span>
        </ContentTemplate>               
</asp:UpdatePanel>    
        </AlternatingItemTemplate>
        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">

                <span ID="itemPlaceholder" runat="server"></span>
            </div>
            <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                
                <asp:DataPager ID="DataPager2" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
               
            </div>
        </LayoutTemplate>
        <InsertItemTemplate>
            <span style="">test_time:
            <asp:TextBox ID="test_timeTextBox" runat="server" 
                Text='<%# Bind("test_time") %>' />
            <br />
            class:
            <asp:TextBox ID="classTextBox" runat="server" Text='<%# Bind("class") %>' />
            <br />
            title:
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
            <br />
            summary:
            <asp:TextBox ID="summaryTextBox" runat="server" Text='<%# Bind("summary") %>' />
            <br />
            article:
            <asp:TextBox ID="articleTextBox" runat="server" Text='<%# Bind("article") %>' />
            <br />
            author:
            <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
            <br />
            hit_no:
            <asp:TextBox ID="hit_noTextBox" runat="server" Text='<%# Bind("hit_no") %>' />
            <br />
            get_no:
            <asp:TextBox ID="get_noTextBox" runat="server" Text='<%# Bind("get_no") %>' />
            <br />
            email_no:
            <asp:TextBox ID="email_noTextBox" runat="server" 
                Text='<%# Bind("email_no") %>' />
            <br />
            approved:
            <asp:TextBox ID="approvedTextBox" runat="server" 
                Text='<%# Bind("approved") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Clear" />
            <br />
            <br />
            </span>
        </InsertItemTemplate>   
        <SelectedItemTemplate>  
             
            <span style="background-color: #66FF99; font-weight: bold;color: #004D00;">
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            test_time，日期:
            <asp:Label ID="test_timeLabel" runat="server" Text='<%# Eval("test_time") %>' />
            <br />
            class，分類:
            <asp:Label ID="classLabel" runat="server" Text='<%# Eval("class") %>' />
            <br />
            title，標題:
            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' Font-Size="Medium" ForeColor="Red" />
            <br />
            summary，摘要:
            <asp:Label ID="summaryLabel" runat="server" Text='<%# Eval("summary") %>' Font-Size="Small" ForeColor="#666666" />
            <br />
            article，文章內容:
            <asp:Label ID="articleLabel" runat="server" Text='<%# Eval("article") %>' Font-Size="Medium" />
            <br />
            author，作者:
            <asp:Label ID="authorLabel" runat="server" Text='<%# Eval("author") %>' />
            <br />
            hit_no，文章點閱率:
            <asp:Label ID="hit_noLabel" runat="server" Text='<%# Eval("hit_no") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" /> &nbsp;
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                Text="Delete" /> &nbsp;
            <asp:Button ID="Button3" runat="server" Text="看完了，恢復到 Master狀態" CommandName="my_Detail"  /><br />                
            <br />
            <br />
            </span>       
            
        </SelectedItemTemplate>
       
        <EmptyDataTemplate>
            <span>No data was returned. 抱歉，資料庫裡面，找不到任何一筆資料。</span>
        </EmptyDataTemplate>
        
        <EditItemTemplate>
            <span style="background-color: #999999;">id:
            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            <br />
            test_time:
            <asp:TextBox ID="test_timeTextBox" runat="server" 
                Text='<%# Bind("test_time") %>' />
            <br />
            class:
            <asp:TextBox ID="classTextBox" runat="server" Text='<%# Bind("class") %>' />
            <br />
            title:
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
            <br />
            summary:
            <asp:TextBox ID="summaryTextBox" runat="server" Text='<%# Bind("summary") %>' />
            <br />
            article:
            <asp:TextBox ID="articleTextBox" runat="server" Text='<%# Bind("article") %>' />
            <br />
            author:
            <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
            <br />
            hit_no:
            <asp:TextBox ID="hit_noTextBox" runat="server" Text='<%# Bind("hit_no") %>' />
            <br />
            get_no:
            <asp:TextBox ID="get_noTextBox" runat="server" Text='<%# Bind("get_no") %>' />
            <br />
            email_no:
            <asp:TextBox ID="email_noTextBox" runat="server" 
                Text='<%# Bind("email_no") %>' />
            <br />
            approved:
            <asp:TextBox ID="approvedTextBox" runat="server" 
                Text='<%# Bind("approved") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Cancel" />
            <br />
            <br />
            </span>
        </EditItemTemplate>
        
        <ItemTemplate>
<asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>

            id:<asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>'></asp:Label>
            <br />
            test_time:
            <asp:Label ID="test_timeLabel" runat="server" Text='<%# Eval("test_time","{0:yyyy/MM/dd}") %>'></asp:Label>
            <br />
            title:
            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' Font-Bold="True" Font-Size="Medium"></asp:Label>
            <br />
            summary:
            <asp:Label ID="summaryLabel" runat="server" Text='<%# Eval("summary") %>'></asp:Label>
            <br />
         
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />&nbsp;
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Select（選取）" CommandName="Select"/>
        </ContentTemplate>               
</asp:UpdatePanel>    
            <hr />
        </ItemTemplate>
    </asp:ListView>
    

    
    <br />
    <div style="font-size: small">
    
 
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            DeleteCommand="DELETE FROM [test] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [test] ([test_time], [class], [title], [summary], [article], [author], [hit_no], [get_no], [email_no], [approved]) VALUES (@test_time, @class, @title, @summary, @article, @author, @hit_no, @get_no, @email_no, @approved)" 
            SelectCommand="SELECT * FROM [test]" 
            UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [class] = @class, [title] = @title, [summary] = @summary, [article] = @article, [author] = @author, [hit_no] = @hit_no, [get_no] = @get_no, [email_no] = @email_no, [approved] = @approved WHERE [id] = @id">
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
    
 
    
    </div>
    </form>
 
</body>
</html>
