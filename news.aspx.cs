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
        idLoadNews();

    }

    private void idLoadNews()
    {
        cms_post post = new cms_post();
        var news=post.GetDisplaybyCategory("E", 3);
        rptImages.DataSource = news;
        rptImages.DataBind();
        


    }
}