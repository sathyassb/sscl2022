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
        if(Request.QueryString["id"]!=null)
        { 
        idLoadPage(Request.QueryString["id"]);
        }

    }

    private void idLoadPage(string id)
    {
        string language = (Session["language"] == null || Session["language"].ToString() == "") ? "E" : Session["language"].ToString();
        cms_post post = new cms_post();
        var postobj=post.GetById(language, long.Parse(id));
        com_doc doc = new com_doc();

        lblHeading.Text = postobj.title;

        rpt2.DataSource = new[] { postobj };
        rpt2.DataBind();
        var files = doc.GetAllById("cms_doc", long.Parse(id));
        rptImages.DataSource = from s in files where (s.ext == "jpg" || s.ext == "jpeg" || s.ext == "png") select s;
        rptImages.DataBind();

        rptPDF.DataSource = from s in files where (s.ext == "pdf") select s;
        rptPDF.DataBind();

        rptContents.DataSource = new[] { postobj };
        rptContents.DataBind();
        


    }
}