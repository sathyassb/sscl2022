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
public class ten_tender
{

    public long tenderid { get; set; }
    public string heading { get; set; }
    public DateTime dateofsubmit { get; set; }
    public bool ison { get; set; }
    public long projecttypeid { get; set; }
    public long departmentid { get; set; }
    public long statusid { get; set; }
    public string coverimage { get; set; }
    public DateTime createddatetime { get; set; }
    public DateTime lastediteddatetime { get; set; }
    public bool isgallery { get; set; }
    public string pagetitle { get; set; }
    public string pagekeywords { get; set; }
    public string pagedescription { get; set; }
    public string writersname { get; set; }
    public long adminid { get; set; }
    public bool isdeleted { get; set; }
    public string url { get; set; }
    public string selector { get; set; }
    public class ten_tendercontents : ten_tender
    {
        public long tendercontentid { get; set; }
        public string lang { get; set; }
        public string title { get; set; }
        public string titledescription { get; set; }
        public string message { get; set; }
        public string permalink { get; set; }
        public string contenttext { get; set; }
    }
    public ten_tender()
    {
        url = "ten_tender";
    }

    public ten_tender.ten_tendercontents GetById(string lang,string postid)
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", url, "byid/"+lang+"/" + postid.ToString(), "");
        ten_tender.ten_tendercontents obj = JsonConvert.DeserializeObject<ten_tender.ten_tendercontents>(json);
        return obj;
    }

    public ten_tender PutThumbnail(string postid)
    {
        tcrestconnect rest = new tcrestconnect();
        var jsonrq = new JavaScriptSerializer().Serialize(this);
        string json = rest.tcWebRequest("PUT", url, postid.ToString(), jsonrq);
        ten_tender obj = JsonConvert.DeserializeObject<ten_tender>(json);
        return obj;
    }

    public List<ten_tender> GetByison(long statusid,bool ison)
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", url, "bystatus/"+statusid+"/" + ison.ToString(), "");
        List<ten_tender> countries = JsonConvert.DeserializeObject<List<ten_tender>>(json);
        var retobj = countries.All(x => x.ison = ison);
        return countries;
    }
    public long InsertOrUpdate(ten_tender.ten_tendercontents com)
    {
        tcrestconnect rest = new tcrestconnect();
        var jsonrq = new JavaScriptSerializer().Serialize(com);
          
        string jsonres = rest.tcWebRequest("POST", url, "", jsonrq);
        long postid= JsonConvert.DeserializeObject<long>(jsonres);
        return postid;
    }
    public List<ten_tender> GetAllKeys()
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", url, "getallkeys", "");
        List<ten_tender> countries = JsonConvert.DeserializeObject<List<ten_tender>>(json);
        return countries;
    }
    public int Delete(string postid)
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("DELETE", url, postid, "");
        int rowcount = int.Parse(json);
        return rowcount;
    }
    public List<ten_tender.ten_tendercontents> GetDisplaybyStatus(string lang, long categoryid)
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", "ten_tenderdisplay", "bystatus/" + lang + "/" + categoryid.ToString(), "");
        List<ten_tender.ten_tendercontents> obj = JsonConvert.DeserializeObject<List<ten_tender.ten_tendercontents>>(json);
        return obj;
    }

}

