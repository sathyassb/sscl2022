<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="_Default" %>

<asp:Content runat="server" ContentPlaceHolderID="contentPlaceholder">


    <!-- Row -->
    <!-- Row -->
    <!-- .row -->
   <section class="pages-top-bg" id="city">
        <div class="col-12">
            <div class="page-heading">
                <h2 class="featurette-heading">News & Updates</h2>
            </div>

        </div>
    </section>

    <div class="container news-top">
        <div class="row">
    <asp:Repeater runat="server" ID="rptImages">
                            <ItemTemplate>
                                <div class="col-12 col-md-4">
                                      <a href='<%#"page?id="+((cms_post)Container.DataItem).postid %>' />
                                    <div class="thumb-resource">
                                        <div class="thumb-image-news">

                                            <img src='<%#ConfigurationManager.AppSettings["path"].ToString()+"/cms/"+((cms_post)Container.DataItem).coverimage %>' />

                                        </div>
                                        <div class="thumb-text-news">
                                            <%# ((cms_post.cms_postcontents)Container.DataItem).title %>
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
