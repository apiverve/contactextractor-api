using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.ContactExtractor
{
    /// <summary>
    /// Query options for the Contact Extractor API
    /// </summary>
    public class ContactExtractorQueryOptions
    {
        /// <summary>
        /// The URL of the web page to extract contact data from
        /// </summary>
        [JsonProperty("url")]
        public string Url { get; set; }

        /// <summary>
        /// Limits the number of found contact details found on the page. Set -1 for unlimited
        /// </summary>
        [JsonProperty("limit")]
        public string Limit { get; set; }
    }
}
