<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AJAX_Case_2.aspx.cs" Inherits="Ch16_AJAX_Case_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�� �� �ǡ]AJAX���^----  �D�e��</title>
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        &lt;&lt;�� �� ��&nbsp; <span class="style1">AJAX</span>&gt;&gt;<hr />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>


                <asp:Label ID="Label_timer" runat="server"
                    Style="color: #FFFF66; background-color: #0000FF"></asp:Label>
                &nbsp;/ 
            �C0.5��z�LAJAX��s�@���e��<hr />

                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:Timer ID="Timer1" runat="server" Interval="500" OnTick="Timer1_Tick">
                </asp:Timer>
                <br />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
        <hr />

        �п�J��Ѥ��e�G<asp:TextBox ID="TextBox1" runat="server" Width="348px"></asp:TextBox>
        &nbsp;<asp:Button ID="Button1" runat="server" Text="Submit/�e�X" OnClick="Button1_Click" />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ControlToValidate="TextBox1" ErrorMessage="���i�H�d�ťաI" Style="text-align: center"></asp:RequiredFieldValidator>
        <br />
        <br />
        <div align="center">
            <asp:Button ID="Button2" runat="server" Text="�����F�A�T�T���Exit" OnClick="Button2_Click" Style="text-align: right" />
        </div>
    </p>
    </form>

</body>
</html>
