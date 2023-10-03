<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Home.aspx.cs" Inherits="AirlineManagement.Home1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





    <div class="glass">

        <div id="carouselExampleFade" class="carousel slide carousel-fade " data-bs-ride="carousel">
            <div class="carousel-inner ">
                <div class="carousel-item active">
                    <img src="images/three.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/travel.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/sky.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                <!--<span class="carousel-control-prev-icon" aria-hidden="true"></span>-->
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                <!-- <span class="carousel-control-next-icon" aria-hidden="true"></span>-->
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <div class="effect">

            <div class="row mb-5 f-row d-flex ml-4 pr-5">
                <div class="col-2">
                    <div id="list-example" class="list-group mt-2">
                        <a class="list-group-item list-group-item-action" href="#list-item-1">
                            <i class="fas fa-plane-departure ml-2 fa-2x"></i><span class="ml-2">Plan a trip</span>
                        </a>
                    </div>
                </div>
                <div class="col-8 d-flex ">
                    <div class="">
                        <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-up-right">
                            <line x1="7" y1="17" x2="17" y2="7"></line><polyline points="7 7 17 7 17 17"></polyline></svg>
                        <span>Departure</span>
                        <asp:DropDownList ID="DropDownList1" runat="server" class="combo">
                            <asp:ListItem Value="Ann">Ann</asp:ListItem>
                            <asp:ListItem Value="Gwa">Gwa</asp:ListItem>
                            <asp:ListItem Value="Thandwe">Thandwe</asp:ListItem>
                            <asp:ListItem Value="Sittwe">Sittwe</asp:ListItem>
                            <asp:ListItem Value="Kyaukphyu">Kyaukphyu</asp:ListItem>
                            <asp:ListItem>Minbya</asp:ListItem>
                            <asp:ListItem>MraukOo</asp:ListItem>
                            <asp:ListItem>Kyauktaw</asp:ListItem>
                            <asp:ListItem>Ponnagyum</asp:ListItem>
                            <asp:ListItem>Rathadaung</asp:ListItem>
                            <asp:ListItem>Myebon</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="ml-2 ">
                        <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-down-left">
                            <line x1="17" y1="7" x2="7" y2="17"></line><polyline points="17 17 7 17 7 7"></polyline></svg>
                        <span>Destination</span>
                        <asp:DropDownList ID="DropDownList2" runat="server" class="combo">
                            <asp:ListItem Value="Ann">Ann</asp:ListItem>
                            <asp:ListItem Value="Gwa">Gwa</asp:ListItem>
                            <asp:ListItem Value="Thandwe">Thandwe</asp:ListItem>
                            <asp:ListItem Value="Sittwe">Sittwe</asp:ListItem>
                            <asp:ListItem Value="Kyaukphyu">Kyaukphyu</asp:ListItem>
                            <asp:ListItem>Minbya</asp:ListItem>
                            <asp:ListItem>MraukOo</asp:ListItem>
                            <asp:ListItem>Kyauktaw</asp:ListItem>
                            <asp:ListItem>Ponnagyum</asp:ListItem>
                            <asp:ListItem>Rathadaung</asp:ListItem>
                            <asp:ListItem>Myaebon</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="ml-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar">
                            <rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                        <span>Departing On</span>
                        <asp:TextBox ID="txtdepart" runat="server" TextMode="Date"></asp:TextBox>
                    </div>

                   

                    <div class="ml-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user">
                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                        <span>Passengers</span>
                        <asp:TextBox ID="txtpassenger" runat="server" class="" placeholder="for only one passenger"></asp:TextBox>
                    </div>
                </div>
                <div class="col-2 mt-3 continue">
                    <asp:Button ID="Button1" runat="server" Text="Continue" OnClick="Button1_Click" class="btn bg-primary text-white" />

                </div>
            </div>

            <div class="row  s-row ml-4">
                <div class="col-2 pt-2">
                    <div id="list-group" class="list-group">
                        <a class="list-group-item list-group-item-action" href="Findbooking.aspx">
                            <i class="fas fa-search fa-2x"></i><span class="ml-2">Find a booking</span>
                        </a>
                    </div>
                </div>
                <div class="col-6 pt-3 ">
                    <div>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CellSpacing="20" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                            <asp:ListItem Value="1" onclick="hide()" Selected="True">&nbsp;&nbsp; One Way&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>

                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="col-4 pt-3 pr-5">
                    <asp:TextBox ID="TextBox4" placeholder="🛈 promo code" runat="server" ToolTip="A Promotion Code is an alpha-numeric code which relates to a special offer.This code is provided as part of a special promotion an will be valid for that particular offer and period only."></asp:TextBox>
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                </div>
                <br />
            </div>
        </div>
    </div>
    <div class="row mt-5">
        <br />
        <br />
        <br />
        <section id="travelinformation">
            <h3 align="center"><span>-</span>Travel Information<span>-</span></h3>
            <div class="col-2">
            </div>
            <div class="d-flex justify-content-center">
                <div class="card col-3 mr-4" style="width: 300px">
                <img class="card-img-top" src="images/nat.jpg" alt="Card image" style="width: 100%">
                <div class="card-body">
                    <h4 class="card-title">Sittway</h4>
                    <p class="card-text">Sittway is the capital of Rakhin State and a port city...</p>
                    <a href="#" class="btn btn-primary">Read More</a>
                </div>
            </div>



            <div class="card col-3 mr-4" style="width: 300px">
                <img class="card-img-top" src="images/kyauk.jpg" alt="Card image" style="width: 100%">
                <div class="card-body">
                    <h4 class="card-title">Kyaukpyu</h4>
                    <p class="card-text">Kyaukpyu is a major town in Rakhine State, in western Myanmar...</p>
                    <a href="#" class="btn btn-primary">Read More</a>
                </div>
            </div>


            <div class="card col-3 mr-4" style="width: 300px">
                <img class="card-img-top" src="images/f1.jpg" alt="Card image" style="width: 100%">
                <div class="card-body">
                    <h4 class="card-title">Ann</h4>
                    <p class="card-text">Ann Township is a township of Kyaukpyu District...</p>
                    <a href="#" class="btn btn-primary">Read More</a>
                </div>
            </div>
            </div>
            

            <br>
            <br />
            <br />
            <br />

           


</asp:Content>



