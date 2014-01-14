<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Food_Calorie_Calculator_multi_AJAX.aspx.cs" Inherits="Book_Sample_CaseStudy_FoodCalorie_Food_Calorie_Calculator_multi_AJAX" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>食物的卡路里計算#3(AJAX)</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
        .style2
        {
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <b>食物的卡路里計算（<span class="style1">複選</span> / AJAX）</b><br />
        資料來源：<a href="http://health.nkfust.edu.tw/svelte/sveltep3.htm">http://health.nkfust.edu.tw/svelte/sveltep3.htm</a>&nbsp;
        <br />
        <br />
        <span class="style2">重點：</span><br class="style2" />
        <span class="style2">&nbsp;&nbsp;&nbsp; 1.&nbsp; 不設定 AutoPostBack</span><br 
            class="style2" />
        <span class="style2">&nbsp;&nbsp;&nbsp; 2.&nbsp; 巢狀 UpdatePanel，透過兩個 Button按鈕互相作 
        Trigger。<br />
        </span><br />
        <br />
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="False" 
        UpdateMode="Conditional" >
        <ContentTemplate>
        
            請挑選：<asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="food_name" 
            DataValueField="food_calorie">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
                    SelectCommand="SELECT [food_name], [food_calorie] FROM [Food_Calorie]">
            </asp:SqlDataSource>

    

    
                    <p>&nbsp;</p>
                    

                     <p>
                         &nbsp;<asp:UpdatePanel ID="UpdatePanel2" runat="server" >
                        <ContentTemplate>    
                               <table border="1" width="100%" id="table1" style="border: 2px dotted #000080">      
                               <tr>
                                   <td bgcolor="#FFCCFF">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您剛剛點選的食物：<asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                                    &nbsp;
                                    <asp:Button ID="Button2" runat="server" Text="點選 Listbox 的子選項，可以刪除之" 
                                           onclick="Button2_Click" />
                                    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 卡路里：<asp:Label ID="Label1" runat="server"></asp:Label>
                                    <br />
                                    </td>
                                </tr>
                                <tr>
                                   <td>
                                         <hr />
                                         <br />
                                          Total：<asp:Label ID="Label2" runat="server" 
                                             style="color: #0000FF; background-color: #FFFF00;"></asp:Label>
                                         卡路里
                                    </td>
                                </tr>
                              </table>   
                        </ContentTemplate>
                             <Triggers>
                                 <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                             </Triggers>
                    </asp:UpdatePanel>     
  
                         <p>
                         </p>
  
                         <p>
                         </p>
  
                         <p>
                         </p>
  
                    </p>

        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>            
&nbsp;<p>
        &nbsp;</p>
    </form>
 
</body>
</html>
