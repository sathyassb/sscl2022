using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Text;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Reflection;
using System.Linq;

/// <summary>
/// Summary description for iLib
/// </summary>
public class tclib
{
    
    public static bool idSendEmail(string SmtpClient, string FromId, string FromIdPassWord, string ToId, string subject, string DisplayName, string Body)
    {
        MailMessage mail = new MailMessage();
        NetworkCredential cred = new NetworkCredential(FromId, FromIdPassWord);
        mail.To.Add(ToId);
        mail.Subject = subject;
        mail.From = new MailAddress(FromId, DisplayName);
        mail.IsBodyHtml = true;
        mail.Body = Body;
        SmtpClient smtp = new SmtpClient(SmtpClient);
        smtp.UseDefaultCredentials = false;
        smtp.EnableSsl = true;
        smtp.Credentials = cred;
        try
        {
            smtp.Send(mail);
            return true;
        }
        catch { return false; }
    }

    

    
}
