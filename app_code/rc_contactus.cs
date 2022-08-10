using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class rc_contactus
{

    public long contactusid { get; set; }
    public string name { get; set; }
    public string email { get; set; }
    public string phone { get; set; }
    public string message { get; set; }
    public rc_contactus()
    {
    }
    public rc_contactus InsertOrUpdate()
    {
        tcrestconnect rest = new tcrestconnect();
        var jsonrq = JsonConvert.SerializeObject(this);
        string jsonres = rest.tcWebRequest("POST", "rc_contactus", "", jsonrq);
        var post = JsonConvert.DeserializeObject<rc_contactus>(jsonres);
        return post;
    }
}