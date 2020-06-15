using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;
using WebUI.Model;

namespace WebUI.Controllers
{
    public class CustomerController : Controller
    {
        // GET: Customer
        public ActionResult Index()
        {
            IEnumerable<Customer> customerList;
            HttpResponseMessage response = GlobalVariable.Client.GetAsync("Customers").Result;
            customerList = response.Content.ReadAsAsync<IEnumerable<Customer>>().Result;
            return View(customerList);
        }
    }
}