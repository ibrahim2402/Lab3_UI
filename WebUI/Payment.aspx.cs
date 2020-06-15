
using Microsoft.Azure.Cosmos;
using Microsoft.Azure.Documents.Client;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Auth;
using Microsoft.WindowsAzure.Storage.Queue;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebUI.Model;

namespace WebUI
{
    public partial class Payment : System.Web.UI.Page
    {

       
        ///string myrecfkey;
        string[] keys = { "trswebqueue" , "offerwebqueue","crswebqueue","hrswebqueue" };
        private string[] airportNames = { "Stockholm", "Copenhagen", "Paris", "London", "Frankfurt" };
        private string[] airlines = { "KLM Airline", "SAS Airline", "Air France", "Deltal Airline", "Lufthansa Airline" };

        HttpClient client = new HttpClient();

        private CosmosClient cosmosClient;
        private Database database;
        private Container container;

        private string URL = @"https://localhost:8081";
        private string PrimaryKey = @"C2y6yDjf5/R+ob0N8A7Cgv30VRDJIWEHLM+4QDU5DE2nQ9nDuVTqobD4b8mGGyPMbIZnqyMsEcaGQy67XIw/Jw==";
        DocumentClient doc_client;
        protected void Page_Load(object sender, EventArgs e)
        {


            Label_from.Text = Request.Cookies["User"]["Value1"].ToString();
            Label_to.Text = Request.Cookies["User"]["Value2"].ToString();
            Label_offer.Text = Request.Cookies["User"]["Value3"].ToString();
            Label_travelDate.Text = Request.Cookies["User"]["Value4"];

            // myrecfkey = Session["MyRefKey"].ToString();
            // Console.WriteLine(myrecfkey);

            var rand = new Random();
           // var rand2 = new Random();
            int index = rand.Next(airlines.Length);
            for(int i = 0; i < airlines.Length; i++)
            {
                Label_airlineName.Text = airlines[index];
            }
            if (Label_from.Text.Equals("STO"))
            {
                Label_city.Text = airportNames[0];
            }
            else if (Label_from.Text.Equals("FRA"))
            {
                Label_city.Text = airportNames[4];
            }
            else if (Label_from.Text.Equals("CPH"))
            {
                Label_city.Text = airportNames[1];
            }
            else if (Label_from.Text.Equals("LHR"))
            {
                Label_city.Text = airportNames[3];
            }
            else
            {
                Label_city.Text = airportNames[2];
            }
            
        }
        protected void btn_pay(object sender, EventArgs e)
        {
            //Response.Redirect("~/DefaultTest.aspx?UserName=" + TextBox1.Text + "&UserEmail=" + TextBox3 + "&UserPrice"+ Label_offer);

            Response.Cookies["User"]["Value1"] = TextBox_name.Text;
            Response.Cookies["User"]["Value2"] = TextBox_passnrb.Text;
            Response.Cookies["User"]["Value3"] = Label_offer.Text;
            Response.Cookies["User"]["Value4"] = Label_travelDate.Text;
            Response.Cookies["User"]["Value5"] = Label_airlineName.Text;
            Response.Cookies["User"].Expires = DateTime.Now.AddDays(1d);

            if (string.IsNullOrEmpty(Label_from.Text) 
                || string.IsNullOrEmpty(Label_to.Text) || string.IsNullOrEmpty(Label_offer.Text))
            {
                order_error.Text = "Enter correct details";
            }
            else
            {
                AddFlight();
                AddCustomer();
                AddAirline();
                customerCosmos();
                airlineCosmos();
                flightCosmos();

                Response.Redirect("DefaultTest.aspx");
            }
        }
        public async Task<bool> AddFlight()
        {

            var flight = new Flight();
            flight.Id = 5;
            flight.TicketPrice = Label_offer.Text;
            flight.DepartureDate = DateTime.Parse(Label_travelDate.Text);

            var content = JsonConvert.SerializeObject(flight);
            var httpContent = new StringContent(content, Encoding.UTF8, "Application/json");
           var response = await client.PostAsync("https://localhost:44373/api/Flights", httpContent);
            var responseCode = await response.Content.ReadAsStringAsync();   

            if (responseCode == "false")

                return false;
            else
                return true;
        }

