﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridView_RowCreated_RowDataBound_02.aspx.cs" Inherits="Book_Sample_Ch10_GridView_RowCreated_RowDataBound_02" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #CC0000;
            font-weight: bold;
        }
        .style2
        {
            color: #0000CC;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        GridView的 <span class="style1">RowCreated事件</span>與 <span class="style2">RowDataBound事件</span>的比較<br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id"
            DataSourceID="SqlDataSource1" OnRowCreated="GridView1_RowCreated" OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True"
                    SortExpression="id" />
                <asp:BoundField DataField="test_time" HeaderText="test_time" SortExpression="test_time" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
            SelectCommand="SELECT top 5 [id], [title], [test_time], [author] FROM [test]">
        </asp:SqlDataSource>
        <br />
        1. <span class="style1">RowCreated事件</span>較早執行。<br />
        2. <br />
    </div>
    </form>
</body>
</html>
