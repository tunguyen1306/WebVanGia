<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DetailBlog.aspx.cs" Inherits="WebSiteVanGia.DetailBlog" %>

<%@ Register Src="~/ctr/ctr_toprow.ascx" TagPrefix="uc1" TagName="ctr_toprow" %>
<%@ Register Src="~/ctr/ctr_footer.ascx" TagPrefix="uc1" TagName="ctr_footer" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ct_post_fb" runat="server">
    <asp:Repeater runat="server" DataSourceID="SqlDataSource1" >
         <itemtemplate>
        <meta property="og:title"
            content="<%#Eval("titile_blog_tra")%>" />

        <meta property="og:url" content="http://vangia.net/DetailBlog.aspx?id=<%#Eval("id_blog_tra")%>" />
        <meta name="description" content="<%#Eval("short_des_blog_tra")%>"/>
        <meta property="og:description" content="<%#Eval("short_des_blog_tra")%>" />
       <meta property="og:image"
                    content="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("img_blog_tra").ToString().Split('_')[0]+"/"+Eval("img_blog_tra") %>" />
           
    </itemtemplate>
    </asp:Repeater>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:adminGoldConnectionString %>" SelectCommand="SELECT * FROM [tbl_blog_tra] WHERE id_blog_tra=@id_blog_tra">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="0" Name="id_blog_tra" QueryStringField="id" />
                                </SelectParameters>
                            </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_TopRow" runat="server">
    <uc1:ctr_toprow runat="server" ID="ctr_toprow" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_HeaderRow" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_ShowcaseRow" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_MaintopRow" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_ContentRow" runat="server">
    <div id="content-row">
        <div class="row-container">
            <div class="container">
                <div class="content-inner row">

                    <div id="component" class="span12">
                        <main role="main">

                            <asp:Repeater ID="rptShow" runat="server" DataSourceID="dsProject">
                                <ItemTemplate>

                                    <article class="page-item page-item__blog page-item__" itemscope itemtype="http://schema.org/Article">
                                        <header class="page-header">
                                            <h2>
                                                <span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first">Blog</span>

                                            </h2>
                                        </header>
                                        <header class="item_header">
                                            <h4 class="item_title">
                                                <span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"><%#Eval("titile_blog_tra") %></span>

                                            </h4>
                                        </header>
                                        <%-- <div class="item_info">
                                            <dl class="item_info_dl">
                                                <dt class="article-info-term"></dt>
                                                <dd>
                                                    <address class="item_createdby">
                                                        by Super User
                                                    </address>
                                                </dd>
                                                <dd>
                                                    <time datetime="2014-05-02 19:47" class="item_published">on 2014-05-02
                                                    </time>
                                                </dd>
                                            </dl>
                                        </div>--%>
                                        <div class="item_img img-full img-full__none item-image">
                                            <img src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("img_blog_tra").ToString().Split('_')[0]+"/"+Eval("img_blog_tra") %>" alt="" />
                                        </div>

                                        <div class="item_fulltext">

                                            <%# HttpUtility.HtmlDecode(Eval("des_blog_tra").ToString()) %>
                                        </div>

                                        <div class="addthis_sharing_toolbox"></div>
                                        <script type="text/javascript">
                                            var addthis_config =
                                        {
                                            pubid: "ra-5497f2254123130b"
                                        }
                                        </script>
                                        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js"></script>

                                        <script type="text/javascript">
                                            //<![CDATA[
                                            var disqus_shortname = 'tmdevteam';

                                            /* * * DON'T EDIT BELOW THIS LINE * * */
                                            (function () {
                                                var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
                                                dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
                                                (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
                                            })();
                                            //]]>
                                        </script>
                                        <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>


                                        <!-- Pagination -->
                                    </article>
                                </ItemTemplate>
                            </asp:Repeater>

                            <asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:adminGoldConnectionString %>" SelectCommand="SELECT * FROM [tbl_blog_tra] WHERE id_blog_tra=@id_blog_tra">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="0" Name="id_blog_tra" QueryStringField="id" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </main>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="push"></div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentFooter" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
