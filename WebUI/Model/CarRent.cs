using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebUI.Model
{
    public class CarRent
    {

       
        public string CompanyCode { get; set; }
        
        public string CompanyName { get; set; }
       
        public string LicenceNo { get; set; }
   
        public string CarNo { get; set; }
       
        public DateTime RentalDate { get; set; }
      
        public string Price { get; set; }
    }
}