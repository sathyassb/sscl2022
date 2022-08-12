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
        cms_post post = new cms_post();
        var postobj=post.GetById("E", long.Parse(id));
        
        lblHeading.Text = postobj.title;

        com_doc doc = new com_doc();
        var gallery=doc.GetAllById("cms_doc", long.Parse(id));
        rptImages.DataSource = gallery;
        rptImages.DataBind();



    }
}