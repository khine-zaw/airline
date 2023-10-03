<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Findbooking.aspx.cs" Inherits="AirlineManagement.Findbooking" %>

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

            <div class="row f-row d-flex ml-4">
                <div class="col-2">
                    <div id="list-example" class="list-group pt-3">
                        <a class="list-group-item list-group-item-action" href="Home.aspx">
                            <i class="fas fa-plane-departure ml-2 fa-2x"></i><span class="ml-2">Plan a trip</span>
                        </a>
                    </div>
                </div>
                <div class="col-3 mt-3">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Last Name"></asp:TextBox>
                </div>
                <div class="col-7 mt-5">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-lg btn-outline-secondary" />
                </div>
                <div class="col-2">
                    <div id="list-group" class="list-group mb-3">
                        <a class="list-group-item list-group-item-action" href="Findbooking.aspx">
                            <i class="fas fa-search fa-2x"></i><span class="ml-2">Find a booking</span>
                        </a>
                    </div>
                </div>
                <div class="col-8">
                    <asp:TextBox ID="txtrandom" runat="server" placeholder="Booking Reference"></asp:TextBox>
                    <br />
                </div>
            </div>
            <div class="grid">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                    <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                    <asp:BoundField DataField="Dateofbirth" HeaderText="Dateofbirth" SortExpression="Dateofbirth" />
                    <asp:BoundField DataField="Emailaddress" HeaderText="Emailaddress" SortExpression="Emailaddress" />
                    <asp:BoundField DataField="Nrcnumber" HeaderText="Nrcnumber" SortExpression="Nrcnumber" />
                    <asp:BoundField DataField="Phonenumber" HeaderText="Phonenumber" SortExpression="Phonenumber" />
                    <asp:BoundField DataField="Departure" HeaderText="Departure" SortExpression="Departure" />
                    <asp:BoundField DataField="Arrival" HeaderText="Arrival" SortExpression="Arrival" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Random" HeaderText="Random" SortExpression="Random" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Firstname], [Lastname], [Dateofbirth], [Emailaddress], [Nrcnumber], [Phonenumber], [Departure], [Arrival], [Date], [Time], [Price], [Random] FROM [PassengerRegister] WHERE ([Random] = @Random)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtrandom" Name="Random" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                </div>
        </div>
</asp:Content>