        public async Task<bool> AddCustomer()
        {

            var person = new Customer();
                person.PassengerName = TextBox_name.Text;
                person.Id = 3;
                person.ExpireDate = "2025-10-12";
                person.Balance = "7700";
                person.CardNo = TextBox_card.Text;
                person.PassportNo = TextBox_passnrb.Text;

            var content = JsonConvert.SerializeObject(person);
            var httpContent = new StringContent(content, Encoding.UTF8, "Application/json");

            var response = await client.PostAsync("https://localhost:44373/api/Customers", httpContent);
            var responseCode = await response.Content.ReadAsStringAsync();

            if (responseCode == "false")

                return false;
            else
                return true;
        }

        public  async Task<bool> AddAirline()
        {

            var airline = new Airline();
            airline.AirlineCode = "07";
            airline.AirlineName = Label_airlineName.Text;
            airline.Departure = Label_from.Text;
            airline.Arrival = Label_to.Text;

            var content = JsonConvert.SerializeObject(airline);
            var httpContent = new StringContent(content, Encoding.UTF8, "Application/json");
            var response = await client.PostAsync("https://localhost:44373/api/Airlines", httpContent);
            var responseCode = await response.Content.ReadAsStringAsync();
            
            
          /*  DocumentClient doc_client;
            doc_client = new DocumentClient(new Uri(URL), PrimaryKey);
            FeedOptions query = new FeedOptions { MaxItemCount = -1 };

            IQueryable<Airline> entityObj = doc_client.CreateDocumentQuery<Airline>(
                UriFactory.CreateDocumentCollectionUri("chateragent_db", "Airline"), query);  */


            if (responseCode == "false")

                return false;
            else
                return true;
        }

        public void flightCosmos()
        {

            doc_client = new DocumentClient(new Uri(URL), PrimaryKey);
            dynamic flight = new
            {
                Id = 5,
                DepartureDate = DateTime.Parse(Label_travelDate.Text),
                TicketPrice = Label_offer.Text
            };

            var doc_flight = doc_client.CreateDocumentAsync(UriFactory.CreateDocumentCollectionUri("chateragent_db", "Flights"), flight);
        }
        public void customerCosmos()
        {
            dynamic person = new
            {
                Id = 4,
                PassengerName = TextBox_name.Text,
                ExpireDate = "2035-10-12",
                Balance = "4700",
                CardNo = TextBox_card.Text,
                PassportNo = TextBox_passnrb.Text
            };

            doc_client = new DocumentClient(new Uri(URL), PrimaryKey);
            var doc = doc_client.CreateDocumentAsync(UriFactory.CreateDocumentCollectionUri("chateragent_db", "Customers"), person);
        }

        public void airlineCosmos()
        {
            dynamic airline = new
            {
                AirlineCode = "07",
                AirlineName = Label_airlineName.Text,
                Departure = Label_from.Text,
                Arrival = Label_to.Text
            };

            doc_client = new DocumentClient(new Uri(URL), PrimaryKey);
            var doc = doc_client.CreateDocumentAsync(UriFactory.CreateDocumentCollectionUri("chateragent_db", "Airlines"), airline);
        }
    }

    /**
     * The payment page when load, it has the fare/ ticket price which is received from the backend process: the business logic 
     *  is implemented with an API endpoint (price) which is triggered when checkout button is pressed. 
     *  Before the page load, there is a dialogbox that requires YES or No before proceeding. Some of the information user already entered in the start page is 
     *  also transffered here in the payment page, the departure city and destination city, and the number of passenger to travel. 
     * Here the user enter details; name, card information, pass number and can select address city. 
     * After the filling up the required fields the pay button when press will forward the data enterred to 
     * different database table in Azure cloud SQL server and also to CosmosDB Emulator SQL API (NoSQL database).
     * The final page after pay button pressed is to display successful completion of the transaction.
     */
}