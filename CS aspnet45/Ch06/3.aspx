<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3.aspx.cs" Inherits="Ch06_3" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>DetailsView #2</title>
    <style type="text/css">
        .style1
        {
            background-color: #FFFF00;
        }
        .style2
        {
            background-color: #66FF66;
        }
        .style3
        {
            color: #FF0000;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <p>
        DetailsView #2�A�ק�SqlDataSource�A�Ϩ�۰ʲ��͡u�W/�R/�סv���\��
    </p>
    <form id="form1" runat="server">
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True"
            AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan"
            BorderWidth="1px" CellPadding="2" DataKeyNames="id"
            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="50px"
            Width="600px">
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue"
                HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False"
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="test_time" HeaderText="���"
                    SortExpression="test_time" />
                <asp:BoundField DataField="class" HeaderText="�峹����" SortExpression="class" />
                <asp:BoundField DataField="title" HeaderText="���D" SortExpression="title" />
                <asp:BoundField DataField="summary" HeaderText="�K�n" SortExpression="summary" />
                <asp:BoundField DataField="article" HeaderText="���e�]����^"
                    SortExpression="article" />
                <asp:BoundField DataField="author" HeaderText="�@��" SortExpression="author" />
                <asp:BoundField DataField="hit_no" HeaderText="�I�\����" SortExpression="hit_no" />
                <asp:BoundField DataField="get_no" HeaderText="����" SortExpression="get_no" />
                <asp:BoundField DataField="email_no" HeaderText="�峹��H����"
                    SortExpression="email_no" />
                <asp:BoundField DataField="approved" HeaderText="�f�֡H�O�_�i�o��H"
                    SortExpression="approved" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"
                    ShowInsertButton="True" />
            </Fields>
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:DetailsView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
            SelectCommand="SELECT * FROM [test]"
            DeleteCommand="DELETE FROM [test] WHERE [id] = @id"
            InsertCommand="INSERT INTO [test] ([test_time], [class], [title], [summary], [article], [author], [hit_no], [get_no], [email_no], [approved]) VALUES (@test_time, @class, @title, @summary, @article, @author, @hit_no, @get_no, @email_no, @approved)"
            UpdateCommand="UPDATE [test] SET [test_time] = @test_time, [class] = @class, [title] = @title, [summary] = @summary, [article] = @article, [author] = @author, [hit_no] = @hit_no, [get_no] = @get_no, [email_no] = @email_no, [approved] = @approved WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Datetime" Name="test_time" />
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
                <asp:Parameter DbType="Datetime" Name="test_time" />
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


    </p>
    <div>

        <span class="style3">�`&nbsp; �N!!</span><br />
        �p�G�ĥ�SQL 2005�A�бNHTML�X�̭��� SqlDataSource�ѼƵy���ק�C<br />
        &lt;asp:Parameter <span class="style2">DbType=&quot;Datetime&quot;</span> Name=&quot;test_time&quot; /&gt;<br />
        <br />
        �p�G�ĥ�SQL 2008�A�h�g�� &lt;asp:Parameter <span class="style1">DbType=&quot;Date&quot;</span>
        Name=&quot;test_time&quot; /&gt;
    </div>
    </form>

</body>
</html>
