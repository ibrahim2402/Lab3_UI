using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebUI.Model
{
    public class Flight
    {   
        public int FlightNo { get; set; }
     
        [JsonProperty(PropertyName = "Id")]
        public int Id { get; set; }

        [JsonProperty(PropertyName = "DepartureDate")]
        public DateTime DepartureDate { get; set; }

        [JsonProperty(PropertyName = "TicketPrice")]
        public string TicketPrice { get; set; }     
        public virtual ICollection<Customer> Customer { get; set; }
       
      //  public virtual ICollection<Route> Route { get; set; }
    }
}