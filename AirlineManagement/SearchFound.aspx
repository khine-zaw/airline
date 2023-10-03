<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="SearchFound.aspx.cs" Inherits="AirlineManagement.SearchFound" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-2">
        </div>
        <div class="col-8 d-flex">
            <div class="">
                <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-up-right">
                    <line x1="7" y1="17" x2="17" y2="7"></line><polyline points="7 7 17 7 17 17"></polyline></svg>
                <span>Departure</span>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="Ann(VBA)">Ann(VBA)</asp:ListItem>
                    <asp:ListItem Value="Gwa">Gwa</asp:ListItem>
                    <asp:ListItem Value="Thandwe(SNW)">Thandwe(SNW)</asp:ListItem>
                    <asp:ListItem Value="Sittwe(AKY)">Sittwe(AKY)</asp:ListItem>
                    <asp:ListItem Value="Kyaukphyu(KYP)">Kyaukphyu(KYP)</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="ml-2">
                <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-down-left">
                    <line x1="17" y1="7" x2="7" y2="17"></line><polyline points="17 17 7 17 7 7"></polyline></svg>
                <span>Destination</span>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Value="Ann(VBA)">Ann(VBA)</asp:ListItem>
                    <asp:ListItem Value="Gwa">Gwa</asp:ListItem>
                    <asp:ListItem Value="Thandwe(SNW)">Thandwe(SNW)</asp:ListItem>
                    <asp:ListItem Value="Sittwe(AKY)">Sittwe(AKY)</asp:ListItem>
                    <asp:ListItem Value="Kyaukphyu(KYP)">Kyaukphyu(KYP)</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="ml-2">
                <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar">
                    <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                <span>Departing On</span>
                <asp:TextBox ID="txtdepart" runat="server" TextMode="Date"></asp:TextBox>
            </div>

            <div class="ml-2" id="hide">
                <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar">
                    <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                <span>Returing On</span>
                <asp:TextBox ID="txtreturn" runat="server" TextMode="Date"></asp:TextBox>
            </div>

            <div class="ml-2">
                <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user">
                    <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                <span>Passengers</span>
                <asp:TextBox ID="txtpassenger" runat="server" class=""></asp:TextBox>
            </div>
        </div>
        <div class="col-2 mt-4">
             <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>
