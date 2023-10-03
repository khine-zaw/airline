<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admindashboard.aspx.cs" Inherits="AirlineManagement.Admindashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-9">
        <div class="alert alert-info" role="alert">
            <span>Warmely Welcome &nbsp;</span>
            <asp:Label ID="lbname" runat="server"></asp:Label> 
        </div>
    </div>
</asp:Content>
