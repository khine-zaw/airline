<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminControl.aspx.cs" Inherits="AirlineManagement.AdminControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 200px;
        }
        .auto-style7 {
            width: 200px;
            height: 26px;
        }
        .auto-style10 {
            width: 61px;
            height: 26px;
        }
        .auto-style11 {
            width: 61px;
        }
        .auto-style12 {
            height: 262px;
        }
        .auto-style15 {
            height: 28px;
        }
        .auto-style16 {
            width: 100%;
            height: 266px;
        }
        .auto-style20 {
            height: 36px;
        }
        .auto-style22 {
            width: 100%;
            height: 43px;
        }
        .auto-style23 {
            height: 43px;
        }
        .auto-style25 {
            width: 100%;
            height: 38px;
        }
        .auto-style26 {
            height: 38px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Flight Admin Control</h1>

    <div>
        <table class="auto-style16">
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label1" runat="server" Text="Path_Id"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="pid" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pid" ErrorMessage="PathID Required!"></asp:RequiredFieldValidator>
                </td>
                <td rowspan="8" class="auto-style12">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Pathid" DataSourceID="SqlDataSource1" GridLines="None" Height="212px" style="margin-top: 0px" Width="640px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Pathid" HeaderText="Pathid" ReadOnly="True" SortExpression="Pathid" />
                            <asp:BoundField DataField="Flightid" HeaderText="Flightid" SortExpression="Flightid" />
                            <asp:BoundField DataField="Departure" HeaderText="Departure" SortExpression="Departure" />
                            <asp:BoundField DataField="Arrival" HeaderText="Arrival" SortExpression="Arrival" />
                            <asp:BoundField DataField="Leavedate" HeaderText="Leavedate" SortExpression="Leavedate" />
                            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Path]"></asp:SqlDataSource>
                </td>
              
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label2" runat="server" Text="Flight_Id"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="fid" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fid" ErrorMessage="FlightID Required!"></asp:RequiredFieldValidator>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label3" runat="server" Text="From"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="from" runat="server"></asp:TextBox>
                </td>
       
            </tr>
             <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label4" runat="server" Text="To"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="to" runat="server"></asp:TextBox>
                 </td>
              
            </tr>
             <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label5" runat="server" Text="Leave_Date"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="leavedate" runat="server" TextMode="Date"></asp:TextBox>
                 </td>
               
            </tr>
             <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label8" runat="server" Text="Time"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="time" runat="server" TextMode="Time"></asp:TextBox>
                 </td>
               
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label runat="server" Text="Price"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="price" runat="server" OnTextChanged="price_TextChanged"></asp:TextBox>
                 </td>
               
            </tr>
            <tr><td colspan="2" class="auto-style15">
                <asp:Button ID="pathbutton"  runat="server" Text="Insert" OnClick="pathbutton_Click" />
                </td></tr>
             
        </table>
        </div>

        <div>
            <table style="width: 100%;">
            <tr>
                <td class="auto-style26">
                    <asp:Label ID="Label9" runat="server" Text="Flight_Id"></asp:Label>
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="fid1" runat="server"></asp:TextBox>
                 </td>
                <td rowspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Label ID="Label10" runat="server" Text="Flight_Name"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="flightname" runat="server"></asp:TextBox>
                 </td>

            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:Label ID="Label11" runat="server" Text="Pilot_Name"></asp:Label>
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="pilotname" runat="server"></asp:TextBox>
                 </td>
                
            </tr>
             <tr>
                <td class="auto-style20">
                    <asp:Label ID="Label6" runat="server" Text="Total_Seat" ForeColor="#FF3300"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="totalseat" runat="server"></asp:TextBox>
                 </td>
              <tr>
                  <td colspan="2" class="auto-style15">
                    <asp:Button ID="flightbutton" runat="server" Text="Insert" OnClick="flightbutton_Click" />
                </td>

              </tr>
        </table>
        </div>

    </form>
</body>
</html>
