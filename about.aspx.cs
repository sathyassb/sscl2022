using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        idLoadAboutUs();

    }

    private void idLoadAboutUs()
    {
        string language = (Session["language"] == null || Session["language"].ToString() == "") ? "E" : Session["language"].ToString();
        cms_post post = new cms_post();
        var about=post.GetDisplaybyCategory(language, 2);
        var brief = about.FirstOrDefault(x => x.postid == 2);
        var mission = about.FirstOrDefault(x => x.postid == 16);
        var annualreport = about.FirstOrDefault(x => x.postid == 19);
        var directors = about.FirstOrDefault(x => x.postid == 18);
        var rti = about.FirstOrDefault(x => x.postid == 17);
        var staffs = about.FirstOrDefault(x => x.postid == 20);
        var mdceo = about.FirstOrDefault(x => x.postid == 36);
        com_doc doc = new com_doc();
        var annalreportfiles = doc.GetAllById("cms_doc", annualreport.postid);
        var mdceofiles = doc.GetAllById("cms_doc", mdceo.postid);
        var directorsfiles = doc.GetAllById("cms_doc", directors.postid);
        var rtifiles = doc.GetAllById("cms_doc", rti.postid);
        rptHome1.DataSource = new[] { brief };
        rptHome1.DataBind();

        rpt2.DataSource = new[] { mission };
        rpt2.DataBind();
        lblAnnualReport.Text = annualreport.title;

        rptResPdf.DataSource = annalreportfiles;
        rptResPdf.DataBind();

        rptMDCEO.DataSource = mdceofiles;
        rptMDCEO.DataBind();

        rptDirectors.DataSource = directorsfiles;
        rptDirectors.DataBind();

        rptRTI.DataSource = rtifiles;
        rptRTI.DataBind();

        lblStaffs.Text = staffs.contenttext;
        


    }
}