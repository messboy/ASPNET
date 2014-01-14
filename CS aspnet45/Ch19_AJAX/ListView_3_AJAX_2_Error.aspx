<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListView_3_AJAX_2_Error.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_ListView_3_AJAX_2_Error" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ListView (AJAX)</title>
    <style type="text/css">
        .style1
        {
            color: #0033CC;
        }
        .style3
        {
            color: #FF3300;
            font-weight: bold;
        }
        .style4
        {
            background-color: #99CCFF;
        }
        .style5
        {
            background-color: #FFFF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
    這個 ListView控制項，Master-Detail（主細表），<span class="style5">本範例有問題</span><br />
    <br />
    外圍「<span class="style3">沒有</span>」UpdatePanel，<br />
    內部，只有<span class="style3"> ItemTemplate與 AlternateItemTemplate</span>有放置 
    UpdatePanel<br />
    <br />
    錯誤結果： <span class="style4">
    <br />
        1).Select按鈕要按<b>兩次</b>，才能動作。<br />
        </span><br />
     <br />
     <br />
    
    

        
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" 
        DataSourceID="SqlDataSource1" 
        style="font-size: small" onitemcommand="ListView1_ItemCommand">
        
        <AlternatingItemTemplate>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

            <span style="background-color: #FF99CC;">
            <span class="style1">
             id:<asp:Label ID="idLabel2" runat="server" Text='<%# Eval("id") %>'></asp:Label>
            </span>
            <br class="style1" />
            <span class="style1">test_time:
            <asp:Label ID="test_timeLabel2" runat="server" 
                Text='<%# Eval("test_time","{0:yyyy/MM/dd}") %>'></asp:Label>
            </span>
            <br class="style1" />
            <span class="style1">title:
            <asp:Label ID="titleLabel2" runat="server" Text='<%# Eval("title") %>' Font-Bold="True" Font-Size="Medium"></asp:Label>
            </span>
            <br class="style1" />
            <span class="style1">summary:
            <asp:Label ID="summaryLabel2" runat="server" Text='<%# Eval("summary") %>'></asp:Label>
            </span>
            <br />

            <asp:Button ID="Button2_AlternatingItem" runat="server" Text="選取（Select）" CommandName="Select"  />       
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
            
            <asp:Button ID="Button3_SelectedItem" runat="server" Text="看完了，恢復到 Master狀態" CommandName="my_Detail"  /><br />                
            <br />
            <br />
            </span>        
        </SelectedItemTemplate>
       
        <EmptyDataTemplate>
            <span>No data was returned. 抱歉，資料庫裡面，找不到任何一筆資料。</span>
        </EmptyDataTemplate>
        
        
        <ItemTemplate>
<asp:UpdatePanel ID="UpdatePanel2" runat="server">
    <ContentTemplate>        

            id:<asp:Label ID="idLabel3" runat="server" Text='<%# Eval("id") %>'></asp:Label>
            <br />
            test_time:
            <asp:Label ID="test_timeLabel3" runat="server" Text='<%# Eval("test_time","{0:yyyy/MM/dd}") %>'></asp:Label>
            <br />
            title:
            <asp:Label ID="titleLabel3" runat="server" Text='<%# Eval("title") %>' Font-Bold="True" Font-Size="Medium"></asp:Label>
            <br />
            summary:
            <asp:Label ID="summaryLabel3" runat="server" Text='<%# Eval("summary") %>'></asp:Label>
            <br />
         
            <asp:Button ID="Button1_Item" runat="server" Text="Select（選取）" CommandName="Select"/>
        </ContentTemplate>               
</asp:UpdatePanel>    
            
            <hr />
        </ItemTemplate>
    </asp:ListView>
    

    
    <br />
    <div style="font-size: small">
    
 
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT * FROM [test]" >
        </asp:SqlDataSource>
    
 
    
    </div>
    </form>
 
</body>
</html>
