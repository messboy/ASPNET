<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4_Manual_Insert.aspx.cs" Inherits="Ch06_4_Manual_Insert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�ϥγ̰򥻡B�̭�l��Web����A�q�Y�}�l���y�@�Ӹ�ƿ�J�]�s�W�^���e��</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    �ϥγ̰򥻡B�̭�l��Web����A�q�Y�}�l���y�@�Ӹ�ƿ�J�]�s�W�^���e��
    <hr />
    
        <br />
        ����G<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        �]����榡-- yyyy/MM/dd�^<br />
        <br />
        ���D�G<asp:TextBox ID="TextBox2" runat="server" Width="334px"></asp:TextBox>
        <br />
        <br />
        �����G<asp:TextBox ID="TextBox3" runat="server" Width="62px"></asp:TextBox>
        <br />
        <br />
        �K�n�G<asp:TextBox ID="TextBox4" runat="server" Width="334px"></asp:TextBox>
        <br />
        <br />
        ���e�G<asp:TextBox ID="TextBox5" runat="server" Height="133px" Width="334px" 
            TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        �@�̡G<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
    
    </div>
    <P align="center"><asp:Button ID="Button1" runat="server" Text="Submit / �s�W�@�����" 
            onclick="Button1_Click" /></p>
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
        
        InsertCommand="INSERT INTO [test] ([test_time], [class], [title], [summary], [article], [author]) VALUES (@test_time, @class, @title, @summary, @article, @author)" >
        
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" DbType="DateTime" Name="test_time" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" Name="class" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="title" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox4" Name="summary" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox5" Name="article" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox6" Name="author" PropertyName="Text" Type="String" />
        </InsertParameters>
        
    </asp:SqlDataSource>
    
    
     <div>
    
        <span class="style3">�`&nbsp; �N!!</span><br />
        �p�G�ĥ�SQL 2005�A�бNHTML�X�̭��� SqlDataSource�ѼƵy���ק�C<br />
        &lt;asp:Parameter <span class="style2">DbType=&quot;Datetime&quot;</span> Name=&quot;test_time&quot; /&gt;<br />
        <br />
        �p�G�ĥ�SQL 2008�A�h�g�� &lt;asp:Parameter <span class="style1">DbType=&quot;Date&quot;</span> 
        Name=&quot;test_time&quot; /&gt;</div>   
    </form>
 
</body>
</html>
