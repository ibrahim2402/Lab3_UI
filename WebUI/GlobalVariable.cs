using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;

namespace WebUI
{
    public static class GlobalVariable
    {
        public static HttpClient Client = new HttpClient();

        static GlobalVariable()
        {
            Client.BaseAddress = new Uri("https://localhost:44373/api/");
            Client.DefaultRequestHeaders.Clear();
            Client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("Application/json"));
        }
    }
}