<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default_book_4_User_Control_1.aspx.cs" Inherits="Ch11_Default_book_4_User_Control_1" %>

<!--  **** ���I�b���I�I *********************  -->
<%@ Register TagPrefix="MIS2000Lab" TagName="DataGrid2" Src="Default_book_4_UserControl_1.ascx"  %>
<!--  **** ���I�b���I�I *********************  -->


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>�ϥΪ̱���]User Control�^ #1</title>
    <style type="text/css">
        .style1
        {
            font-size: large;
            font-weight: bold;
        }
        .style2
        {
            color: #009900;
        }
        .style3
        {
            color: #0066FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
                <span style="background-color: #ffff66">
            &lt;<span class="style2">MIS2000Lab</span><span class="style1">:</span><span 
                class="style3">GridView2</span>&gt;<br />
            <br />
            <span style="background-color: #ffff00">
            �H�U�O�ϥΪ̱���]User Control�^---- 
            <br />

        
        <!--  User Control / �ϥΪ̱�� -->
        <MIS2000Lab:DataGrid2 id="DataGrid2" runat="server"/>

    </div>
    </form>
 
</body>
</html>
