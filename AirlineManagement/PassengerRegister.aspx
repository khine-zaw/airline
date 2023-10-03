<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="PassengerRegister.aspx.cs" Inherits="AirlineManagement.PassengerRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 63px;
        }

        .auto-style3 {
            height: 55px;
        }

        .auto-style4 {
            height: 57px;
        }

        .auto-style6 {
            height: 55px;
            width: 234px;
        }

        .auto-style8 {
            height: 63px;
            width: 331px;
        }

        .auto-style11 {
            -ms-flex-line-pack: center !important;
            align-content: center !important;
            height: 109px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" passbox ">
        

                         

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

        <div class="pass">
            <table class="tab ">
                <tr>
                    <td><h4>Passenger Register</h4></td>
                </tr>
                <tr>
                   
                    <td class="auto-style8">
                        <asp:TextBox ID="txtfname" runat="server" placeholder="First Name" required="required"></asp:TextBox></td>
                    </tr>
                <tr>
                    <td class="auto-style1 ">
                        <asp:TextBox ID="txtlname" runat="server" placeholder="Last Name" required="required"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtbirth" runat="server" TextMode="Date" placeholder="Date of Birth"></asp:TextBox></td>
                   </tr>
                <tr>
                    <td class="auto-style3 ">
                        <asp:TextBox ID="txtemail" runat="server" TextMode="Email" placeholder="Email Address:"></asp:TextBox></td>
                </tr>
               
                <tr>
                    <td>
                        <asp:TextBox ID="txtnrc" runat="server" placeholder="NRC Number" required="required"></asp:TextBox></td>
                    </tr>
                <tr>
                    <td class="auto-style4 ">
                        <asp:TextBox ID="txtphone" runat="server" TextMode="Phone" placeholder="Main Phone Number" CssClass="phone" required="required"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style11">
                        <asp:Button ID="register" runat="server" Text="Register" OnClick="register_Click" CssClass="btn btn-md btn-primary" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Print" Width="87px"  CssClass="btn btn-md btn-primary"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                       
                    </td>
                </tr>
                
            </table>
        </div>
         <div id="dvprint" runat="server" class="view ">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" class="border border-none">
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
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Firstname], [Lastname], [Dateofbirth], [Emailaddress], [Nrcnumber], [Phonenumber], [Departure], [Arrival], [Date], [Time], [Price], [Random] FROM [PassengerRegister] WHERE ([Nrcnumber] = @Nrcnumber)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtnrc" Name="Nrcnumber" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                        </div>
    </div>
</asp:Content>
