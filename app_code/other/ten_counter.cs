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
public class ten_counter
{

    public long ongoing { get; set; }
    public long completed { get; set; }
    public long dpr { get; set; }
    public long tender { get; set; }

    public ten_counter()
    {
    }

    public ten_counter Get()
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", "ten_counter", "", "");
        ten_counter obj = JsonConvert.DeserializeObject<ten_counter>(json);
        return obj;
    }
}