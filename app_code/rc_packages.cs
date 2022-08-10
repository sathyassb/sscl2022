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
public class rc_packages
{
    public long packageid { get; set; }
    public string packagetitle { get; set; }
    public string packagecode { get; set; }
    public int validitydays { get; set; }
    public decimal amount { get; set; }
    public bool islisted { get; set; }
    public string iconfile { get; set; }
    public string url { get; set; }
    public string selector { get; set; }
    public bool issubscription { get; set; }
    public class rc_packageitems: rc_packages
    {
        public long packageitemid { get; set; }
        public string packageitemtitle { get; set; }
        public bool ison { get; set; }
        public string infotip { get; set; }
        public long count { get; set; }
    }
    public rc_packages()
    {
        url = "rc_packages";
    }
    public List<rc_packages> GetAllPackages(bool islisted, bool isSubscription)
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", url, "getbylisted/"+islisted.ToString()+"/"+ isSubscription.ToString(), "");
        List<rc_packages> obj = JsonConvert.DeserializeObject<List<rc_packages>>(json);
        return obj;
    }
    public List<rc_packageitems> GetAllPackageItems(long packageid)
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", url, "getpackageitems/items/" + packageid.ToString(), "");
        List<rc_packageitems> obj = JsonConvert.DeserializeObject<List<rc_packageitems>>(json);
        return obj;
    }

    public rc_packages GetAPackage(long packageid)
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", url, "getbyid/" + packageid.ToString(), "");
        rc_packages obj = JsonConvert.DeserializeObject<rc_packages>(json);
        return obj;
    }
    public rc_packages InsertOrUpdate()
    {
        this.selector = "";
        tcrestconnect rest = new tcrestconnect();
        var jsonrq = JsonConvert.SerializeObject(this);
        string jsonres = rest.tcWebRequest("POST", url, "", jsonrq);
        rc_packages obj = JsonConvert.DeserializeObject<rc_packages>(jsonres);
        return obj;
    }
    public rc_packageitems InsertOrUpdate_PackageItems(rc_packageitems com)
    {
        tcrestconnect rest = new tcrestconnect();
        com.selector = "items";
        var jsonrq = JsonConvert.SerializeObject(com);
        string jsonres = rest.tcWebRequest("POST", url, "", jsonrq);
        rc_packageitems obj = JsonConvert.DeserializeObject<rc_packageitems>(jsonres);
        return obj;
    }
    public long DeletePackageItem(long packageitemid)
    {
        tcrestconnect rest = new tcrestconnect();
        string jsonres = rest.tcWebRequest("DELETE", url, packageitemid.ToString(), "");
        long obj = JsonConvert.DeserializeObject<long>(jsonres);
        return obj;
    }


}