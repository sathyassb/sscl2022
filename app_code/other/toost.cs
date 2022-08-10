using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Status
{
    public Status()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    #region Toost
    public static void Toost(string statusMsg, string statusType)
    {
        HttpContext.Current.Session["StatusMsg"] = statusMsg;
        HttpContext.Current.Session["StatusType"] = statusType;
    }
    public static string StatusMsg()
    {
        if (HttpContext.Current.Session["StatusMsg"] == null)
        {
            return null;
        }
        return HttpContext.Current.Session["StatusMsg"].ToString();
    }
    public static string StatusType()
    {
        if (HttpContext.Current.Session["StatusType"] == null)
        {
            return null;
        }
        return HttpContext.Current.Session["StatusType"].ToString();
    }
    #endregion
}