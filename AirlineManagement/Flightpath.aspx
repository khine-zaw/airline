<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Flightpath.aspx.cs" Inherits="AirlineManagement.Flightpath" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 198px;
        }
        .auto-style2 {
            width: 532px;
        }
        .auto-style4 {
            width: 198px;
            height: 40px;
           
        }
        .auto-style5 {
            width: 532px;
            height: 40px;
        }
        .auto-style6 {
            width: 198px;
            height: 16px;
        }
        .auto-style7 {
            width: 532px;
            height: 16px;
        }
        .auto-style8 {
            width: 198px;
            height: 29px;
        }
        .auto-style9 {
            width: 532px;
            height: 29px;
        }
        .auto-style10 {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

    <table style="width:100%;" class="ad-fp">
        
        <tr>
            <th class="auto-style4">Path_ID</th>
            <td class="auto-style5">
                <asp:TextBox ID="txtpid" Class="pid" runat="server" Height="17px"></asp:TextBox>
            </td>
           
            
        </tr>
        <tr>
            <th class="auto-style8">Flight_ID</th>
            <td class="auto-style9">
                <asp:TextBox ID="txtfid"  runat="server"></asp:TextBox>
            </td>
            
        </tr>
         <tr>
            <th class="auto-style1 ">From</th>
            <td class="auto-style2">
                <asp:TextBox ID="txtdepart" runat="server"></asp:TextBox>
             </td>
           
        </tr>
         <tr>
            <th class="auto-style6">To</th>
            <td class="auto-style7">
                <asp:TextBox ID="txtarrival" runat="server"></asp:TextBox>
             </td>
            
        </tr>
         <tr>
            <th class="auto-style1">Leave_Date</th>
            <td class="auto-style2">
                <asp:TextBox ID="txtleavedate" runat="server" TextMode="Date"></asp:TextBox>
             </td>
         
        </tr>
         <tr>
            <th class="auto-style1 ">Time</th>
            <td class="auto-style2">
                <asp:TextBox ID="txttime" runat="server" TextMode="Time"></asp:TextBox>
             </td>
      
        </tr>
         <tr>
            <th class="auto-style1 ">Price</th>
            <td class="auto-style2">
                <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
             </td>
      
        </tr>
         <tr class="button" >
            <td colspan="2" class="bg-light">
                <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" CssClass="btn btn-secondary text-white operator"/>
             &nbsp;
                <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" Cssclass="btn btn-outline-success"/>
&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" CssClass="btn btn-outline-danger" />
             </td>
            
        </tr>

        <tr class="gr-v">
                    <td></td>
             <td class="auto-style10 " >
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Pathid" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                      <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Pathid" HeaderText="Pathid" ReadOnly="True" SortExpression="Pathid" />
                        <asp:BoundField DataField="Flightid" HeaderText="Flightid" SortExpression="Flightid" />
                        <asp:BoundField DataField="Departure" HeaderText="Departure" SortExpression="Departure" />
                        <asp:BoundField DataField="Arrival" HeaderText="Arrival" SortExpression="Arrival" />
                        <asp:BoundField DataField="Leavedate" HeaderText="Leavedate" SortExpression="Leavedate" />
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Pathid], [Flightid], [Departure], [Arrival], [Leavedate], [Time], [Price] FROM [Path]"></asp:SqlDataSource>
            
            </td>
        </tr>
    </table>
    
              

    

</asp:Content>
