using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;

/// <summary>
/// Summary description for Class1
/// </summary>
public class cms_category
{

    public long categoryid { get; set; }
    public string category { get; set; }
    public bool ispages { get; set; }
    public bool iseditor { get; set; }
    string url { get; set; }
    public cms_category()
    {
        url = "cms_category";
    }

    public List<cms_category> GetAllbyispages(long categoryid)
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", url, "byispages/" + categoryid.ToString(), "");
        List<cms_category> obj = JsonConvert.DeserializeObject<List<cms_category>>(json);
        return obj;
    }
    
}

