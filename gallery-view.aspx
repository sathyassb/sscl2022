<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gallery-view.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="_Default" %>

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
    <div class="container mt-5">
        <div class="row">
    <asp:Repeater runat="server" ID="rptImages">
                <ItemTemplate>
                   
                    <div class="col-4">
                           <a href='<%#ConfigurationManager.AppSettings["path"].ToString()+"cms/"+((com_doc)Container.DataItem).filename %>' data-toggle="lightbox"  data-title='<%#((com_doc)Container.DataItem).title %>' data-footer='<%#((com_doc)Container.DataItem).description %>' data-gallery="example-gallery" target="_blank">
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
          </div>
    
    

    

    <!-- .row -->


    <!-- /.row -->

    
</asp:Content>
