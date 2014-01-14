﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserControl1.ascx.cs" Inherits="UserControl1" %>

<strong><span class="style2">.FindControl()方法 #1</span></strong><br />
<br />
<br />
當您按下<strong>[選取]按鈕,</strong>就會抓到那一列的 <strong>title欄位的 [值]</strong><br />
<br />
請先將 GridView的 <strong>title欄位 </strong>設定為<span class="style1"><strong>樣板</strong></span><br />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None"
    BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1"
    GridLines="Vertical" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True"
            SortExpression="id" />
        <asp:BoundField DataField="test_time" HeaderText="test_time" SortExpression="test_time" />

        <%--樣板化在這邊!!!!!!!!!!!!!!!!!!!!! --%>
        <asp:TemplateField HeaderText="title" SortExpression="title">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("title") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#0000A9" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#000065" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server"
    ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
    SelectCommand="SELECT [id], [test_time], [title] FROM [test]"></asp:SqlDataSource>
<br />
<br />
