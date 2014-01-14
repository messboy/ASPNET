<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customizing_Error_Handling_02.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_Customizing_Error_Handling_02" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
    #UpdatePanel1 {
              width: 200px; height: 50px;
              border: solid 1px gray;
    }
    #AlertDiv{
            left: 40%; top: 40%;
            position: absolute; width: 200px;
            padding: 12px; 
            border: #000000 1px solid;
            background-color: white; 
            text-align: left;
            visibility: hidden;
            z-index: 99;
    }
    #AlertButtons{
             position: absolute; right: 5%; bottom: 5%;
    }
        .style1
        {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #0000CC;
        }
    </style>

</head>

<body id="bodytag">
<!-- 重點！！上面 <body>這邊需要修改！！  -->

    <form id="form1" runat="server">
        <div>

        自訂 UpdatePanel控制項的錯誤處理 <span class="style1">（Client端，JavaScript）</span><br />
        <a href="http://msdn.microsoft.com/zh-tw/library/Bb398934(v=VS.100).aspx">
        http://msdn.microsoft.com/zh-tw/library/Bb398934(v=VS.100).aspx</a>
        <br />
        <br />
        <br />
        請在「除數」裡面輸入 0，以察看錯誤訊息！<br />
&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server" 
                onasyncpostbackerror="ScriptManager1_AsyncPostBackError">
            </asp:ScriptManager>


            <!-- **  自己動手加入這一區的 <div> ************************************************(start) -->
            <script type="text/javascript" language="javascript">
                var divElem = 'AlertDiv';
                var messageElem = 'AlertMessage';
                var bodyTag = 'bodytag';

                Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);

                function ToggleAlertDiv(visString) {
                    if (visString == 'hidden') {
                        $get(bodyTag).style.backgroundColor = 'white';
                    }
                    else {
                        $get(bodyTag).style.backgroundColor = 'gray';
                    }
                    var adiv = $get(divElem);
                    adiv.style.visibility = visString;
                }
                function ClearErrorState() {
                    $get(messageElem).innerHTML = '';
                    ToggleAlertDiv('hidden');
                }
                function EndRequestHandler(sender, args) {
                    if (args.get_error() != undefined) {
                        var errorMessage;
                        if (args.get_response().get_statusCode() == '200') {
                            errorMessage = args.get_error().message;
                        }
                        else {
                            // Error occurred somewhere other than the server page.
                            errorMessage = 'An unspecified error occurred. ';
                        }
                        args.set_errorHandled(true);
                        ToggleAlertDiv('visible');
                        $get(messageElem).innerHTML = errorMessage;
                    }
                }
            </script>
            <!-- **  自己動手加入這一區的 <div> ************************************************(end) -->


            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                    <asp:TextBox ID="TextBox1" runat="server" Width="39px"></asp:TextBox>
                    /
                    <asp:TextBox ID="TextBox2" runat="server" Width="39px" ForeColor="Red"></asp:TextBox>
                    =
                    <asp:Label ID="Label1" runat="server"></asp:Label><br />
                    <asp:Button ID="Button1" runat="server" Text="calculate" 
                        onclick="Button1_Click" />

                </ContentTemplate>
            </asp:UpdatePanel>


            <!-- **  自己動手加入這一區的 <div> ************************************************(start) -->
            <div id="AlertDiv">
                <div id="AlertMessage"> </div>
                <br />
                <div id="AlertButtons">
                        <input id="OKButton" type="button" value="OK" runat="server" onclick="ClearErrorState()" />
                </div>
            </div>
            <!-- **  自己動手加入這一區的 <div> ************************************************(end) -->


        </div>
    </form>
</body>
</html>


