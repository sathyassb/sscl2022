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
public class ten_projecttypes
{

    public long projecttypeid { get; set; }
    public string projecttype { get; set; }
    string url { get; set; }
    public ten_projecttypes()
    {
        url = "ten_projecttypes";
    }

    public List<ten_projecttypes> GetAll()
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", url, "", "");
        List<ten_projecttypes> obj = JsonConvert.DeserializeObject<List<ten_projecttypes>>(json);
        return obj;
    }
    
}

