<%@ Page Title="Home Page" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebRole1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <h1>CharterResor Travel Assistant</h1>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
              <a href="Flight/Index"> ADMIN PORTAL</a>

    <div class="jumbotron">
       
        <p class="lead">Booking Flight</p>
<div class="row" style="width: 871px; height: 125px">
         <asp:Label ID="order_error" runat="server" Text=" " ForeColor="Red" BackColor="Black"></asp:Label>
        <asp:Label ID="confirmation_label" runat="server" Width="165px" Font-Bold="true" ForeColor="Red" ></asp:Label>
         <asp:Label ID="Label4" runat="server" Text="From:"></asp:Label>
            
&nbsp;
           <asp:DropDownList ID="DropDown_from" runat="server" Width="65px" ></asp:DropDownList>
            
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="To: "></asp:Label>
            &nbsp;&nbsp;
            <asp:DropDownList ID="DropDown_to" runat="server" Width="87px" Height="23px" ></asp:DropDownList> 
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     <asp:Label ID="Travel_date" runat="server" Text="Select Travel Date: "></asp:Label>
    <asp:Calendar ID="Calendar1" runat="server" style="margin-left: 476px; margin-top: 0px;" Height="16px" Width="255px" BackColor="#FFFF66" ForeColor="#0099FF"></asp:Calendar>

  </div> 
       
        <br />
            <br />
        <div class="row">
            <h4> Number of Passengers </h4>
             <asp:Label ID="Label5" runat="server" Text="Infant < 2"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox_infant" runat="server" Width="65px" ></asp:TextBox>
             &nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label1" runat="server" Text="Children < 2"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox_children" runat="server" Width="65px" ></asp:TextBox>
             &nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label2" runat="server" Text="Adult < 2"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox_adult" runat="server" Width="65px" ></asp:TextBox>
             &nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label3" runat="server" Text="Senior < 2"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox_senior" runat="server" Width="65px" ></asp:TextBox>

             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
          <div>
              <asp:Label ID="label9" runat="server" Text="Flight booking ONLY"  ForeColor="RoyalBlue"></asp:Label>
               <asp:Button ID="Button3" runat="server" Text="CHECKOUT" OnClick="submit_btn_flight" BackColor="YellowGreen" Width="115px"/>
          </div>

        </div>
    </div>
      <div class="jumbotron">
        
              <p class="lead">Hotel Reservation</p>
              &nbsp;&nbsp;&nbsp;
          <asp:RadioButton ID="rbn_hotel" runat="server" Checked="False" GroupName="hotel" Text=" "/>

      <div class="row" >
               &nbsp;&nbsp;&nbsp  &nbsp;&nbsp;&nbsp;
              <asp:Label ID="single_hotel" runat="server" Text="Single Room"></asp:Label>
               &nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="single_room" runat="server" Checked="False" GroupName="hotel_room" Text= " 500 SEK "/>
               &nbsp;&nbsp;&nbsp;
              <asp:Label ID="double_hotel" runat="server" Text="Double Room"></asp:Label>
               &nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="double_room" runat="server" Checked="False" GroupName="hotel_room" Text=" 800 SEK "/>
                 &nbsp;&nbsp;&nbsp;
             <asp:Label ID="label_night" runat="server" Text="No. of Nights"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox_night" runat="server" Width="65px" ></asp:TextBox>

          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
          <div>
              <asp:Label ID="label7" runat="server" Text="Hotel reservation ONLY"  ForeColor="RoyalBlue"></asp:Label>
               <asp:Button ID="Button2" runat="server" BackColor="Snow" Text="CHECKOUT" Width="115px"/>
          </div>
         
          </div>      
      </div>

      <div class="jumbotron" >

        <p class="lead">Car Rent</p>
           &nbsp;&nbsp;&nbsp;
          <asp:RadioButton ID="rbn_rent_car" runat="server" Checked="False" GroupName="car" Text=" "/>

          <div class="row" >
               &nbsp;&nbsp;&nbsp  &nbsp;&nbsp;&nbsp;
              <asp:Label ID="label_car" runat="server" Text="Salon Car"></asp:Label>
               &nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="rbn_car" runat="server" Checked="False" GroupName="car_type" Text= " 1000 SEK "/>
               &nbsp;&nbsp;&nbsp;
              <asp:Label ID="label_bus" runat="server" Text="Family Bus"></asp:Label>
               &nbsp;&nbsp;&nbsp;
               <asp:RadioButton ID="rbn_bus" runat="server" Checked="False" GroupName="car_type" Text=" 500 SEK "/>
                 &nbsp;&nbsp;&nbsp;
             <asp:Label ID="label_car_days" runat="server" Text="No. of Days"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox_car_days" runat="server" Width="65px" ></asp:TextBox>

              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
               <div>
              <asp:Label ID="label8" runat="server" Text="Vehicles leassing ONLY"  ForeColor="RoyalBlue"></asp:Label>
               <asp:Button ID="Button1" runat="server" Text="CHECKOUT" BackColor="Snow" Width="115px"/>
          </div>

          </div>
         
        
    </div>

    <div class="jumbotron">
      
            <h3>SUBMIT ORDER (Special discount for 2 or more services!)</h3>
            <br />
        <div class="column">
             <asp:Button ID="btn_submit" runat="server"  Text="GET-OFFER" Height="45px" BackColor="YellowGreen" Width="165px"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        </div>  
    </div>

</asp:Content>
