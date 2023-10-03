<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Planatrip.aspx.cs" Inherits="AirlineManagement.Planatrip" %>
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
          
    <div  class="trip">
        
            <asp:GridView ID="GridView1" runat="server" class=" border border-none" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="185px" Width="542px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Departure" HeaderText="Departure" SortExpression="Departure" />
                    <asp:BoundField DataField="Arrival" HeaderText="Arrival" SortExpression="Arrival" />
                    <asp:BoundField DataField="Leavedate" HeaderText="Leavedate" SortExpression="Leavedate" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Departure], [Arrival], [Leavedate], [Time], [Price] FROM [Path] ORDER BY [Price]"></asp:SqlDataSource>
      
        
    </div>
    </div>    
</asp:Content>
