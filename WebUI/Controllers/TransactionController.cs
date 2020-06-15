using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;
using WebUI.Model;

namespace WebUI.Controllers
{
    public class TransactionController : Controller
    {
        // GET: Transaction
        public ActionResult Index()
        {

            IEnumerable<Transaction> transactionList;
            HttpResponseMessage response = GlobalVariable.Client.GetAsync("Transacts").Result;
            transactionList = response.Content.ReadAsAsync<IEnumerable<Transaction>>().Result;
            return View(transactionList);
        }
    }
}