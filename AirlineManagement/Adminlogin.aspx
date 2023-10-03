<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="AirlineManagement.Adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="js/bootstrap.min.js" rel="stylesheet" />
    <link href="adminstyle.css" rel="stylesheet" />
</head>
<body class="am-b">
    <form id="form1" runat="server" class="form-group">
        <div class="login">
            <div class="d-flex justify-content-center"><img src="images/key.png" /></div>
     <h3 align="center">ADMIN PANEL</h3>
              
            <div class="ml-3 ">
               
                   
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label><br />
                    <asp:TextBox ID="txtname" runat="server" placeholder="Enter Name"  Width="280px" CssClass="form-control adpanel mt-2"></asp:TextBox>
             
            </div>
                <br />
            <div class="  ml-3">
                <asp:Label ID="Label2" runat="server" Text="Password" ></asp:Label><br />
                <asp:TextBox ID="txtpassword" runat="server" placeholder="Enter Password" TextMode="Password" Width="280px" CssClass="form-control adpanel  mt-2"></asp:TextBox>
            </div>
            <br />
               <div class="ml-3"> <asp:Button ID="Login" runat="server" Text="Login" OnClick="Login_Click" CssClass="btn btn-md btn-success" /></div>
               
    <asp:Label ID="wronglabel" runat="server" ForeColor="Red" CssClass="ms"></asp:Label>

              </div>
    </form>
    
</body>
</html>
