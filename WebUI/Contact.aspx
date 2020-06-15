<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebUI.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <header>
         <script type = "text/javascript" >
             function preventBack() { window.history.forward(); }
             setTimeout("preventBack()", 0);
             window.onunload = function () { null };
        </script> 
    </header>
    <h2><%: Title %>.</h2>
   <table style="width: 102%; height: 615px; margin-left:250px;">
        <tr>
            <td style="text-align: left; font-family: 'times New Roman', Times, serif; font-size: 26px; font-weight: bold;" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Booking Details Confirmation </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 310px; font-family: 'times New Roman', Times, serif; font-size: 18px; font-weight: bold;">Customer Name </td>
            <td style="text-align: left; font-family: 'times New Roman', Times, serif; font-size: 18px;">
                :
                <asp:Label ID="CustomerName_Label" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 310px; font-family: 'times New Roman', Times, serif; font-size: 18px; font-weight: bold;">Flight ID </td>
            <td style="text-align: left; font-family: 'times New Roman', Times, serif; font-size: 18px;">
                :
                <asp:Label ID="FlightID_Label" runat="server" Text=""></asp:Label>
            </td> 
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 310px; font-family: 'times New Roman', Times, serif; font-size: 18px; font-weight: bold;">Airline Name </td>
            <td style="text-align: left; font-family: 'times New Roman', Times, serif; font-size: 18px;">
                :
                <asp:Label ID="AirlineName_Label" runat="server" Text=""></asp:Label>
            </td> 
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 310px; font-family: 'times New Roman', Times, serif; font-size: 18px; font-weight: bold;">Leaving From</td>
            <td style="text-align: left; font-family: 'times New Roman', Times, serif; font-size: 18px;">
                :
                <asp:Label ID="LeavingFrom_Label" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 310px; font-family: 'times New Roman', Times, serif; font-size: 18px; font-weight: bold;">Going To</td>
            <td style="text-align: left; font-family: 'times New Roman', Times, serif; font-size: 18px;">
                :
                <asp:Label ID="GoingTo_Label" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        
        <tr>
            <td style="text-align: left; width: 310px; font-family: 'times New Roman', Times, serif; font-size: 18px; font-weight: bold;">Date of Journey </td>
            <td style="text-align: left; font-family: 'times New Roman', Times, serif; font-size: 18px;">
                :
                <asp:Label ID="DateOfJourney_Label" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 310px; font-family: 'times New Roman', Times, serif; font-size: 18px; font-weight: bold;">Departure Time </td>
            <td style="text-align: left; font-family: 'times New Roman', Times, serif; font-size: 18px;">
                :
                <asp:Label ID="DepartTime_Label" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 310px; font-family: 'times New Roman', Times, serif; font-size: 18px; font-weight: bold;">Booking Date </td>
            <td style="text-align: left; font-family: 'times New Roman', Times, serif; font-size: 18px;">
                :
                <asp:Label ID="BookingDate_Label" runat="server" Text=""></asp:Label>
            </td>
            <td style="height: 25px"></td>
        </tr>
        <tr>
            <td style="text-align: left; width: 310px; font-family: 'times New Roman', Times, serif; font-size: 18px; font-weight: bold;">No of Passengers </td>
            <td style="text-align: left; font-family: 'times New Roman', Times, serif; font-size: 18px;">
                :
                <asp:Label ID="NoofPassengers_Label" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 310px; font-family: 'times New Roman', Times, serif; font-size: 18px; font-weight: bold;">Fare </td>
            <td style="text-align: left; font-family: 'times New Roman', Times, serif; font-size: 18px;">
                :
                <asp:Label ID="Fare_Label" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left; width: 310px; font-family: 'times New Roman', Times, serif; font-size: 18px; font-weight: bold;">Total Fare </td>
            <td style="text-align: left; font-family: 'times New Roman', Times, serif; font-size: 18px;">
                :
                <asp:Label ID="TotalFare_Label" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; " colspan="2">
                <table style="width: 100%">
                    </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 310px">
               
                </td>
            <td colspan="2" style="text-align: left">
               
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Exception_Label" runat="server" Font-Bold="True" Font-Size="Large" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
