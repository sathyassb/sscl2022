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
        idLoadHomePageData();
    }

    private void idLoadHomePageData()
    {
        //List<cms_post> homepage_data = new List<cms_post>();
        //if (tcReg.homepage_data != null)
        //{
        //    homepage_data = tcReg.homepage_data;
        //}
        //else
        //{
        //    cms_post post = new cms_post();
        //    homepage_data = post.GetDisplaybyCategory(3);
        //    tcReg.homepage_data = homepage_data;
        //}

        //rc_packages p = new rc_packages();

        //var subscriptions = p.GetAllPackages(true, true);
        //var p1items = p.GetAllPackageItems(subscriptions[0].packageid).Take(6);
        //var p2items = p.GetAllPackageItems(subscriptions[1].packageid).Take(6);
        //var p3items = p.GetAllPackageItems(subscriptions[2].packageid).Take(6);

        //lblMessage1.Text = homepage_data.FirstOrDefault(x => x.postid == 3).message;
        //lblMessage2.Text = homepage_data.FirstOrDefault(x => x.postid == 3).titledescription.Split('|')[0];
        //lblMessage3.Text = homepage_data.FirstOrDefault(x => x.postid == 3).titledescription.Split('|')[1];
        //lblMessage4.Text = homepage_data.FirstOrDefault(x => x.postid == 3).titledescription.Split('|')[2];
        //lblMessage5.Text= homepage_data.FirstOrDefault(x => x.postid == 3).titledescription.Split('|')[3];
        //lblt1.Text = homepage_data.FirstOrDefault(x => x.permalink == "apartments").titledescription;
        //lblm1.Text = homepage_data.FirstOrDefault(x => x.permalink == "apartments").message;

        //lblt2.Text = homepage_data.FirstOrDefault(x => x.permalink == "ind-house").titledescription;
        //lblm2.Text = homepage_data.FirstOrDefault(x => x.permalink == "ind-house").message;

        //lblt3.Text = homepage_data.FirstOrDefault(x => x.permalink == "empty-plot").titledescription;
        //lblm3.Text = homepage_data.FirstOrDefault(x => x.permalink == "empty-plot").message;

        //lblt4.Text = homepage_data.FirstOrDefault(x => x.permalink == "com-property").titledescription;
        //lblm4.Text = homepage_data.FirstOrDefault(x => x.permalink == "com-property").message;

        //lbls3heading.Text = homepage_data.FirstOrDefault(x => x.permalink == "s3-heading").titledescription;
        //s3t1.Text = homepage_data.FirstOrDefault(x => x.permalink == "remote-management").titledescription;
        //s3m1.Text = homepage_data.FirstOrDefault(x => x.permalink == "remote-management").message;

        //s3t2.Text = homepage_data.FirstOrDefault(x => x.permalink == "easy-service").titledescription;
        //s3m2.Text = homepage_data.FirstOrDefault(x => x.permalink == "easy-service").message;

        //s3t3.Text = homepage_data.FirstOrDefault(x => x.permalink == "instant-signup").titledescription;
        //s3m3.Text = homepage_data.FirstOrDefault(x => x.permalink == "instant-signup").message;

        //lblhowitworks.Text = homepage_data.FirstOrDefault(x => x.permalink == "how-it-works").titledescription;

        //lblStep1title.Text = homepage_data.FirstOrDefault(x => x.permalink == "how-it-works").message.Split('\n')[1].Split(':')[1];
        //lblStep1message.Text = homepage_data.FirstOrDefault(x => x.permalink == "how-it-works").message.Split('\n')[1].Split(':')[2];

        //lblStep2title.Text = homepage_data.FirstOrDefault(x => x.permalink == "how-it-works").message.Split('\n')[2].Split(':')[1];
        //lblStep2message.Text = homepage_data.FirstOrDefault(x => x.permalink == "how-it-works").message.Split('\n')[2].Split(':')[2];

        //lblStep3title.Text = homepage_data.FirstOrDefault(x => x.permalink == "how-it-works").message.Split('\n')[3].Split(':')[1];
        //lblStep3message.Text = homepage_data.FirstOrDefault(x => x.permalink == "how-it-works").message.Split('\n')[3].Split(':')[2];


        //lblStep4title.Text = homepage_data.FirstOrDefault(x => x.permalink == "how-it-works").message.Split('\n')[0].Split(':')[1];
        //lblStep4message.Text = homepage_data.FirstOrDefault(x => x.permalink == "how-it-works").message.Split('\n')[0].Split(':')[2];

        //lbls4t1.Text = homepage_data.FirstOrDefault(x => x.permalink == "avoid-visit").titledescription;
        //lbls4m1.Text = homepage_data.FirstOrDefault(x => x.permalink == "avoid-visit").message;

        //lbls4t2.Text = homepage_data.FirstOrDefault(x => x.permalink == "easy-follow-up").titledescription;
        //lbls4m2.Text = homepage_data.FirstOrDefault(x => x.permalink == "easy-follow-up").message;

        //lbls4t3.Text = homepage_data.FirstOrDefault(x => x.permalink == "visual-updates").titledescription;
        //lbls4m3.Text = homepage_data.FirstOrDefault(x => x.permalink == "visual-updates").message;

        //lblKey1title.Text = homepage_data.FirstOrDefault(x => x.permalink == "key-1").titledescription;
        //lblKey1message.Text = homepage_data.FirstOrDefault(x => x.permalink == "key-1").message;

        //lblKey2title.Text = homepage_data.FirstOrDefault(x => x.permalink == "key-2").titledescription;
        //lblKey2message.Text = homepage_data.FirstOrDefault(x => x.permalink == "key-2").message;

        //lblKey3title.Text = homepage_data.FirstOrDefault(x => x.permalink == "key-3").titledescription;
        //lblKey3message.Text = homepage_data.FirstOrDefault(x => x.permalink == "key-3").message;

        //lblPackage1title.Text = subscriptions[0].packagetitle;
        //lblPackage2title.Text = subscriptions[1].packagetitle;
        //lblPackage3title.Text = subscriptions[2].packagetitle;

        //rptPackage1.DataSource = p1items;
        //rptPackage1.DataBind();

        //rptPackage2.DataSource = p1items;
        //rptPackage2.DataBind();

        //rptPackage3.DataSource = p1items;
        //rptPackage3.DataBind();

    }

    protected void Page_LoadComplete(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
         
          //  lblHistory3.Text = Common.idLoadContents(62);
        }
    }
    protected void lnkAddImage_Click(object sender, EventArgs e)
    {

    }
}