<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test_01_Manual.aspx.cs" Inherits="Book_Sample_CaseStudy_Street_Address_Test_01_Manual" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            width: 100%;
        }
        .style2
        {
            color: #0000FF;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        原本的 Address_02資料表內容<br />
        <asp:GridView ID="GridView0" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="a2_id" DataSourceID="SqlDataSource0" 
            ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="city_name" HeaderText="city_name" 
                    SortExpression="city_name" />
                <asp:BoundField DataField="district_name" HeaderText="district_name" 
                    SortExpression="district_name" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource0" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT * FROM [Address_2]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        整理之後的畫面（<span class="style2">用 &quot;幾個&quot; HTML Table來組合</span>）：<br />
        <table class="style1">
            <tr>
                <td bgcolor="#ffcccc" valign="top">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td bgcolor="#ffcccc" valign="top">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td bgcolor="#ffcccc" valign="top">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td bgcolor="#ffcccc" valign="top">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
