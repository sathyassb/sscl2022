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
public class ten_departments
{

    public long departmentid { get; set; }
    public string department { get; set; }
    string url { get; set; }
    public ten_departments()
    {
        url = "ten_departments";
    }

    public List<ten_departments> GetAll()
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", url, "", "");
        List<ten_departments> obj = JsonConvert.DeserializeObject<List<ten_departments>>(json);
        return obj;
    }
    
}

