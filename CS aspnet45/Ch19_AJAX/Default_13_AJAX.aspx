<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_13_AJAX.aspx.cs" Inherits="Ch19_AJAX_Default_13_AJAX" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <script type="text/javascript">
    
      function pageLoad() {
      }
    
    </script>
    <style type="text/css">
        .style1 {
            background-color: #FF6666;
        }
        .style2
        {
            color: #FF0000;
            background-color: #FFFF00;
        }
        .style3
        {
            font-size: small;
            font-weight: bold;
        }
        .style4
        {
            color: #FFFF66;
            background-color: #FF0066;
        }
    </style>    
</head>
<body>

    <form id="form1" runat="server">
    <p>
        本範例修改自 Default_8_AJAX.aspx的「Master-Detail」功能</p>

    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        
           UpdatePanel外面，現在時間：<asp:Label ID="Label1" runat="server" 
            Text="Label"></asp:Label>
        <br />
           
           請挑選一篇文章：<asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="id" 
                        AutoPostBack="True">
        </asp:DropDownList>
                    &nbsp;(AJAX)           
           
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT [id], [title] FROM [test]"></asp:SqlDataSource>               
           <br />
           <br /><br />
           <hr />
           
        
           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
 
                    
                    <br />UpdatePanel #1<span class="style1">裡面</span>，現在時間：<font color="green"><asp:Label 
                        ID="Label2" runat="server" style="font-size: x-large" Text="Label"></asp:Label></font>
                    <br />                                 
                
                    <br />
                
                
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                        CellPadding="2" DataKeyNames="id" DataSourceID="SqlDataSource2" 
                        Font-Size="Small" ForeColor="Black" GridLines="None">
                        <FooterStyle BackColor="Tan" />
                        <Columns>
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
                         </Columns>
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                            HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    </asp:GridView>
                    
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
                        SelectCommand="SELECT * FROM [test] WHERE ([id] = @id)" >
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="id" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="DropDownList1" 
                        EventName="SelectedIndexChanged" />
                </Triggers>
            </asp:UpdatePanel>        
            <hr />
    </div>
    <p class="style3">
        &nbsp;</p>
    <p class="style3">
        &nbsp;</p>
    <p class="style3">
        底下這功能很無聊，只是想跟讀者介紹：</p>
    <p class="style3">
        一個網頁裡面，可以有很多個「UpdatePanel」～～</p>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <span class="style4">UpdatePanel #2</span><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 即時跳動的電子時鐘（AJAX）：<asp:Label ID="Label3" runat="server" 
                style="font-size: x-large; color: #663300;" Text="Label"></asp:Label>
            <span class="style2"></span><asp:Timer ID="Timer1" 
                runat="server" Interval="1000">
            </asp:Timer>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
 
</body>
</html>
