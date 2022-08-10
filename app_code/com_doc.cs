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
public class com_doc
{

    public long docid { get; set; }
    public string filename { get; set; }
    public string ext { get; set; }
    public long postid { get; set; }
    public string title { get; set; }
    public string description { get; set; }
    public string title_kan { get; set; }
    public string description_kan { get; set; }
    public int slno { get; set; }

    public bool isgallery { get; set; }
    public string tablename { get; set; }
    string url { get; set; }
    public com_doc()
    {
        url = "com_doc";
    }

    public List<com_doc> GetAllById(string tablename, long postid)
    {
        this.tablename = tablename;
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("GET", url, "byid/"+tablename+"/" + postid.ToString(), "");
        List<com_doc> obj = JsonConvert.DeserializeObject<List<com_doc>>(json);
        return obj;
    }
    

    public com_doc InsertOrUpdate()
    {
        tcrestconnect rest = new tcrestconnect();
        var jsonrq = JsonConvert.SerializeObject(this);
        string jsonres = rest.tcWebRequest("POST", url, "", jsonrq);
        com_doc docs = JsonConvert.DeserializeObject<com_doc>(jsonres);
        return docs;
    }
    public void Update(string tablename,long docid)
    {
        tcrestconnect rest = new tcrestconnect();
        var jsonrq = JsonConvert.SerializeObject(this);
        string jsonres = rest.tcWebRequest("PUT", url, tablename+"/"+docid.ToString(), jsonrq);
    }
    public int Delete(string tablename,string postid)
    {
        tcrestconnect rest = new tcrestconnect();
        string json = rest.tcWebRequest("DELETE", url,tablename+"/"+postid, "");
        int rowcount = int.Parse(json);
        return rowcount;
    }

}

