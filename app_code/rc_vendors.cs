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
public class rc_vendors
{

    public long vendorid { get; set; }
    public string businessname { get; set; }
    public string contactperson { get; set; }
    public string cpmobile { get; set; }
    public string cpemail { get; set; }
    public string designation { get; set; }
    public string businessaddress { get; set; }
    public string taxno { get; set; }
    public long cityid { get; set; }
    public bool ison { get; set; }
    public rc_vendors()
    {
    }

    public cms_post GetById(string lang, long postid)
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", "rc_vendors", "byid/" + lang + "/" + postid.ToString(), "");
        cms_post obj = JsonConvert.DeserializeObject<cms_post>(json);
        return obj;
    }
    public List<cms_post> GetDisplaybyCategory(long categoryid)
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", "rc_vendors", "bycategory/" + categoryid.ToString(), "");
        List<cms_post> obj = JsonConvert.DeserializeObject<List<cms_post>>(json);
        return obj;
    }
}
