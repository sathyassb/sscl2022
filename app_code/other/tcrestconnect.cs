using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class tcrestconnect
{
    public tcrestconnect()
    {
    }

    public string tcWebRequest(string method,string url,string param, string DATA)
    {

        string finalURL = tcReg.url + url +"/"+ param;
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(finalURL);
        request.Method = method;
        var data = Encoding.UTF8.GetBytes(DATA);
        if (method =="POST"||method=="PUT")
        {
            request.ContentType = "application/json; charset=utf-8";
            request.ContentLength = data.Length;
            using (var stream = request.GetRequestStream())
            {
                stream.Write(data, 0, data.Length);
            }
        }

        HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        WebHeaderCollection header = response.Headers;
        var encoding = System.Text.ASCIIEncoding.UTF8;
        string responseText = "";
        using (var reader = new System.IO.StreamReader(response.GetResponseStream(), encoding))
        {
            responseText = reader.ReadToEnd();
        }

        return responseText;
    }
}
  


