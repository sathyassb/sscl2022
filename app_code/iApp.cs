using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Collections;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Diagnostics;
using System.Timers;
using System.IO;
using System.Xml;
using Microsoft.Win32;
using System.Data.SqlClient;
public class tcReg
{
  //  public static string url = "https://localhost:44388/api/";
  public static string url = "https://3jwdtwe5mj.execute-api.us-east-2.amazonaws.com/Prod/api/";


  // public static string imageurl= "http://localhost:49823/contents/cms/";
    public static string imageurl = "https://myaccount.therealtycheck.com/contents/cms/";

    public static List<cms_post> homepage_data;
    public static List<cms_post> about_data;
    public static List<cms_post> features_data;
    tcReg()
    {

    }

}
