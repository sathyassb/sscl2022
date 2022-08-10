<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.ServiceModel.Activation" %>
<%@ Import Namespace="System.ServiceModel.Web " %>
<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        RegisterRoutes(RouteTable.Routes);

    }
    public static void RegisterRoutes(RouteCollection routes)
    {
        routes.MapPageRoute("about", "about", "~/about.aspx");
        routes.MapPageRoute("services", "services", "~/services.aspx");
        routes.MapPageRoute("features", "features", "~/features.aspx");
        routes.MapPageRoute("pricing", "pricing", "~/pricing.aspx");
        routes.MapPageRoute("faq", "faq", "~/faq.aspx");
        routes.MapPageRoute("contact", "contact", "~/contact.aspx");
          
        
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    {
        // Code that runs when an unhandled error occurs
        Exception exc = Server.GetLastError();
        HttpContext con = HttpContext.Current;
        return;
       Server.Transfer("~/Page.aspx?PostId=11");

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

    private void Application_AuthenticateRequest(object sender, EventArgs eventArgs)
    {
        try
        {
            var app = (HttpApplication)sender;
            var principal = app.Context.User;
            if (principal == null || !principal.Identity.IsAuthenticated) return;
            var cookie = app.Context.Request.Cookies[FormsAuthentication.FormsCookieName];
            if (cookie == null) return;
            var ticket = FormsAuthentication.Decrypt(cookie.Value);
            if (ticket == null) return;
            var roles = ticket.UserData.Split(new[] { "|" }, StringSplitOptions.RemoveEmptyEntries);
            var identity = principal.Identity;
            app.Context.User = new System.Security.Principal.GenericPrincipal(identity, roles);
        }
        catch (Exception)
        {
            return;
        }
    }
       
</script>
