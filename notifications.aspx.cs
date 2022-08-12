﻿using System;
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
        var news=post.GetDisplaybyCategory("E", 4);
        rptImages.DataSource = from s in news orderby s.postid descending select s;
        rptImages.DataBind();
        


    }
}