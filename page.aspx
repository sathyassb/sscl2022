<%@ Page Language="C#" AutoEventWireup="true" CodeFile="page.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="_Default" %>

<asp:Content runat="server" ContentPlaceHolderID="contentPlaceholder">


    <!-- Row -->
    <!-- Row -->
    <!-- .row -->
    <section class="pages-top-bg" id="city">
        <div class="col-12">
            <div class="page-heading">
                <h2 class="featurette-heading"><asp:Label runat="server" ID="lblHeading"></asp:Label></h2>
            </div>

        </div>
    </section>
    <div class="container">
    
    <div class="col-12">
    <section class="page-section-first">
        <asp:Repeater runat="server" ID="rpt2">
            <ItemTemplate>
                <div class="container page">
                    <div class="row">
                        <div class="col-md-8 order-md-1 page-description">
                            <p class="page-p"><%#((cms_post.cms_postcontents)Container.DataItem).titledescription %></p>
                        </div>
                
                        <div class="col-md-4 cms-image-box-page order-md-2">
                                    <a href='<%#ConfigurationManager.AppSettings["path"].ToString()+"cms/"+((cms_post.cms_postcontents)Container.DataItem).coverimage %>' data-toggle="lightbox" data-title='<%#((cms_post.cms_postcontents)Container.DataItem).title %>' data-gallery="example-gallery" target="_blank">
                            <img src='<%#ConfigurationManager.AppSettings["path"].ToString()+"/cms/"+((cms_post.cms_postcontents)Container.DataItem).coverimage %>' />
                                            </a>
                        </div>
                        

                    </div>

                </div>
            </ItemTemplate>
        </asp:Repeater>
    </section>
        </div>
    <div class="row">
        <div class="col-8">
            
    <section>
        <asp:Repeater runat="server" ID="rptContents">
            <ItemTemplate>
                            <p class="lead"><%#((cms_post.cms_postcontents)Container.DataItem).contenttext %></p>

            </ItemTemplate>
        </asp:Repeater>
    </section>
        </div>
        <div class="col-4">
            <asp:Repeater runat="server" ID="rptPDF">
                        <ItemTemplate>

                            <div class="col-12">
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
                    <asp:Repeater runat="server" ID="rptZip">
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
                    <asp:Repeater runat="server" ID="rptKMZ">
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
        
    <!-- .row -->
        </div>
    <div class="container">
    <!-- /.row -->
       <div class="row">
                    <asp:Repeater runat="server" ID="rptImages">
                        <ItemTemplate>

                            <div class="col-4">
                                <a href='<%#ConfigurationManager.AppSettings["path"].ToString()+"cms/"+((com_doc)Container.DataItem).filename %>' data-toggle="lightbox" data-title='<%#((com_doc)Container.DataItem).title %>' data-footer='<%#((com_doc)Container.DataItem).description %>' data-gallery="example-gallery" target="_blank">
                                    <div class="thumb-resource">
                                        <div class="thumb-image-gallery">

                                            <img src='<%#ConfigurationManager.AppSettings["path"].ToString()+"cms/"+((com_doc)Container.DataItem).filename %>' />


                                        </div>
                                        <div class="thumb-text">
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
       <div class="row">
                    <asp:Repeater runat="server" ID="rptMovie">
                        <ItemTemplate>
                               <div class="col-4">
                            <video controls>
                                <source src='<%#ConfigurationManager.AppSettings["path"].ToString()+"cms/"+((com_doc)Container.DataItem).filename+"#t=0.1" %>' type="video/mp4" />
                            </video>
</div>

                            
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
        </div>
    
</asp:Content>
