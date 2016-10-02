<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="WebSiteVanGia.Blog" %>

<%@ Register Src="~/ctr/ctr_toprow.ascx" TagPrefix="uc1" TagName="ctr_toprow" %>
<%@ Register Src="~/ctr/ctr_footer.ascx" TagPrefix="uc1" TagName="ctr_footer" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ct_post_fb" runat="server">
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
    <div class="row-container">
        <div class="container">
            <div class="content-inner row">

                <div id="component" class="span12">
                    <main role="main">


                        <section class="page-blog page-blog__" itemscope itemtype="http://schema.org/Blog">
                            <header class="page_header">
                                <h2><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first">Blog</span> </h2>
                            </header>
                            <%--  <article class="category_desc">
                                pulvinar, lorem eget dictum	
                                <div class="clr"></div>
                            </article>--%>
                            <asp:ListView ID="lvShow" runat="server" DataSourceID="dsProject">
                                <ItemTemplate>
                                    <div class="items-row cols-1 row-0 row-fluid">
                                        <div class="span12">
                                            <article class="item column-1">
                                                <!--  title/author -->
                                                <header class="item_header">
                                                    <h4 class="item_title">
                                                        <a href="DetailBlog.aspx?id=<%#Eval("id_blog_tra") %>">
                                                            <span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"><%#Eval("titile_blog_tra") %></span>
                                                        </a>
                                                    </h4>
                                                </header>
                                                <!-- info TOP -->
                                                <%--           <div class="item_info">
                                                        <dl class="item_info_dl">
                                                            <dt class="article-info-term"></dt>
                                                            <dd>
                                                                <address class="item_createdby">
                                                                    by Super User
                                                                </address>
                                                            </dd>
                                                            <dd>
                                                                <time datetime="2014-04-30 19:40" class="item_published">
                                                                    on 2014-04-30
                                                                </time>
                                                            </dd>
                                                        </dl>
                                                    </div>--%>
                                                <!-- Intro image -->
                                                <figure class="item_img img-intro img-intro__none">
                                                    <a href="DetailBlog.aspx?id=<%#Eval("id_blog_tra") %>">
                                                        <img src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("img_blog_tra").ToString().Split('_')[0]+"/"+Eval("img_blog_tra") %>" alt="" />
                                                    </a>
                                                </figure>
                                                <!-- Introtext -->
                                                <div class="item_introtext">
                                                    <p><%#Eval("short_des_blog_tra") %></p>
                                                </div>
                                                <!-- info BOTTOM -->
                                                <!-- Tags -->
                                                <!-- More -->
                                                <a class="btn btn-info" href="DetailBlog.aspx?id=<%#Eval("id_blog_tra") %>">
                                                    <span>Chi tiết
                                                    </span>
                                                </a>
                                            </article>
                                            <!-- end item -->
                                        </div>
                                        <!-- end spann -->

                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                            <!-- end row -->

                            <footer class="pagination">
                                <ul>
                                    <li class="pagination-start">
                                        <asp:DataPager ID="DataPager1" PagedControlID="lvShow" runat="server" PageSize="9">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonCssClass="pagenav" ShowNextPageButton="False" />
                                                    <asp:NumericPagerField CurrentPageLabelCssClass="pagenav" />
                                                    <asp:NextPreviousPagerField ShowPreviousPageButton="False" ButtonCssClass="pagenav" />
                                                </Fields>
                                            </asp:DataPager>

                                    </li>
                                     </ul>
                            </footer>
                            <asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:adminGoldConnectionString %>" SelectCommand="SELECT * FROM [tbl_blog_tra] WHERE (([id_company] = @id_company) AND ([status_blog_tra] = @status_blog_tra))">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="2" Name="id_company" Type="Int32" />
                                    <asp:Parameter DefaultValue="1" Name="status_blog_tra" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </section>
                    </main>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentFooter" runat="server">
     <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
