<%@ Page Title="" Language="C#" MasterPageFile="~/Book_Sample/Ch19_AJAX/MasterPage_AJAX.master" AutoEventWireup="true" CodeFile="MasterPage_01_AJAX.aspx.cs" Inherits="Book_Sample_Ch19_AJAX_MasterPage_01_AJAX" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- MasterPage的「表頭」 -->
    <style type="text/css">
        .style1 {
            color: #006600;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <strong><span class="style1">外部時間：<%= System.DateTime.Now.ToLongTimeString()%></span></strong>
        <br />
        <br />
        <br />******************************************
    </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="False" 
        UpdateMode="Conditional">
        <ContentTemplate>
        UpdatePanel1 -- <%= System.DateTime.Now.ToLongTimeString()%>
            <asp:Timer ID="Timer1" runat="server" Interval="1000">
            </asp:Timer>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
    </asp:UpdatePanel>
    <p>******************************************</p>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <br />==============================
    </p>

    <asp:UpdatePanel ID="UpdatePanel2" runat="server" ChildrenAsTriggers="False" 
        UpdateMode="Conditional">
        <ContentTemplate>
        UpdatePanel2 -- <%= System.DateTime.Now.ToLongTimeString()%>
            <asp:Timer ID="Timer2" runat="server" Interval="3000">
            </asp:Timer>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer2" EventName="Tick" />
        </Triggers>
    </asp:UpdatePanel>
    <p>==============================    </p>
</asp:Content>

