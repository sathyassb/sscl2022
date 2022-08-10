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
public class cms_post
{

    public long postid { get; set; }
    public string heading { get; set; }
    public DateTime dateofsubmit { get; set; }
    public bool ison { get; set; }
    public long categoryid { get; set; }
    public string coverimage { get; set; }
    public DateTime createddatetime { get; set; }
    public DateTime lastediteddatetime { get; set; }

    public bool iseditor { get; set; }
    public bool isgallery { get; set; }
    public bool ispriority { get; set; }
    public string pagetitle { get; set; }
    public string pagekeywords { get; set; }
    public string pagedescription { get; set; }
    public string writersname { get; set; }
    public long adminid { get; set; }
    public bool isdeleted { get; set; }
    public string selector { get; set; }
    public class cms_postcontents : cms_post
    {
        public long postcontentid { get; set; }
        public string lang { get; set; }
        public string title { get; set; }
        public string titledescription { get; set; }
        public string message { get; set; }
        public string permalink { get; set; }
        public string contenttext { get; set; }
    }
    public cms_post()
    {
    }

    public cms_post.cms_postcontents GetById(string lang, long postid)
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", "cms_post", "byid/" + lang + "/" + postid.ToString(), "");
        cms_post.cms_postcontents obj = JsonConvert.DeserializeObject<cms_post.cms_postcontents>(json);
        return obj;
    }
    public List<cms_post.cms_postcontents> GetDisplaybyCategory(string lang, long categoryid)
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", "cms_postdisplay", "bycategory/" + lang + "/" + categoryid.ToString(), "");
        List<cms_post.cms_postcontents> obj = JsonConvert.DeserializeObject<List<cms_post.cms_postcontents>>(json);
        return obj;
    }
}
