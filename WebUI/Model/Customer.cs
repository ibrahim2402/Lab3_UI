using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebUI.Model
{
    public class Customer
    {
        [JsonProperty(PropertyName = "CardNo")]
        public string CardNo { get; set; }
       
        [JsonProperty(PropertyName = "Id")]
        public int Id { get; set; }

        [JsonProperty(PropertyName = "PassengerName")]
        public string PassengerName { get; set; }

        [JsonProperty(PropertyName = "PassportNo")]
        public string PassportNo { get; set; }

        [JsonProperty(PropertyName = "ExpireDate")]
        public string ExpireDate { get; set; }

        [JsonProperty(PropertyName = "Balance")]
        public string Balance { get; set; }
        
        public virtual Flight FlightNoNavigation { get; set; }
       
      //  public virtual ICollection<TravelTransaction> TravelTransaction { get; set; }
    }
}