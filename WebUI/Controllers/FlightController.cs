using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;
using WebUI.Model;

namespace WebUI.Controllers
{
    public class FlightController : Controller
    {
        // GET: Flight
        public ActionResult Index()
        {
            IEnumerable<Flight> flightList;
            HttpResponseMessage response = GlobalVariable.Client.GetAsync("Flights").Result;
            flightList = response.Content.ReadAsAsync<IEnumerable<Flight>>().Result;
            return View(flightList);
        }
    }
}