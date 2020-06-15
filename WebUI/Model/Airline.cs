using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebUI.Model
{
    public class Airline
    {

        public string AirlineCode { get; set; }

        [JsonProperty(PropertyName = "AirlineName")]
        public string AirlineName { get; set; }

        [JsonProperty(PropertyName = "Departure")]
        public string Departure { get; set; }

        [JsonProperty(PropertyName = "Arrival")]
        public string Arrival { get; set; }

    }
}