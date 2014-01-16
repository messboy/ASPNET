<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="14-Dataset.aspx.cs" Inherits="_14_Dataset" %>

<%@ Register Src="~/14-Dataset.ascx" TagPrefix="uc1" TagName="Dataset" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Dataset runat="server" id="Dataset" />
</asp:Content>

