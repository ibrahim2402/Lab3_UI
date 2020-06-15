<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="DefaultTest.aspx.cs" Inherits="WebUI.DefaultTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">  
                <tr>
                    <td>
                         <asp:Label ID="order_error" runat="server" Text=" "></asp:Label> 
                         <asp:Label ID="label4" runat="server" Text=" Transaction Successful!" BackColor="Yellow" ForeColor="Black"></asp:Label>
                    </td>
                      
                    </tr>

                <tr>
                    <td>
                         <asp:Label ID="label1" runat="server" Text="Customer Name :"></asp:Label>
                         <asp:Label ID="labelName" runat="server" Text=" "></asp:Label> 
                    </td>
                      
                    </tr>
            <tr>  
                <td>
                    <asp:Label ID="label2" runat="server" Text="Customer PassPort Number :"></asp:Label>
                     <asp:Label ID="labelEmail" runat="server" Text=" "></asp:Label> 
                </td>
                      
                    </tr>
                 <tr>  
                <td>
                    <asp:Label ID="label5" runat="server" Text="Date of Traveling :"></asp:Label>
                     <asp:Label ID="labelDate" runat="server" Text=" "></asp:Label> 
                </td>
                      
                    </tr>
                 <tr>  
                <td>
                    <asp:Label ID="label6" runat="server" Text="Airline Name :"></asp:Label>
                     <asp:Label ID="labelAirline" runat="server" Text=" "></asp:Label> 
                </td>
                      
                    </tr>
            <tr>  
                <td>
                    <asp:Label ID="label3" runat="server" Text="Total Order Price :"></asp:Label>
                     <asp:Label ID="labelPrice" runat="server" Text=" "></asp:Label> 
                </td>
                      
                    </tr>
                </table>
          </div>
    </form>
</body>
</html>
