<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page_1.aspx.cs" Inherits="Ch15_Page_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Cross-Page Posting #1</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
        .style2
        {
            font-weight: bold;
            background-color: #FFFF99;
        }
    </style>
</head>
<body>
    <p>
        Cross-Page Posting (������i�K) #1
    </p>
    <p class="style1">
        �бz<span class="style2">���I��@�Ӥ��</span>��A�A�ӫ��U���s�I
    </p>
    <form id="form1" runat="server">
    <p>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC"
            BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest"
            Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px"
            ShowGridLines="True" Width="220px">
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt"
                ForeColor="#FFFFCC" />
        </asp:Calendar>
        <asp:Button ID="Button1" runat="server" Text="Button1_����X�{�b�U���� TextBox"
            OnClick="Button1_Click" />
        &nbsp;
    </p>
    <p>
        �z����ܪ�����O�G<asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
    </p>
    <hr />
    <p align="center">
        <asp:Button ID="Button2" runat="server" PostBackUrl="Page_2.aspx"
            Text="Button2_����X�{�b�U�@���]Page_2.aspx�^" Style="text-align: center" />
    </p>

    </form>

</body>
</html>
