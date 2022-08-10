using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class AccFee
{
    public long FeeId { get; set; }
    public long LedgerId { get; set; }

    public string LedgerName { get; set; }
    public decimal Amount { get; set; }
    public long FeeStructureId { get; set; }
    public bool isDeleted { get; set; }
    public string Details { get; set; }

    //Large Usage
    public long TransactionId { get; set; }
    public long TransactionLogId { get; set; }

    public long StudentId { get; set; }
    public AccFee()
    {

    }
  

}

