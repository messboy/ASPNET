<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test_02_GridView.aspx.cs" Inherits="Book_Sample_CaseStudy_Street_Address_Test_02_GridView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #003300;
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
        整理之後的畫面（透過 <span class="style1">GridView的 &quot;超連結樣版&quot;</span>來作）：<br />
        <table class="style1">
            <tr>
                <td bgcolor="#ffcccc" valign="top" width="100">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td bgcolor="#ffcccc" valign="top" width="100">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td bgcolor="#ffcccc" valign="top" width="100">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td bgcolor="#ffcccc" valign="top" width="100">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" width="100px"
                        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        AutoGenerateColumns="False" DataKeyNames="a2_id"
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:HyperLinkField DataNavigateUrlFields="a2_id" 
                                DataNavigateUrlFormatString="超連結.aspx?id={0}" DataTextField="district_name" />
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:testConnectionString %>">
                    </asp:SqlDataSource>
                </td>
                <td valign="top">
                    <asp:GridView ID="GridView2" runat="server" BackColor="White" width="100px"
                        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        AutoGenerateColumns="False" DataKeyNames="a2_id"
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:HyperLinkField DataNavigateUrlFields="a2_id" 
                                DataNavigateUrlFormatString="超連結.aspx?id={0}" DataTextField="district_name" />
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:testConnectionString %>">
                    </asp:SqlDataSource>
                </td>
                <td valign="top">
                    <asp:GridView ID="GridView3" runat="server" BackColor="White" width="100px"
                        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        AutoGenerateColumns="False" DataKeyNames="a2_id"
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:HyperLinkField DataNavigateUrlFields="a2_id" 
                                DataNavigateUrlFormatString="超連結.aspx?id={0}" DataTextField="district_name" />
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:testConnectionString %>">
                    </asp:SqlDataSource>
                </td>
                <td valign="top">
                    <asp:GridView ID="GridView4" runat="server" BackColor="White" width="100px"
                        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        AutoGenerateColumns="False" DataKeyNames="a2_id"
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:HyperLinkField DataNavigateUrlFields="a2_id" 
                                DataNavigateUrlFormatString="超連結.aspx?id={0}" DataTextField="district_name" />
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:testConnectionString %>">
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br />    

    </div>
    
    </form>
</body>
</html>
