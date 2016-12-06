<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ThuongMai.aspx.cs" Inherits="WebSiteVanGia.ThuongMai" %>

<%@ Register Src="~/ctr/ctr_toprow.ascx" TagPrefix="uc1" TagName="ctr_toprow" %>
<%@ Register Src="~/ctr/ctr_footer.ascx" TagPrefix="uc1" TagName="ctr_footer" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Content_TopRow" runat="server">
    <uc1:ctr_toprow runat="server" ID="ctr_toprow" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_HeaderRow" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_ShowcaseRow" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MaintopRow" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_ContentRow" runat="server">

   <%-- <div style="padding-top: 10px; padding-bottom: 90px;" id="video-row">
        <div class="row-container visible visible-first">
            <div class="container">
                <div id="bottom" class="row">
                    <div class="moduletable testimonials  span12">
                        <div class="module_container">
                            <header>
                                <h2 class="moduleTitle visible visible-first">
                                    <span style="font-size: 25px; font-weight: bold;" class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first tencongty">CÔNG TY CỔ PHẦN XÂY DỰNG VÀ THƯƠNG MẠI DỊCH VỤ VẠN GIA</span> </h2>

                            </header>
                            <div class="mod-newsflash-adv mod-newsflash-adv__testimonials cols-1" id="module_105">
                                <div style="font-size: 18px;" class="pretext slogon">VẠN GIA, VẠN NIỀM VUI &ndash; VẠN NỤ CƯỜI</div>
                                <div class="row-fluid">
                                    <asp:Repeater ID="Repeater2" DataSourceID="SqlDataSource1" runat="server">
                                        <ItemTemplate>
                                             <article class="cusGioiThieu span4 item item_num0 item__module visible-first" id="item_49">
                                        <!-- Intro Image -->
                                        <figure class="item_img img-intro img-intro__left">
                                            <img width="30" height="33" src="img/blockquote_icon.png" alt="" class="">
                                        </figure>
                                        <div class="item_content">
                                            <!-- Item title -->
                                            <!-- Introtext -->
                                            <div class="item_introtext">
                                                <p  style="white-space: pre-line; font-weight: bold; font-size: 17px;"><%#Eval("name_vg") %></p>
                                                     <p  style="white-space: pre-line; font-size: 17px;"><%#Eval("detail_type_word_vg") %></p>


                                            </div>


                                            <!-- Read More link -->
                                        </div>
                                        <div class="clearfix"></div>

                                    </article>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM 	web_vangia_config WHERE type_word_vg=1">
       

    </asp:SqlDataSource>


                                </div>
                                <div class="clearfix"></div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <div class="row-container visible visible-first" style="background-color:#ffffff;">
        <div class="container">
            <div class="content-inner row">

                <div class="span12" id="component">
                    <main role="main">


                        <div class="note"></div>
                        <section class="page-gallery page-gallery__">
                            <header class="page_header">
                                <h2 class="visible-first visible"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first">
                                    <asp:Literal ID="lbrShow" runat="server"></asp:Literal><img src="img/VGtrade.jpg" width="20%" /></span></h2>
                            </header>
                            <%-- <div class="category_desc">
        <div class="clr"></div>
  </div>--%>
                            <!-- Filter -->
                            <ul class="gallery items-row cols-3 hover_false grid loaded" id="isotopeContainer">
                                <asp:ListView ID="lvShow" runat="server" DataSourceID="dsProject">
                                    <ItemTemplate>
                                        <li class="gallery-item mix mix_all gallery-grid   firstItem" style="display: inline-block; text-align: center; opacity: 1;">
                                            <!-- Image  -->
                                            <figure class="item_img img-intro img-intro__none cusitem_img" >
                                                <a href="/DetailProject.aspx?id=<%#Eval("vangia_id_project") %>">

                                                    <img src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0]+"/"+Eval("originalFilepath") %>" alt="" style="width: 288px; height: 192px !important;">
                                                  <%--  <span class="lazy_preloader_inner" style="width: 170px; padding-top: 100%;"></span>--%>


                                                </a>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                            </figure>
                                            <!--  title/author -->
                                            <div class="item_header cusitem_header">
                                                <h4 class="item_title visible-first">
                                                    <a href="/DetailProject.aspx?id=<%#Eval("vangia_id_project") %>">
                                                        <span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span>
                                                        <span class="item_title_part1 item_title_part_even item_title_part_first_half"></span>
                                                        <span class="item_title_part2 item_title_part_odd item_title_part_second_half"><%#Eval("vangia_name_project") %></span> </a>
                                                </h4>

                                            </div>
                                            <!-- Introtext -->
                                            <div class="item_introtext">
                                                <%-- <%#Eval("vangia_name_project") %>   --%>
                                            </div>

                                            <!-- info BOTTOM -->
                                            <div class="clearfix"></div>
                                        </li>


                                    </ItemTemplate>

                                </asp:ListView>
                                <li class="gap"></li>
                                <li class="gap"></li>
                                <li class="gap lastItem"></li>

                            </ul>
                            <footer class="pagination">

                                <ul>
                                    <li class="pagination-start">
                                        <span>
                                            <asp:DataPager ID="DataPager1" PagedControlID="lvShow" runat="server" PageSize="9">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonCssClass="pagenav" ShowNextPageButton="False" />
                                                    <asp:NumericPagerField CurrentPageLabelCssClass="pagenav" />
                                                    <asp:NextPreviousPagerField ShowPreviousPageButton="False" ButtonCssClass="pagenav" />
                                                </Fields>
                                            </asp:DataPager>
                                        </span>
                                    </li>

                                </ul>

                            </footer>
                        </section>



                    </main>
                </div>
            </div>
        </div>
    </div>

    <asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM web_vangia_project left join tblSysPicture on tblSysPicture.advert_id=web_vangia_project.vangia_id_project  WHERE (vangia_status_project = 1)   and vangia_typeid_project=2   AND (vangia_language_project = 2 )  and tblSysPicture.position=1  order by vangia_id_project desc ">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
        </SelectParameters>

    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
   <%-- <div style="background-position: 50% -7.5px;" id="mainbottom-row" data-stellar-background-ratio="0.5">
        <div class="row-container visible-first visible">
            <div class="container">
                <div id="mainbottom" class="row">
                    <div class="moduletable droplist  span12">
                        <div class="module_container">
                            <header>
                                <h2 class="moduleTitle visible-first visible"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span><span class="item_title_part1 item_title_part_even item_title_part_second_half">Thông tin Thương Mại</span></h2>
                            </header>
                            <div class="mod-newsflash-adv droplist mod-newsflash-adv__droplist cols-2" id="module_146">
                                <div class="pretext">
                                    <br>
                                </div>
                                <div class="row-fluid">
                                    <article class="span4 item item_num0 item__module visible-first visible" id="Article2">
                                        <span class="dropcap">1.</span>
                                        <div style="padding-top: 10px;" class="item_content">
                                            <!-- Item title -->
                                            <h4 style="font: 400 27px/31px 'Ubuntu Condensed', sans-serif;" class="item_title item_title__services kehoach  visible-first visible">Phân phối</h4>
                                            <!-- Introtext -->
                                            <div class="item_introtext">
                                                <p style="white-space: pre-line; font-size: 15px;">
                                                    <asp:Repeater ID="Repeater1" DataSourceID="dsXayDungKeHoach" runat="server">
                                                        <ItemTemplate>
                                                            <a class="cusa" href="/DetailProject.aspx?id=<%#Eval("vangia_id_project") %>">
                                                                <%#Eval("vangia_name_project") %></a>
                                                        </ItemTemplate>

                                                    </asp:Repeater>

                                                </p>



                                            </div>


                                            <!-- Read More link -->


                                        </div>
                                        <div class="clearfix"></div>

                                    </article>
                                    <article class="span4 item item_num0 item__module visible-first visible" id="Article1">
                                        <span class="dropcap">2.</span>
                                        <div style="padding-top: 10px;" class="item_content">
                                            <!-- Item title -->
                                            <h4 style="color: white; font: 400 27px/31px 'Ubuntu Condensed', sans-serif;" class="item_title item_title__services thongtin visible-first visible">Thông tin</h4>
                                            <!-- Introtext -->
                                            <div class="item_introtext">
                                                <p style="white-space: pre-line; font-size: 15px;">
                                                    <asp:Repeater ID="kh" DataSourceID="dsXayDungThongTin" runat="server">
                                                        <ItemTemplate>
                                                            <a class="cusa" href="/DetailProject.aspx?id=<%#Eval("vangia_id_project") %>">
                                                                <%#Eval("vangia_name_project") %></a>
                                                        </ItemTemplate>

                                                    </asp:Repeater>

                                                </p>

                                            </div>


                                            <!-- Read More link -->


                                        </div>
                                        <div class="clearfix"></div>

                                    </article>

                                </div>
                                <div class="clearfix"></div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="dsXayDungKeHoach" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM web_vangia_project WHERE (vangia_status_project = 1) and vangia_typeid_project=21 AND (vangia_language_project = @vangia_language_project ) order by vangia_order_project ">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
        </SelectParameters>

    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsXayDungThongTin" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM web_vangia_project WHERE (vangia_status_project = 1) and vangia_typeid_project=22 AND (vangia_language_project = @vangia_language_project ) order by vangia_order_project ">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
        </SelectParameters>

    </asp:SqlDataSource>--%>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <%--<uc1:ctr_footer runat="server" ID="ctr_footer" />--%>
</asp:Content>
