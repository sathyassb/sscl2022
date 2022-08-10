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
public class ten_status
{

    public long statusid { get; set; }
    public string status { get; set; }

    string url { get; set; }
    public ten_status()
    {
        url = "ten_status";
    }

    public List<ten_status> GetAll()
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", url, "", "");
        List<ten_status> obj = JsonConvert.DeserializeObject<List<ten_status>>(json);
        return obj;
    }
    
}

