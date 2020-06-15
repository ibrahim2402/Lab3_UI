<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WebUI.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 414px;
            width: 186px;
        }
        .auto-style2 {
            width: 118px;
        }
        .auto-style3 {
            width: 150px;
        }
    </style>
</head>
<body style="margin-left: 56px">
    <form id="form1" runat="server">
        <div>  
            <table class="auto-style1">  
                 <asp:Label ID="order_error" runat="server" Text=" " ForeColor="Red" BackColor="Black"></asp:Label> 
                <tr>  
                    <td class="auto-style2"> Departure Airport :</td>  
                    <td class="auto-style3">
                        <asp:Label ID="Label_from" runat="server"></asp:Label> 
                        
                    </td>  
  
               </tr> 
                  <tr>  
                    <td class="auto-style2"> Arrival Airport :</td>  
                    <td class="auto-style3">
                        <asp:Label ID="Label_to" runat="server"></asp:Label> 
                         
                    </td>  
  
               </tr> 
                 <tr>  
                    <td class="auto-style2"> Airport City :</td>  
                    <td class="auto-style3">
                        <asp:Label ID="Label_city" runat="server"></asp:Label> 
                         
                    </td>  
  
               </tr> 
                 <tr>  
                    <td class="auto-style2"> Airline Name :</td>  
                    <td class="auto-style3">
                        <asp:Label ID="Label_airlineName" runat="server"></asp:Label> 
                         
                    </td>  
  
               </tr> 
                <tr>  
                    <td class="auto-style2"> Travel Date :</td>  
                    <td class="auto-style3">
                        <asp:Label ID="Label_travelDate" runat="server"></asp:Label> 
                         
                    </td>  
  
               </tr> 
                  <tr>  
                    <td class="auto-style2"> Full Name :</td>  
                    <td class="auto-style3">  
                        <asp:TextBox ID="TextBox_name" runat="server" Height="30" Width="200px"></asp:TextBox>  
                    </td>  
  
               </tr> 
                <tr>  
                    <td class="auto-style2">Card Numbers</td>  
                     <td class="auto-style3"> <asp:TextBox ID="TextBox_card" runat="server" Width="200px" Height="30"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td class="auto-style2">Passport Number</td>  
                    <td class="auto-style3">  
                        <asp:TextBox ID="TextBox_passnrb" runat="server" Width="200px" Height="30" ></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td class="auto-style2">Passenger City</td>  
                    <td class="auto-style3">  
                        <asp:DropDownList ID="DropDownList1" runat="server">  
                            <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="Kristianstad" Value="Kristianstad"></asp:ListItem>  
                            <asp:ListItem Text="Malmo" Value="Malmo"></asp:ListItem>  
                            <asp:ListItem Text="Stockholm" Value="Stockholm"></asp:ListItem>  
                        </asp:DropDownList>  
                    </td>  
                </tr>  
               
                <tr>  
                    <td class="auto-style2">Price</td>  
                    <td class="auto-style3">  
                        <asp:Label ID="Label_offer" runat="server"></asp:Label>  
                    </td>
                     <td>  
                       <asp:Label ID="error" runat="server" Text=" "></asp:Label> 
                    </td>
                </tr>  
                <tr>  
                    <td class="auto-style2">  
                         <asp:Label ID="Label1" runat="server" Text="Click [Pay] to finalize order" ForeColor="Red" Width="450px"></asp:Label>
                        <br />
                        <br />

                        
                        <asp:Button ID="Button2" runat="server" OnClick="btn_pay" Text="PAY" Width="125px" Height="35"  BackColor="Orange"/> 
                    </td>  
                </tr>  
            </table>  
        </div>  
    </form>
</body>
</html>
