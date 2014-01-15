<%@ Control Language="C#" AutoEventWireup="true" CodeFile="14-單頁資料增刪查改.ascx.cs" Inherits="_14_單頁資料增刪查改" %>


    <p>
        公司名稱 :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" Width="271px">
        </asp:DropDownList>
        <asp:TextBox ID="TextBox5" runat="server" Width="200px" Visible="False"></asp:TextBox>
    </p>
<asp:Panel ID="Panel1" runat="server" Enabled="False">
    <p>
        編號 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator">不能空白</asp:RequiredFieldValidator>
    </p>
    <p>
        聯絡人 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
    </p>
    <p>
        聯絡項目 :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
    </p>
    <p>
        地址 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
    </p>
    <p>
        城市 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
    </p>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="False">
        <p>
            <asp:Button ID="ok_Button" runat="server" Height="29px" OnClick="ok_Button_Click" Text="確認" Width="86px" />
            &nbsp;<asp:Button ID="cancel_Button" runat="server" Height="29px" OnClick="cancel_Button_Click" Text="取消" Width="86px" />
        </p>
    </asp:PlaceHolder>
</asp:Panel>

<asp:PlaceHolder ID="menu_placeholder" runat="server">
    <p>
        <asp:Button ID="addbutton" runat="server" OnClick="addbutton_Click" Text="新增" />&nbsp;
        <asp:Button ID="updatebutton" runat="server" OnClick="update_Click" Text="修改" />&nbsp;
        <asp:Button ID="deletebutton" runat="server" OnClick="deletebutton_Click" Text="刪除" OnClientClick="if(!confirm('確定刪除?')) return;" UseSubmitBehavior="false" />
    </p>
</asp:PlaceHolder>
 


<asp:HiddenField ID="HiddenField1" runat="server" Value="false" />

 


