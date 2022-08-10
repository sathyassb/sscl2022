<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="_Default" %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content runat="server" ContentPlaceHolderID="contentPlaceholder">


    <!-- Row -->
    <!-- Row -->
    <!-- .row -->
    <section class="pages-top-bg" id="city">
        <div class="col-12">
            <div class="page-heading">
                <h2 class="featurette-heading eng">About Shivamogga Smart City</h2>
                <h2 class="featurette-heading kan">ಶಿವಮೊಗ್ಗ ಸ್ಮಾರ್ಟ್ ಸಿಟಿ ಬಗ್ಗೆ</h2>
            </div>

        </div>
    </section>
    <section class="section-first">
        <asp:Repeater runat="server" ID="rptHome1">
            <ItemTemplate>
                <div class="container">
                    <div class="row">
                      
                        <div class="col-md-6 order-md-2">
                            <h2 class="default-heading"><%#((cms_post.cms_postcontents)Container.DataItem).title %></h2>
                            <p class="lead"><%#((cms_post.cms_postcontents)Container.DataItem).contenttext %></p>
                        </div>
                        <div class="col-md-6 cms-image-box-half order-md-1">
                            <img src='<%#ConfigurationManager.AppSettings["path"].ToString()+"/cms/"+((cms_post.cms_postcontents)Container.DataItem).coverimage %>' />
                        </div>
                      
                    </div>

                    <hr class="featurette-divider">


                    <!-- /END THE FEATURETTES -->
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </section>
    <section class="section-second">
        <asp:Repeater runat="server" ID="rpt2">
            <ItemTemplate>
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <h2 class="default-heading"><%#((cms_post.cms_postcontents)Container.DataItem).title %></h2>
                            <p class="lead"><%#((cms_post.cms_postcontents)Container.DataItem).contenttext %></p>
                        </div>
                        <div class="col-md-6 cms-image-box-half">
                            <img src='<%#ConfigurationManager.AppSettings["path"].ToString()+"/cms/"+((cms_post.cms_postcontents)Container.DataItem).coverimage %>' />
                        </div>

                    </div>

                </div>
            </ItemTemplate>
        </asp:Repeater>
    </section>
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2 class="default-heading eng">Annual Report</h2>
                <h2 class="default-heading kan">ವಾರ್ಷಿಕ ವರದಿ</h2>
                <p>
                    <asp:Label runat="server" ID="lblAnnualReport"></asp:Label>
                </p>
            </div>
        </div>
    </div>
    <section class="section-third">
        <div class="container">
        <div class="row">
            <asp:Repeater runat="server" ID="rptResPdf">
                <ItemTemplate>
                   
                    <div class="col-3">
                           <a href='<%#ConfigurationManager.AppSettings["path"].ToString()+"/cms/"+((com_doc)Container.DataItem).filename %>' target="_blank">
                        <div class="thumb-resource">
                            <div class="thumb-image-pdf">
                              
                                <asp:Image runat="server" ID="imgThumb" src="../contents/pdf.png" />
                                   
                                
                            </div>
                            <div class="thumb-text">
                                <%# ((com_doc)Container.DataItem).title %>
                                <div class="thumb-ext">
                                    <%# ((com_doc)Container.DataItem).ext %>
                                </div>

                            </div>
                        </div>
                                </a>
                    </div>
                          
                </ItemTemplate>
            </asp:Repeater>
        </div>
            </div>
    </section>
      <div class="container" id="rti">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2 class="default-heading eng">RTI</h2>
                <h2 class="default-heading kan">ಆರ್ ಟಿ ಐ</h2>
                <p>
                    <asp:Label runat="server" ID="Label1"></asp:Label>
                </p>
            </div>
        </div>
    </div>
    <section class="section-third">
        <div class="container">
        <div class="row">
            <asp:Repeater runat="server" ID="rptRTI">
                <ItemTemplate>
                   
                    <div class="col-md-3 col-12">
                           <a href='<%#ConfigurationManager.AppSettings["path"].ToString()+"/cms/"+((com_doc)Container.DataItem).filename %>' target="_blank">
                        <div class="thumb-resource">
                            <div class="thumb-image-pdf">
                              
                                <asp:Image runat="server" ID="imgThumb" src="../contents/pdf.png" />
                                   
                                
                            </div>
                            <div class="thumb-text">
                                <%# ((com_doc)Container.DataItem).title %>
                                <div class="thumb-ext">
                                    <%# ((com_doc)Container.DataItem).ext %>
                                </div>

                            </div>
                        </div>
                                </a>
                    </div>
                          
                </ItemTemplate>
            </asp:Repeater>
        </div>
            </div>
    </section>
    <div class="container" id="directors">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2 class="default-heading eng">Directors</h2>
                <h2 class="default-heading kan">ನಿರ್ದೇಶಕರು</h2>
                <p>
                    <asp:Label runat="server" ID="lblDirectors"></asp:Label>
                </p>
            </div>
        </div>
    </div>
      <div class="container">
        <div class="row">
    <asp:Repeater runat="server" ID="rptMDCEO">
                            <ItemTemplate>
                                <div class="col-12 col-md-4">
                                    <div class="thumb-resource">
                                        <div class="thumb-image-photo">

                                            <img src='<%#ConfigurationManager.AppSettings["path"].ToString()+"/cms/"+((com_doc)Container.DataItem).filename %>' />

                                        </div>
                                        <div class="thumb-text">
                                            <%# ((com_doc)Container.DataItem).title %>
                                           <h6> <%# ((com_doc)Container.DataItem).description %></h6>
                                        </div>
                                       
                                    </div>
                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
    </div>
          </div>
    <div class="container mt-5">
        <div class="row">
    <asp:Repeater runat="server" ID="rptDirectors">
                            <ItemTemplate>
                                <div class="col-12 col-md-4">
                                    <div class="thumb-resource">
                                        <div class="thumb-image-photo">

                                            <img src='<%#ConfigurationManager.AppSettings["path"].ToString()+"/cms/"+((com_doc)Container.DataItem).filename %>' />

                                        </div>
                                        <div class="thumb-text">
                                            <%# ((com_doc)Container.DataItem).title %>
                                           <h6> <%# ((com_doc)Container.DataItem).description %></h6>
                                        </div>
                                       
                                    </div>
                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
    </div>
          </div>
    
    <div class="container" id="staffs">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2 class="default-heading eng">Officers and Staff Details</h2>
                <h2 class="default-heading kan">ಅಧಿಕಾರಿಗಳು ಮತ್ತು ಸಿಬ್ಬಂದಿ ವಿವರಗಳು</h2>
                <p>
                    <asp:Label runat="server" ID="lblStaffs"></asp:Label>
                </p>
            </div>
        </div>
    </div>
    <!-- .row -->


    <!-- /.row -->

    
</asp:Content>
