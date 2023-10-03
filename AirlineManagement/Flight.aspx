<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Flight.aspx.cs" Inherits="AirlineManagement.Flight" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;" class="flight">
        
        <tr class="">
            <td class="auto-style4 ">Flight_ID</td>
            <td class="auto-style5 ">
                <asp:TextBox ID="txtfid1" runat="server"  class="pid" Height="17px"></asp:TextBox>
            </td>
            
            
        </tr>
        <tr>
            <td class="auto-style8">Flight Name</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
            </td>
            
        </tr>
         <tr>
            <td class="auto-style1">Pilot Name</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtpname" runat="server"></asp:TextBox>
             </td>
           
        </tr>
         <tr>
            <td class="auto-style6">Total Seat</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtseat" runat="server"></asp:TextBox>
             </td>
            
        </tr>
        
        
        
         <tr class="button1">
            <td >
                <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" class="btn btn-success"/>
             &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" class="btn btn-outline-success"/>
             &nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" class="btn btn-danger"/>
             </td>
           
        </tr>
        <tr class="">
            <td class="auto-style10 " colspan="2">
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Flightid" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                      <Columns>
                          <asp:BoundField DataField="Flightid" HeaderText="Flightid" ReadOnly="True" SortExpression="Flightid" />
                          <asp:BoundField DataField="Flightname" HeaderText="Flightname" SortExpression="Flightname" />
                          <asp:BoundField DataField="Pilotname" HeaderText="Pilotname" SortExpression="Pilotname" />
                          <asp:BoundField DataField="Totalseat" HeaderText="Totalseat" SortExpression="Totalseat" />
                      </Columns>
                      <EditRowStyle BackColor="#999999" />
                      <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                      <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                      <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                      <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                      <SortedAscendingCellStyle BackColor="#E9E7E2" />
                      <SortedAscendingHeaderStyle BackColor="#506C8C" />
                      <SortedDescendingCellStyle BackColor="#FFFDF8" />
                      <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                  </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Flight]"></asp:SqlDataSource>
            
            </td>
        </tr>
    </table>
    </asp:Content>
