<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_4_3_SqlDataSource_Manual_DataReader.aspx.cs" Inherits="Ch14_Default_4_3_SqlDataSource_Manual_DataReader" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>��SqlDataSource���uDataSourceMode�v�]�w��DataReader</title>
</head>
<body>
     <form id="form1" runat="server">
     <div>
     ��SqlDataSource���uDataSourceMode�v�]�w��DataReader
     <hr />
    <p>
        <strong><span style="color: #ff0000">
            ���FGridView���~, ��L�{�� 100%���O��g��<br />
            <span style="color: #3300ff; text-decoration: underline">
            HTML�e���W�A�S�� SqlDataSource</span></span></strong></p>
            
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" Font-Size="Small" 
        ForeColor="#333333" GridLines="None">
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#E3EAEB" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <p>&nbsp;</p>

    
    </div>
    </form>
 
</body>
</html>
