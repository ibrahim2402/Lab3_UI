using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Auth;
using Microsoft.WindowsAzure.Storage.Queue;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.UI;
using System.Windows;
using System.Windows.Forms;
using WebUI.Controllers;

namespace WebRole1
{
    // Start page!!! Read details below
    public partial class _Default : Page
    {
        private string key;
        List<string> Places = new List<string>();

        static string from;
        static string to;
        static string nbrOfPassenger;
        static string total;
        DateTime travelDate;
  
        public string Key { get => key; set => key = value; }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {

                Places.Add("STO");
                Places.Add("CPH");
                Places.Add("CDG");
                Places.Add("LHR");
                Places.Add("FRA");

                DropDown_from.DataSource = Places;
                DropDown_to.DataSource = Places;

                DropDown_from.DataBind();
                DropDown_to.DataBind();
                DateTime traveDate;

            }   
            // baseurlcar/{distance}/{no_off}/{} 
        }

        // To checkout flight booking request
        protected void submit_btn_flight(object sender, EventArgs e)
        {
            // Using a state management logic to hold queue reference
            key = "trswebqueue";
            Session["MyRefKey"] = key;

            TextBox textPrice = new TextBox();
            textPrice.Visible = false;
            
            if (DropDown_from.SelectedItem == null || DropDown_to.SelectedItem == null || TextBox_infant.Text == "" || Calendar1.SelectedDate == DateTime.MinValue.Date)
            {
                confirmation_label.Text = "Error. Please enter all required data.";
            }
            else
            {
                confirmation_label.Text = "";
                from = DropDown_from.SelectedItem.Value;
                to = DropDown_to.SelectedItem.Value;
                nbrOfPassenger = TextBox_infant.Text;
                travelDate = Calendar1.SelectedDate;

                try
                {
                    TestAsync(from,to,nbrOfPassenger).Wait();

                   dialogbox();
                }
                catch (Exception ee)
                {
                    confirmation_label.Text = ee.ToString();
                }
            }

            if (string.IsNullOrEmpty(DropDown_from.Text)
                || string.IsNullOrEmpty(DropDown_to.Text) || string.IsNullOrEmpty(TextBox_infant.Text))
            {
                order_error.Text = "Enter correct details";
            }
            else
            {
                dialogbox();
            }

        }
        public static async Task TestAsync(string from,string to, string nbrOfPassenger)
        {

            string url = "https://localhost:44373/api/Prices/"+from.ToString()+"/"+to.ToString()+"/"+ nbrOfPassenger.ToString();
            var client = new HttpClient();

            var request = new HttpRequestMessage(HttpMethod.Get, url);

            Console.WriteLine($"Request: {url}".PadLeft(5, '*').PadRight(5, '*'));

            var response = await client.SendAsync(request).ConfigureAwait(false);

            if (response.IsSuccessStatusCode)
            {
                string body = await response.Content.ReadAsStringAsync().ConfigureAwait(false);

                //dynamic temp = JObject.Parse(body);
                //Console.WriteLine(temp.total);

                /*   "[{\"travel\":
                 *   \"200\",
                 *   \"car\":\"300\",
                 *   \"total\":\"400\"}]"  */

                /*   "[{\"travel\":200,
                     \"car\":300,
                     \"total\":400}]"*/

                Console.WriteLine($"{body.Length}{Environment.NewLine}");

                Console.WriteLine(body);
                /*  string[] s = body.Split(',');
                  int travel = Int32.Parse(s[0].Split(':')[1]);
                  int car = Int32.Parse(s[1].Split(':')[1]);
                  string total_temp = s[2].Split(':')[1];
                   total = Int32.Parse(total_temp.Substring(0, total_temp.Length - 2)); */

                total = body; //Double.Parse(body);

            }
            else
            {
                Console.WriteLine($"*Bad request: {response.StatusCode}");
            }            
            //Console.ReadKey();
        } 
        //Dialogbox to either continue or cancel the order
        public void dialogbox()
        {
            //This pop for user to confirm further operation or decline order
            DialogResult dialogResult = (DialogResult)System.Windows.MessageBox.Show("1: Click YES to continue order? \n 2: Click NO to cancel the order = ", "CONFIRMATION PAGE", MessageBoxButton.YesNo);
            if (dialogResult == DialogResult.Yes)
            {
                // Session["MyRefKey"] = myref;
                // confirmation_label.Text = " Total price: ";
                Response.Cookies["User"]["Value1"] = DropDown_from.SelectedItem.Value;
                Response.Cookies["User"]["Value2"] = DropDown_to.SelectedItem.Value;
                Response.Cookies["User"]["Value3"] = total + " SEK";
                Response.Cookies["User"]["Value4"] = travelDate.ToString();
                Response.Cookies["User"].Expires = DateTime.Now.AddDays(1d);

                Response.Redirect("~/Payment.aspx"); //link to payment page
            }

            if (dialogResult == DialogResult.No)
            {
                
                Response.Redirect("~/Default.aspx");
                confirmation_label.Text = " Order has been cancel!";
            }
        }
    }

    /**
     * This is a simple and basic frontend application: It required user to enter travel departure and destination 
     * as well as number of passenger to travel. The checkout buttion is to be pressed after the required fields are filled.
     * It will then navigate to the payment page. When this happened, it triggered an API request function and the 
     * calculation for the price is process at the backend with an API endpoint. 
     * The API do the business logic to calculate the ticket price base on simple discount on percentage. 
     * It then return the ticket fare to the payment page. I used Cookies to transfer the user's data to from front page to payment page
     * because i considered it a good practice since the user may decline the process and it will not make a sense 
     * if those entered data are earlier sent to database when the operartion is yet to be completed. 
     * Also, there is an hyperlink for navigating to admin portal where the admin can view list of customers and 
     * list of flights recorded. Both records together has details about the user, airports, airline, price, destination and departure.
     * These list are populated from the Azure cloud SQL server database.
     * 
     * Note; the admin is assumed to be a priviledge member that can access the portal after successful login. But the login page 
     * is NOT implemeted in the case. Also to note is that for the frontend implementation is a combination of webform and MVC entity framework.
     * The Controller folder has the conroller files the API request function to the database 
     * and the Views folder has the index html file that display the response list
     * Because i had used webform for the previous Lab 2 and decided to build the database implementation on it. So, it may require to run the
     * application /solution as multiple startup project from the properties. Wish i could put more time to the GUI but instead i dedicated 
     * more time to the funtionalities and logic implementation. Hope to do that by building on the project in due course.
     */
}