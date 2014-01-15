<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="14-單頁資料 增修.aspx.cs" Inherits="_14_單頁資料_增修" %>

<%@ Register Src="~/14-單頁資料增刪查改.ascx" TagPrefix="uc1" TagName="單頁資料增刪查改" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:單頁資料增刪查改 runat="server" ID="單頁資料增刪查改" />
</asp:Content>

