<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page_4.aspx.cs" Inherits="Ch15_Page_4" %>

<%@ PreviousPageType VirtualPath="Page_3.aspx" %>
<!-- �W���o�@��O [���I] �I�I�I�I�I -->



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�ĤG�ؼg�k #2</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            background-color: #FFFF66;
        }
        .style2
        {
            color: #0033CC;
            background-color: #FFFF66;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>Cross-Page Posting <b>�ĤG�ؼg�k</b> #2</p>
    <div>
        ���{���ݷf�t Page_3.aspx<br />
        �{���W��A�ݭn�[�g�@��--<span class="style1">&lt;%</span><span class="style2">@ 
        PreviousPageType</span><span class="style1"> VirtualPath=&quot;Page_3.aspx&quot;%&gt;</span><br />
        <br />
        �q Page_3.aspx�ǨӪ�����G<asp:Label ID="Label1" runat="server" Font-Bold="True"
            ForeColor="Red" Text="Label"></asp:Label>

    </div>
    </form>

</body>
</html>

