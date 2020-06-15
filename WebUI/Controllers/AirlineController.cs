using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;
using WebUI.Model;

namespace WebUI.Controllers
{
    public class AirlineController : Controller
    {
        // GET: Airline
        public ActionResult Index()
        {

            IEnumerable<Airline> airlineList;
            HttpResponseMessage response = GlobalVariable.Client.GetAsync("Airlines").Result;
            airlineList = response.Content.ReadAsAsync<IEnumerable<Airline>>().Result;
            return View(airlineList);
        }
    }
}