<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="allProject.aspx.cs" Inherits="WebSiteVanGia.allProject" %>

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

    <%--  <div style="padding-top: 10px; padding-bottom: 90px;" id="video-row">
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
                                    <article class="cusGioiThieu span4 item item_num0 item__module visible-first" id="item_49">
                                        <!-- Intro Image -->
                                        <figure class="item_img img-intro img-intro__left">
                                            <img width="30" height="33" src="img/blockquote_icon.png" alt="" class="">
                                        </figure>
                                        <div class="item_content">
                                            <!-- Item title -->
                                            <!-- Introtext -->
                                            <div class="item_introtext">
                                                <p class="gioithieu" style="white-space: pre-line; font-weight: bold; font-size: 17px;">VẠN GIA Là công ty chuyên hoạt động trong tất cả các lĩnh vực có liên quan về xây dựng.</p>



                                            </div>


                                            <!-- Read More link -->
                                        </div>
                                        <div class="clearfix"></div>

                                    </article>



                                    <article class="cusGioiThieu span4 item item_num2 item__module  lastItem visible-first" id="item_47">
                                        <!-- Intro Image -->
                                        <figure class="item_img img-intro img-intro__left">
                                            <img width="30" height="33" src="/img/blockquote_icon.png" alt="" class="">
                                        </figure>
                                        <div class="item_content">
                                            <!-- Item title -->
                                            <!-- Introtext -->
                                            <div class="item_introtext">
                                                <p class="gioithieu1" style="white-space: pre-line; font-weight: bold; font-size: 17px;">Slogan của Vạn Gia:</p>
                                                <p class="gioithieud1" style="white-space: pre-line; font-size: 17px;">- Vạn Gia,Vạn Niềm Vui &ndash; Vạn Nụ Cười</p>

                                            </div>


                                            <!-- Read More link -->
                                        </div>
                                        <div class="clearfix"></div>

                                    </article>

                                    <article class=" cusGioiThieu span4 item item_num2 item__module  lastItem visible-first" id="Article3">
                                        <!-- Intro Image -->
                                        <figure class="item_img img-intro img-intro__left">
                                            <img width="30" height="33" src="/img/blockquote_icon.png" alt="" class="">
                                        </figure>
                                        <div class="item_content">
                                            <!-- Item title -->
                                            <!-- Introtext -->
                                            <div class="item_introtext">
                                                <p class="gioithieu2" style="white-space: pre-line; font-weight: bold; font-size: 17px;">Vạn Gia luôn phát triển để gửi đến Quý khách hàng sản phẩm tốt nhất, theo phương châm:</p>
                                                <p class="gioithieud2" style="white-space: pre-line; font-size: 17px;">- Tối ưu nhu cầu của khách hàng về sản phẩm &ndash; dịch vụ của công ty.</p>

                                            </div>


                                            <!-- Read More link -->
                                        </div>
                                        <div class="clearfix"></div>

                                    </article>
                                    <article class=" cusGioiThieu span4 item item_num2 item__module  lastItem visible-first" id="Article4">
                                        <!-- Intro Image -->
                                        <figure class="item_img img-intro img-intro__left">
                                            <img width="30" height="33" src="/img/blockquote_icon.png" alt="" class="">
                                        </figure>
                                        <div class="item_content">
                                            <!-- Item title -->
                                            <!-- Introtext -->
                                            <div class="item_introtext">
                                                <p class="gioithieu3" style="white-space: pre-line; font-weight: bold; font-size: 17px;">Kế hoạch sắp tới của Công ty:</p>
                                                <p class="gioithieud3" style="white-space: pre-line; font-size: 17px;">
                                                    - ĐẦU TƯ VỀ CON NGƯỜI

- ĐẦU TƯ VỀ CƠ SỞ VẬT CHẤT

- MỞ RỘNG PHẠM VI HOẠT ĐỘNG KINH DOANH
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
    </div>--%>
    <div class="row-container visible visible-first" style="background-color: #ffffff;">
        <div class="container">
            <div class="content-inner row">

                <div class="span12" id="component">
                    <header class="page_header">
                                <h2 class="visible-first visible"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first">
                                    <asp:Literal ID="lbrShow" runat="server"></asp:Literal><img src="img/VGconstruction.jpg" width="20%" /></span>
                                    <a class="btn register" style="padding: 10px; margin: 10px 0; background: #54acc9 !important; font: 400 14px/14px 'Ubuntu Condensed', sans-serif; color: #ffffff;" href="plan.aspx" target="_self"><span>Chi phí dự kiến</span></a>
                                </h2>

                            </header>
              <%--      <main role="main">


                        <div class="note"></div>
                        <section class="page-gallery page-gallery__">
                            <header class="page_header">
                                <h2 class="visible-first visible"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first">
                                    <asp:Literal ID="lbrShow" runat="server"></asp:Literal><img src="img/VGconstruction.jpg" width="20%" /></span>
                                    <a class="btn register" style="padding: 10px; margin: 10px 0; background: #54acc9 !important; font: 400 14px/14px 'Ubuntu Condensed', sans-serif; color: #ffffff;" href="plan.aspx" target="_self"><span>Chi phí dự kiến</span></a>
                                </h2>

                            </header>



                            <ul class="gallery items-row cols-3 hover_false grid loaded" id="isotopeContainer">
                                <asp:ListView ID="lvShow" runat="server" DataSourceID="dsProject">
                                    <ItemTemplate>
                                        <li class="gallery-item mix mix_all gallery-grid   firstItem" style="display: inline-block; text-align: center; opacity: 1;">

                                            <figure class="item_img img-intro img-intro__none cusitem_img">
                                                <a href="/DetailProject.aspx?id=<%#Eval("vangia_id_project") %>">

                                                    <img src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0]+"/"+Eval("originalFilepath") %>" alt="" style="width: 288px; height: 192px !important;">
                                                </a>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                            </figure>

                                            <div class="item_header cusitem_header">
                                                <h4 class="item_title visible-first">
                                                    <a href="/DetailProject.aspx?id=<%#Eval("vangia_id_project") %>">
                                                        <span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span>
                                                        <span class="item_title_part1 item_title_part_even item_title_part_first_half"></span>
                                                        <span class="item_title_part2 item_title_part_odd item_title_part_second_half"><%#Eval("vangia_name_project") %></span> </a>
                                                </h4>

                                            </div>

                                            <div class="item_introtext">
                                            </div>


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



                    </main>--%>

                    <div id="main">
                        <div class="metro_gallery flip vertical lightbox showProject" style="width: 990px;">

                           <%-- <asp:Repeater ID="repSlide" runat="server" DataSourceID="dsSlider" OnItemDataBound="repSlide_ItemDataBound">
                                <ItemTemplate>
                                    <div class="tile tile_1x1 blue">
                                        <asp:Repeater ID="rpPicture" runat="server">
                                            <ItemTemplate>

                                                <img src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath")%>" data-caption=" <%# Eval("vangia_name_project") %> " />
                                            </ItemTemplate>
                                        </asp:Repeater>


                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="dsSlider" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM    (SELECT ROW_NUMBER () OVER (ORDER BY web_vangia_project.vangia_id_project desc) AS RowNum,* FROM web_vangia_project where   (vangia_status_project = 1) and vangia_typeid_project=1 ) sub	WHERE RowNum = 1">
                                <SelectParameters>
                                    <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:HiddenField runat="server" ID="hdSlide" />
                            <asp:SqlDataSource ID="dsPicture" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand=" select * from tblSysPicture left join web_vangia_project on web_vangia_project.vangia_id_project=tblSysPicture.advert_id  where advert_id=@vangia_id_project">
                                <SelectParameters>

                                    <asp:ControlParameter ControlID="hdSlide" DefaultValue="0" Name="vangia_id_project" PropertyName="Value" />
                                </SelectParameters>

                            </asp:SqlDataSource>

<asp:Repeater ID="repSlide1" runat="server" DataSourceID="dsSlider1" OnItemDataBound="repSlide1_ItemDataBound">
                                <ItemTemplate>
                                    <div class="tile tile_1x1 darkred">
                                        <asp:Repeater ID="rpPicture1" runat="server">
                                            <ItemTemplate>

                                                <img src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath")%>" data-caption=" <%# Eval("vangia_name_project") %> " />
                                            </ItemTemplate>
                                        </asp:Repeater>


                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="dsSlider1" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM    (SELECT ROW_NUMBER () OVER (ORDER BY web_vangia_project.vangia_id_project desc) AS RowNum,* FROM web_vangia_project where   (vangia_status_project = 1) and vangia_typeid_project=1 ) sub	WHERE RowNum = 2">
                                <SelectParameters>
                                    <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:HiddenField runat="server" ID="hdSlide1" />
                            <asp:SqlDataSource ID="dsPicture1" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand=" select * from tblSysPicture left join web_vangia_project on web_vangia_project.vangia_id_project=tblSysPicture.advert_id  where advert_id=@vangia_id_project">
                                <SelectParameters>

                                    <asp:ControlParameter ControlID="hdSlide1" DefaultValue="0" Name="vangia_id_project" PropertyName="Value" />
                                </SelectParameters>

                            </asp:SqlDataSource>

<asp:Repeater ID="repSlide2" runat="server" DataSourceID="dsSlider2" OnItemDataBound="repSlide2_ItemDataBound">
                                <ItemTemplate>
                                    <div class="tile tile_1x2 orange">
                                        <asp:Repeater ID="rpPicture2" runat="server">
                                            <ItemTemplate>

                                                <img src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath")%>" data-caption=" <%# Eval("vangia_name_project") %> " />
                                            </ItemTemplate>
                                        </asp:Repeater>


                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="dsSlider2" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM    (SELECT ROW_NUMBER () OVER (ORDER BY web_vangia_project.vangia_id_project desc) AS RowNum,* FROM web_vangia_project where   (vangia_status_project = 1) and vangia_typeid_project=1 ) sub	WHERE RowNum = 3">
                                <SelectParameters>
                                    <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:HiddenField runat="server" ID="hdSlide2" />
                            <asp:SqlDataSource ID="dsPicture2" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand=" select * from tblSysPicture left join web_vangia_project on web_vangia_project.vangia_id_project=tblSysPicture.advert_id  where advert_id=@vangia_id_project">
                                <SelectParameters>

                                    <asp:ControlParameter ControlID="hdSlide2" DefaultValue="0" Name="vangia_id_project" PropertyName="Value" />
                                </SelectParameters>

                            </asp:SqlDataSource>
                            <asp:Repeater ID="repSlide3" runat="server" DataSourceID="dsSlider3" OnItemDataBound="repSlide3_ItemDataBound">
                                <ItemTemplate>
                                    <div class="tile tile_2x1 red">
                                        <asp:Repeater ID="rpPicture3" runat="server">
                                            <ItemTemplate>

                                                <img src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath")%>" data-caption=" <%# Eval("vangia_name_project") %> " />
                                            </ItemTemplate>
                                        </asp:Repeater>


                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="dsSlider3" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM    (SELECT ROW_NUMBER () OVER (ORDER BY web_vangia_project.vangia_id_project desc) AS RowNum,* FROM web_vangia_project where   (vangia_status_project = 1) and vangia_typeid_project=1 ) sub	WHERE RowNum = 4">
                                <SelectParameters>
                                    <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:HiddenField runat="server" ID="hdSlide3" />
                            <asp:SqlDataSource ID="dsPicture3" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand=" select * from tblSysPicture left join web_vangia_project on web_vangia_project.vangia_id_project=tblSysPicture.advert_id  where advert_id=@vangia_id_project">
                                <SelectParameters>

                                    <asp:ControlParameter ControlID="hdSlide3" DefaultValue="0" Name="vangia_id_project" PropertyName="Value" />
                                </SelectParameters>

                            </asp:SqlDataSource>
<asp:Repeater ID="repSlide4" runat="server" DataSourceID="dsSlider4" OnItemDataBound="repSlide4_ItemDataBound">
                                <ItemTemplate>
                                    <div class="tile tile_2x2 purple">
                                        <asp:Repeater ID="rpPicture4" runat="server">
                                            <ItemTemplate>

                                                <img src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath")%>" data-caption=" <%# Eval("vangia_name_project") %> " />
                                            </ItemTemplate>
                                        </asp:Repeater>


                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="dsSlider4" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM    (SELECT ROW_NUMBER () OVER (ORDER BY web_vangia_project.vangia_id_project desc) AS RowNum,* FROM web_vangia_project where   (vangia_status_project = 1) and vangia_typeid_project=1 ) sub	WHERE RowNum = 5">
                                <SelectParameters>
                                    <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:HiddenField runat="server" ID="hdSlide4" />
                            <asp:SqlDataSource ID="dsPicture4" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand=" select * from tblSysPicture left join web_vangia_project on web_vangia_project.vangia_id_project=tblSysPicture.advert_id  where advert_id=@vangia_id_project">
                                <SelectParameters>

                                    <asp:ControlParameter ControlID="hdSlide4" DefaultValue="0" Name="vangia_id_project" PropertyName="Value" />
                                </SelectParameters>

                            </asp:SqlDataSource>--%>
                           <%-- <div class="showProject"></div>--%>
                        </div>
                    </div>

                    <input value="" type="hidden" class="hdValues" />

                </div>

            </div>
        </div>
    </div>
      
    <asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM web_vangia_project left join tblSysPicture on tblSysPicture.advert_id=web_vangia_project.vangia_id_project  WHERE (vangia_status_project = 1)   and vangia_typeid_project=1   AND (vangia_language_project = 2 )  and tblSysPicture.position=1  order by vangia_id_project desc">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
        </SelectParameters>

    </asp:SqlDataSource>

     <script src="content/js/demo.js"></script>
                            <script src="content/js/hammer.js"></script>
                            <script src="content/js/jquery.js"></script>
                            <script src="content/js/masonry.pkgd.min.js"></script>
                            <script src="content/js/metro_gallery.min.js"></script>
                            <link href="content/demo.css" rel="stylesheet" />
                            <link href="content/css/demo.css" rel="stylesheet" />
                            <link href="content/css/metro_gallery.css" rel="stylesheet" />



                            <script src="content/demo.js"></script>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
    <%-- <div style="background-position: 50% -7.5px;" id="mainbottom-row" data-stellar-background-ratio="0.5">
        <div class="row-container visible-first visible">
            <div class="container">
                <div id="mainbottom" class="row">
                    <div class="moduletable droplist  span12">
                        <div class="module_container">
                            <header>
                                <h2 class="moduleTitle visible-first visible"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span><span class="item_title_part1 item_title_part_even item_title_part_second_half">Kế hoạch và Thông tin Xây Dựng</span></h2>
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
                                            <h4 style="font: 400 27px/31px 'Ubuntu Condensed', sans-serif;" class="item_title item_title__services kehoach  visible-first visible">Kế hoạch</h4>
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
    <asp:SqlDataSource ID="dsXayDungKeHoach" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM web_vangia_project WHERE (vangia_status_project = 1) and vangia_typeid_project=11 AND (vangia_language_project = @vangia_language_project ) order by vangia_order_project ">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
        </SelectParameters>

    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsXayDungThongTin" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM web_vangia_project WHERE (vangia_status_project = 1) and vangia_typeid_project=12 AND (vangia_language_project = @vangia_language_project ) order by vangia_order_project ">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
        </SelectParameters>

    </asp:SqlDataSource>--%>

<%--    <link href="content/css/style.css" rel="stylesheet" />
      <section id="content">
 
    <style>
  .shifty-item {
    width: 210px;
    margin: 10px;
    float: left;
    background: #AAA;
    border: 5px solid white;
  }

  .shifty-item:hover { z-index: 10; }

  .shifty-item.h1 { height: 100px;width:100px; background: #66F; }
  .shifty-item.h2 { height: 200px; background: #F66; }
  .shifty-item.h3 { height: 240px; background: #6F6; }
  .shifty-item.h4 { height: 280px; background: #FF6; }

</style>





<div id="container">

</div>--%> 
          
          <!-- #container -->
           <!-- #container -->

        <%--  <script src="content/js/jquery-1.7.1.min.js"></script>
          <script src="content/js/jquery.isotope.min.js"></script>--%>

    <script>
        jQuery(function ($) {
            loadProject(1);
            //var id=1;
            //$(window).scroll(function () {
            //    if ($(window).scrollTop() + $(window).height() == $(document).height()) {
            //        id = id + 1;
            //        loadProject(id);
            //    }
            //});
            var url = '<%=ConfigurationManager.AppSettings["domainvg"]%>';
            console.log(url);
           
            function loadProject(pageCount)
            {
                //load Project
                $.ajax
                ({
                    type: "POST",
                    url: "WebLoadData.asmx/GetListProject", //LyricsloadMore
                    data: JSON.stringify({pageSize:6, currentPage: pageCount }),
                    dataType: "json",
                    contentType: "application/json;charset=utf-8",
                    success: function (data) {

                        var t = "";
                        var count;
                        $.each(data.d, function (i, o) {
                            var imgName = o.tblSysPicture.originalFilepath;
                            var fullUrl = url + imgName.split("_")[0] +"/"+ imgName;
                           
                            var ii = i + 1;
                            //var $newItems = $('<div class="shifty-item h'+i+'"><img src="http://admin1.trafashion.com/fileupload/62/62_3LybKNC0ZUCzdHScHNo0RQ_1.jpg" /></div>');
                            //$('#container').isotope('insert', $newItems);
                            var tile_1x1 = "tile_1x1 ";
                            var tile_1x2 = "tile_1x2 ";
                            var tile_2x1 = "tile_2x1 ";
                            var tile_2x2 = "tile_2x2 ";
                            var tile_2x3 = "tile_2x3 ";
                            var tile_4x2 = "tile_4x2 ";
                            var tile_3x3 = "tile_3x3";
                            var tile_3x1 = "tile_3x1";
                            var tile_6x6 = "tile_6x6 ";
                            if (ii == 1) {
                                count = tile_3x3 + " grey";
                            }
                            if (ii == 2) {
                                count = tile_3x3 + " grey";
                            }
                            if (ii == 3) {
                                count = tile_3x3 + " grey";
                            }
                            if (ii == 4) {
                                count = tile_3x3 + " grey";
                            }
                            if (ii == 5) {
                                count = tile_6x6 + " grey";
                            }
                            if (ii == 6) {
                                count = tile_3x3 + " grey";
                            }
                            if (ii == 7) {
                                count = tile_3x3;
                            }
                            if (ii == 8) {
                                count = tile_2x1;
                            }
                            if (ii == 9) {
                                count = tile_2x1;
                            }
                            if (ii == 10) {
                                count = tile_2x3;
                            }
                            if (ii == 11) {
                                count = tile_3x3;
                            }
                            if (ii == 12) {
                                count = tile_4x2;
                            }
                            if (ii == 13) {
                                count = tile_3x1;
                            }
                            if (ii == 14) {
                                count = tile_3x1;
                            }
                            if (ii == 15) {
                                count = tile_2x3;
                            }
                            if (ii == 16) {
                                count = tile_1x1;
                            }
                            if (ii == 17) {
                                count = tile_2x1;
                            }
                            if (ii == 18) {
                                count = tile_1x1;
                            }
                            if (ii == 19) {
                                count = tile_3x3;
                            }
                            if (ii == 20) {
                                count = tile_4x2;
                            }
                       
                        
                            t += "<div class=\"tile " + count + "\">";
                                
                            $.each(o.ListSysPicture, function (i, p) {
                                var urlImgchi = url + imgName.split("_")[0] + "/";
                                var trUrl = '/DetailProject.aspx?id=' + o.tblWebProject.vangia_id_project;
                              
                                t += "<img src=\"" + urlImgchi + p.originalFilepath + "\" data-caption=\"" + o.tblWebProject.vangia_name_project + "\" rel=\"" + trUrl + " \" />";

                            });
                          
                          

                            t += "</div>";

                 
                               

                        });
                        if (data != "" || data != null) {
                           
                            $('.showProject').append(t);


                            var Metro_Gallery = {
                                _containers: null, _tiles: null, _images: [],
                                _image_pointer: 0, _lightbox: null,
                                _overlay: null, _loaded: false,
                                _configs: { base_size: 100, gutter: 10, scale: 1.4, delay: 1000 },
                                _can_flip: false, _use_css_animation: true,
                                _css3SupportDetect: function () {
                                    var _0x5ed1x3 = document[_0x56c1[8]][_0x56c1[7]];
                                    if (typeof _0x5ed1x3[_0x56c1[9]] == _0x56c1[10]) {
                                        Metro_Gallery[_0x56c1[11]] = true;
                                        return true;
                                    }; var _0x5ed1x4 = [_0x56c1[12], _0x56c1[13], _0x56c1[14], _0x56c1[15],
                                        _0x56c1[16]]; for (var _0x5ed1x5 = 0; _0x5ed1x5 < _0x5ed1x4[_0x56c1[17]];
                                            _0x5ed1x5++) { if (typeof (_0x5ed1x3[_0x5ed1x4[_0x5ed1x5] + _0x56c1[18]]) == _0x56c1[10]) { Metro_Gallery[_0x56c1[11]] = true; return true; }; }; Metro_Gallery[_0x56c1[11]] = false; return false;
                                },
                                _transitionEnd:
                                    function (_0x5ed1x6, _0x5ed1x7)
                                    {
                                        if (Metro_Gallery[_0x56c1[11]])
                                        { transEndEventNames = _0x56c1[19]; _0x5ed1x6[_0x56c1[21]](transEndEventNames, function (_0x5ed1x8) { _0x5ed1x6[_0x56c1[20]](transEndEventNames); _0x5ed1x7(_0x5ed1x8, _0x5ed1x6); }); } else { _0x5ed1x7(null, _0x5ed1x6); }; return _0x5ed1x6;
                                    }, _init: function () {
                                        Metro_Gallery._css3SupportDetect(); $(document[_0x56c1[8]])[_0x56c1[23]](_0x56c1[22]); Metro_Gallery._cache_elements(); Metro_Gallery._buildStyles(); Metro_Gallery._build();
                                    }, _start: function () {
                                        if (Metro_Gallery[_0x56c1[24]]) { return; };
                                        var _0x5ed1x9 = Metro_Gallery[_0x56c1[26]][_0x56c1[25]] + Metro_Gallery[_0x56c1[26]][_0x56c1[27]];
                                        var _0x5ed1xa = Metro_Gallery[_0x56c1[29]][_0x56c1[28]](0);
                                        var _0x5ed1xb = _0x5ed1xa[_0x56c1[33]](_0x56c1[32])[_0x56c1[31]](_0x56c1[30]); $(_0x5ed1xb)[_0x56c1[42]](function (_0x5ed1xc, _0x5ed1xd) { if (_0x5ed1xd[_0x56c1[35]](_0x56c1[34]) !== -1) { var _0x5ed1xe = _0x5ed1xd[_0x56c1[38]](/tile_/, _0x56c1[37])[_0x56c1[36]](0, 1); var _0x5ed1xf = parseInt(_0x5ed1xa[_0x56c1[40]](_0x56c1[39]), 10); var _0x5ed1x10 = (_0x5ed1xa[_0x56c1[41]]() + 2 * _0x5ed1xf - 2 * _0x5ed1xf * _0x5ed1xe) / _0x5ed1xe; _0x5ed1x9 = _0x5ed1x10 + 2 * _0x5ed1xf; return false; }; }); Metro_Gallery[_0x56c1[52]][_0x56c1[42]](function () { var _0x5ed1x11 = $(this); var _0x5ed1x12 = [_0x56c1[43], _0x56c1[37]]; if (!_0x5ed1x11[_0x56c1[45]](_0x56c1[44]) && !_0x5ed1x11[_0x56c1[45]](_0x56c1[46])) { _0x5ed1x11[_0x56c1[23]](_0x56c1[44]); }; var _0x5ed1x13 = new Masonry(_0x5ed1x11[_0x56c1[47]](0), { itemSelector: _0x56c1[48], columnWidth: _0x5ed1x9, transitionDuration: _0x56c1[49] }); _0x5ed1x11[_0x56c1[51]](_0x56c1[50], _0x5ed1x13); }); Metro_Gallery[_0x56c1[29]][_0x56c1[42]](function (_0x5ed1xc) { var _0x5ed1x14 = $(this); setTimeout(function () { if (Metro_Gallery[_0x56c1[11]]) { Metro_Gallery._transitionEnd(_0x5ed1x14, function (_0x5ed1x15, _0x5ed1x6) { _0x5ed1x6[_0x56c1[55]](_0x56c1[54]); })[_0x56c1[23]](_0x56c1[53]); } else { var _0x5ed1x11 = _0x5ed1x14[_0x56c1[57]](_0x56c1[56]); if (_0x5ed1x11[_0x56c1[45]](_0x56c1[58]) || _0x5ed1x11[_0x56c1[45]](_0x56c1[59]) || _0x5ed1x11[_0x56c1[45]](_0x56c1[60])) { _0x5ed1x14[_0x56c1[62]]({ opacity: 1 }, 200, _0x56c1[61], function () { _0x5ed1x14[_0x56c1[23]](_0x56c1[22]); }); } else { _0x5ed1x14[_0x56c1[23]](_0x56c1[22]); }; }; }, _0x5ed1xc * 100); _0x5ed1x14[_0x56c1[67]](Metro_Gallery[_0x56c1[64]][_0x56c1[66]])[_0x56c1[65]](Metro_Gallery[_0x56c1[64]][_0x56c1[63]]); }); Metro_Gallery[_0x56c1[69]][_0x56c1[42]](function (_0x5ed1xc) { $(this)[_0x56c1[51]](_0x56c1[68], _0x5ed1xc); }); $(document)[_0x56c1[71]](Metro_Gallery[_0x56c1[64]][_0x56c1[70]]); if (typeof Hammer !== _0x56c1[72]) { try { var _0x5ed1x16 = Hammer(document[_0x56c1[8]], { swipe_velocity: 0.2 })[_0x56c1[21]](_0x56c1[73], Metro_Gallery[_0x56c1[64]][_0x56c1[74]]); var _0x5ed1x16 = Hammer(document[_0x56c1[8]], { swipe_velocity: 0.2 })[_0x56c1[21]](_0x56c1[75], Metro_Gallery[_0x56c1[64]][_0x56c1[76]]); } catch (e) { }; }; if (Metro_Gallery[_0x56c1[77]]) { setTimeout(function () { Metro_Gallery._startFlip(); }, (Metro_Gallery[_0x56c1[29]][_0x56c1[17]] - 1) * 100 + 200); }; Metro_Gallery[_0x56c1[24]] = true;
                                    }, _cache_elements: function () {
                                        this[_0x56c1[29]] = $(_0x56c1[78]);
                                        this[_0x56c1[52]] = $(_0x56c1[56]);
                                        this[_0x56c1[69]] = $(_0x56c1[78])[_0x56c1[80]](_0x56c1[79]);
                                    }, _buildStyles: function () {
                                        var _0x5ed1x17 = _0x56c1[37];
                                        var _0x5ed1x18 = _0x56c1[81];
                                        var _0x5ed1x19 = (Metro_Gallery[_0x56c1[26]][_0x56c1[60]] - 1) * Metro_Gallery[_0x56c1[26]][_0x56c1[25]];
                                        _0x5ed1x17 += _0x56c1[82]; _0x5ed1x17 += _0x56c1[83] + Metro_Gallery[_0x56c1[26]][_0x56c1[27]] / 2 + _0x56c1[84];
                                        _0x5ed1x17 += _0x56c1[85]; for (var _0x5ed1x1a = 1; _0x5ed1x1a <= 10; _0x5ed1x1a++) { for (y = 1; y <= 10; y++) { var _0x5ed1x1b = _0x5ed1x1a * Metro_Gallery[_0x56c1[26]][_0x56c1[25]] + (_0x5ed1x1a - 1) * Metro_Gallery[_0x56c1[26]][_0x56c1[27]]; var _0x5ed1x1c = y * Metro_Gallery[_0x56c1[26]][_0x56c1[25]] + (y - 1) * Metro_Gallery[_0x56c1[26]][_0x56c1[27]]; _0x5ed1x17 += _0x56c1[86] + _0x5ed1x1a + _0x56c1[87] + y + _0x56c1[88] + _0x5ed1x18; _0x5ed1x17 += _0x56c1[89] + _0x5ed1x1b + _0x56c1[84] + _0x5ed1x18; _0x5ed1x17 += _0x56c1[90] + _0x5ed1x1c + _0x56c1[84] + _0x5ed1x18; _0x5ed1x17 += _0x56c1[85] + _0x5ed1x18; _0x5ed1x17 += _0x56c1[86] + _0x5ed1x1a + _0x56c1[87] + y + _0x56c1[91] + _0x5ed1x18; _0x5ed1x17 += _0x56c1[89] + (_0x5ed1x1b + _0x5ed1x19) + _0x56c1[84] + _0x5ed1x18; _0x5ed1x17 += _0x56c1[90] + (_0x5ed1x1c * (_0x5ed1x1b + _0x5ed1x19) / _0x5ed1x1b) + _0x56c1[84] + _0x5ed1x18; _0x5ed1x17 += _0x56c1[92] + (Metro_Gallery[_0x56c1[26]][_0x56c1[27]] / 2 - parseInt((((_0x5ed1x1c * (_0x5ed1x1b + _0x5ed1x19) / _0x5ed1x1b) - _0x5ed1x1c) / 2), 10)) + _0x56c1[84] + _0x5ed1x18; _0x5ed1x17 += _0x56c1[93] + (Metro_Gallery[_0x56c1[26]][_0x56c1[27]] / 2 - parseInt((_0x5ed1x19 / 2), 10)) + _0x56c1[84] + _0x5ed1x18; _0x5ed1x17 += _0x56c1[85] + _0x5ed1x18; }; }; $(_0x56c1[96] + _0x5ed1x17 + _0x56c1[97])[_0x56c1[95]]($(_0x56c1[94]));
                                    }, _build: function () {
                                        Metro_Gallery[_0x56c1[29]][_0x56c1[42]](function (_0x5ed1xc) {
                                            var _0x5ed1x14 = $(this);
                                            var _0x5ed1x11 = _0x5ed1x14[_0x56c1[98]]();
                                            var _0x5ed1x1d = _0x5ed1x14[_0x56c1[80]](_0x56c1[99]);
                                            var _0x5ed1x1e = $(_0x56c1[101])[_0x56c1[23]](_0x56c1[100]);
                                            var _0x5ed1x1f = $(_0x56c1[101])[_0x56c1[23]](_0x56c1[103])[_0x56c1[102]](_0x5ed1x1d)[_0x56c1[95]](_0x5ed1x1e);
                                            var _0x5ed1x20 = $(_0x56c1[101])[_0x56c1[23]](_0x56c1[104]);
                                           
                                            if (_0x5ed1x1d[_0x56c1[28]](0)[_0x56c1[51]](_0x56c1[104]))
                                            {
                                                if (_0x5ed1x1d[_0x56c1[28]](0)[_0x56c1[51]](_0x56c1[105])) { _0x5ed1x20[_0x56c1[109]](_0x56c1[106] + _0x5ed1x1d[_0x56c1[28]](0)[_0x56c1[51]](_0x56c1[105]) + _0x56c1[107] + _0x5ed1x1d[_0x56c1[28]](0)[_0x56c1[51]](_0x56c1[104]) + _0x56c1[108]); } else { _0x5ed1x20[_0x56c1[110]](_0x5ed1x1d[_0x56c1[28]](0)[_0x56c1[51]](_0x56c1[104])); }; _0x5ed1x14[_0x56c1[23]](_0x56c1[104]);
                                            };
                                            if (_0x5ed1x11[_0x56c1[45]](_0x56c1[44]))
                                            {
                                                _0x5ed1x1f[_0x56c1[112]](_0x5ed1x1d[_0x56c1[17]] * 100 + _0x56c1[111]);
                                                _0x5ed1x1d[_0x56c1[112]](100 / _0x5ed1x1d[_0x56c1[17]] + _0x56c1[111]);
                                            }
                                            else
                                            {
                                                _0x5ed1x1f[_0x56c1[41]](_0x5ed1x1d[_0x56c1[17]] * 100 + _0x56c1[111]);
                                                _0x5ed1x1d[_0x56c1[41]](100 / _0x5ed1x1d[_0x56c1[17]] + _0x56c1[111]);
                                            };
                                            _0x5ed1x14[_0x56c1[51]]({
                                                active: 1, num_images: _0x5ed1x1d[_0x56c1[17]],
                                                caption: _0x5ed1x20, scroller: _0x5ed1x1f
                                            })[_0x56c1[102]](_0x5ed1x1e)[_0x56c1[102]](_0x5ed1x20);
                                            _0x5ed1x1d[_0x56c1[114]](Metro_Gallery[_0x56c1[64]][_0x56c1[113]]);
                                            if (_0x5ed1x1d[_0x56c1[17]] > 1)
                                            {
                                                var _0x5ed1x21 = $(_0x56c1[120])[_0x56c1[33]](_0x56c1[118], _0x56c1[119])[_0x56c1[23]](_0x56c1[117])[_0x56c1[51]](_0x56c1[116], _0x5ed1x14)[_0x56c1[114]](Metro_Gallery[_0x56c1[64]][_0x56c1[115]]); var _0x5ed1x22 = $(_0x56c1[120])[_0x56c1[33]](_0x56c1[118], _0x56c1[119])[_0x56c1[23]](_0x56c1[122])[_0x56c1[51]](_0x56c1[116], _0x5ed1x14)[_0x56c1[114]](Metro_Gallery[_0x56c1[64]][_0x56c1[121]]); _0x5ed1x14[_0x56c1[102]](_0x5ed1x21)[_0x56c1[102]](_0x5ed1x22)[_0x56c1[51]](_0x56c1[117], _0x5ed1x21)[_0x56c1[51]](_0x56c1[122], _0x5ed1x22); Metro_Gallery[_0x56c1[77]] = true;
                                            };
                                        });
                                    }, _startFlip: function () {
                                        setInterval(function () { var _0x5ed1x23 = false; var _0x5ed1x24 = 0; while (!_0x5ed1x23) { _0x5ed1x24++; if (_0x5ed1x24 >= 10) { break; }; _0x5ed1x23 = Metro_Gallery[_0x56c1[29]][_0x56c1[28]](Math[_0x56c1[124]]((Math[_0x56c1[123]]() * Metro_Gallery[_0x56c1[29]][_0x56c1[17]]))); if (_0x5ed1x23[_0x56c1[51]](_0x56c1[125]) <= 1 || _0x5ed1x23[_0x56c1[51]](_0x56c1[126])) { _0x5ed1x23 = false; }; }; if (_0x5ed1x23) { _0x5ed1x23[_0x56c1[51]](_0x56c1[122])[_0x56c1[114]](); }; }, Metro_Gallery[_0x56c1[26]][_0x56c1[127]]);
                                    }, _goNext: function (_0x5ed1x14, _0x5ed1x25) {
                                        var _0x5ed1x11 = _0x5ed1x14[_0x56c1[98]](); var _0x5ed1x1f = _0x5ed1x14[_0x56c1[51]](_0x56c1[103]); var _0x5ed1x26 = _0x5ed1x14[_0x56c1[51]](_0x56c1[128]); var _0x5ed1x27 = _0x5ed1x14[_0x56c1[51]](_0x56c1[125]); var _0x5ed1x22 = _0x5ed1x25 === _0x56c1[122] ? (_0x5ed1x26 === _0x5ed1x27 ? 1 : _0x5ed1x26 + 1) : (_0x5ed1x26 === 1 ? _0x5ed1x27 : _0x5ed1x26 - 1); var _0x5ed1x28 = _0x5ed1x1f[_0x56c1[80]](_0x56c1[99])[_0x56c1[28]](_0x5ed1x22 - 1); if (_0x5ed1x28[_0x56c1[51]](_0x56c1[104])) { if (_0x5ed1x28[_0x56c1[51]](_0x56c1[105])) { _0x5ed1x14[_0x56c1[51]](_0x56c1[104])[_0x56c1[109]](_0x56c1[106] + _0x5ed1x28[_0x56c1[51]](_0x56c1[105]) + _0x56c1[107] + _0x5ed1x28[_0x56c1[51]](_0x56c1[104]) + _0x56c1[108]); } else { _0x5ed1x14[_0x56c1[51]](_0x56c1[104])[_0x56c1[110]](_0x5ed1x28[_0x56c1[51]](_0x56c1[104])); }; _0x5ed1x14[_0x56c1[23]](_0x56c1[104]); _0x5ed1x14[_0x56c1[51]](_0x56c1[104])[_0x56c1[110]](_0x5ed1x28[_0x56c1[51]](_0x56c1[104])); } else { _0x5ed1x14[_0x56c1[55]](_0x56c1[104]); _0x5ed1x14[_0x56c1[51]](_0x56c1[104])[_0x56c1[110]](_0x56c1[37]); }; var _0x5ed1x29 = _0x5ed1x11[_0x56c1[45]](_0x56c1[44]) ? _0x56c1[129] : _0x56c1[130]; if (this[_0x56c1[11]]) { _0x5ed1x1f[_0x56c1[40]](_0x5ed1x29, (_0x5ed1x22 - 1) * -100 + _0x56c1[111]); } else { if (_0x5ed1x29 === _0x56c1[129]) { _0x5ed1x1f[_0x56c1[62]]({ top: (_0x5ed1x22 - 1) * -100 + _0x56c1[111] }, 200); } else { _0x5ed1x1f[_0x56c1[62]]({ left: (_0x5ed1x22 - 1) * -100 + _0x56c1[111] }, 200); }; }; _0x5ed1x14[_0x56c1[51]](_0x56c1[128], _0x5ed1x22); if (_0x5ed1x25 === _0x56c1[122]) { if (_0x5ed1x22 > 1) { _0x5ed1x14[_0x56c1[51]](_0x56c1[117])[_0x56c1[131]](); } else { _0x5ed1x14[_0x56c1[51]](_0x56c1[117])[_0x56c1[132]](); }; if (_0x5ed1x22 === _0x5ed1x27) { _0x5ed1x14[_0x56c1[51]](_0x56c1[122])[_0x56c1[132]](); } else { _0x5ed1x14[_0x56c1[51]](_0x56c1[122])[_0x56c1[131]](); }; } else { if (_0x5ed1x22 === 1) { _0x5ed1x14[_0x56c1[51]](_0x56c1[117])[_0x56c1[132]](); } else { _0x5ed1x14[_0x56c1[51]](_0x56c1[117])[_0x56c1[131]](); }; if (_0x5ed1x22 < _0x5ed1x27) { _0x5ed1x14[_0x56c1[51]](_0x56c1[122])[_0x56c1[131]](); } else { _0x5ed1x14[_0x56c1[51]](_0x56c1[122])[_0x56c1[132]](); }; };
                                    }, _closeLightbox: function (_0x5ed1x2a) {
                                        if (Metro_Gallery[_0x56c1[11]]) { Metro_Gallery[_0x56c1[134]][_0x56c1[55]](_0x56c1[133]); Metro_Gallery[_0x56c1[136]][_0x56c1[23]](_0x56c1[135]); } else { Metro_Gallery[_0x56c1[134]][_0x56c1[62]]({ opacity: 0 }, 200); Metro_Gallery[_0x56c1[136]][_0x56c1[62]]({ opacity: 0, top: _0x56c1[137] }, 400); }; setTimeout(function () { Metro_Gallery[_0x56c1[134]][_0x56c1[138]](); Metro_Gallery[_0x56c1[134]] = null; }, 200); setTimeout(function () { Metro_Gallery[_0x56c1[136]][_0x56c1[138]](); Metro_Gallery[_0x56c1[136]] = null; }, 400);
                                    }, _openLightbox: function (_0x5ed1x2b) {
                                        var _0x5ed1x14 = _0x5ed1x2b[_0x56c1[57]](_0x56c1[139]);
                                        var _0x5ed1x11 = _0x5ed1x14[_0x56c1[98]]();
                                        if (!Metro_Gallery[_0x56c1[134]]) { Metro_Gallery[_0x56c1[134]] = $(_0x56c1[101])[_0x56c1[23]](_0x56c1[140])[_0x56c1[114]](Metro_Gallery._closeLightbox)[_0x56c1[95]]($(document[_0x56c1[8]])); if (Metro_Gallery[_0x56c1[11]]) { requestAnimFrame(function () { Metro_Gallery[_0x56c1[134]][_0x56c1[23]](_0x56c1[133]); }); } else { Metro_Gallery[_0x56c1[134]][_0x56c1[62]]({ opacity: 0.6 }, 200, null, function () { Metro_Gallery[_0x56c1[134]][_0x56c1[23]](_0x56c1[133]); }); }; }; var _0x5ed1x2c = _0x5ed1x2b[_0x56c1[51]](_0x56c1[141]) ? true : false; if (_0x5ed1x2c) { var _0x5ed1x2d = _0x5ed1x2b[_0x56c1[51]](_0x56c1[141]); if (_0x5ed1x2d[_0x56c1[35]](_0x56c1[142])) { _0x5ed1x2b[_0x56c1[51]](_0x56c1[141], _0x5ed1x2d + _0x56c1[143]); } else { _0x5ed1x2b[_0x56c1[51]](_0x56c1[141], _0x5ed1x2d + _0x56c1[144]); }; }; var _0x5ed1x2e = function (_0x5ed1x1b, _0x5ed1x1c) { var _0x5ed1xe = Metro_Gallery._getLightboxSize(_0x5ed1x1b, _0x5ed1x1c); var _0x5ed1x2f = { "\x6D\x61\x72\x67\x69\x6E": _0x56c1[145] + _0x5ed1xe[_0x56c1[112]] / 2 + _0x56c1[146] + _0x5ed1xe[_0x56c1[41]] / 2 + _0x56c1[147], "\x62\x6F\x72\x64\x65\x72\x2D\x63\x6F\x6C\x6F\x72": _0x5ed1x14[_0x56c1[40]](_0x56c1[148]), "\x77\x69\x64\x74\x68": _0x5ed1xe[_0x56c1[41]], "\x68\x65\x69\x67\x68\x74": _0x5ed1xe[_0x56c1[112]] }; var _0x5ed1x30 = false; var _0x5ed1x31 = false; if (!Metro_Gallery[_0x56c1[136]]) { _0x5ed1x30 = true; Metro_Gallery[_0x56c1[136]] = $(_0x56c1[101])[_0x56c1[23]](_0x56c1[149])[_0x56c1[40]](_0x5ed1x2f); if (_0x5ed1x2c) { _0x5ed1x31 = $(_0x56c1[154])[_0x56c1[33]](_0x56c1[153], _0x5ed1x2b[_0x56c1[51]](_0x56c1[141]))[_0x56c1[33]](_0x56c1[41], Math[_0x56c1[152]](_0x5ed1xe[_0x56c1[41]]))[_0x56c1[33]](_0x56c1[112], Math[_0x56c1[152]](_0x5ed1xe[_0x56c1[112]]))[_0x56c1[33]](_0x56c1[150], _0x56c1[151])[_0x56c1[95]](Metro_Gallery._lightbox); } else { _0x5ed1x31 = $(_0x56c1[156])[_0x56c1[33]](_0x56c1[153], _0x5ed1x2b[_0x56c1[51]](_0x56c1[155]) ? _0x5ed1x2b[_0x56c1[51]](_0x56c1[155]) : _0x5ed1x2b[_0x56c1[33]](_0x56c1[153]))[_0x56c1[41]](Math[_0x56c1[152]](_0x5ed1xe[_0x56c1[41]]))[_0x56c1[112]](Math[_0x56c1[152]](_0x5ed1xe[_0x56c1[112]]))[_0x56c1[95]](Metro_Gallery._lightbox); }; var _0x5ed1x21 = $(_0x56c1[120])[_0x56c1[33]](_0x56c1[118], _0x56c1[119])[_0x56c1[23]](_0x56c1[117])[_0x56c1[114]](Metro_Gallery[_0x56c1[64]][_0x56c1[157]])[_0x56c1[95]](Metro_Gallery._lightbox); var _0x5ed1x22 = $(_0x56c1[120])[_0x56c1[33]](_0x56c1[118], _0x56c1[119])[_0x56c1[23]](_0x56c1[122])[_0x56c1[114]](Metro_Gallery[_0x56c1[64]][_0x56c1[158]])[_0x56c1[95]](Metro_Gallery._lightbox); if (_0x5ed1x2b[_0x56c1[51]](_0x56c1[104])) { if (_0x5ed1x2b[_0x56c1[51]](_0x56c1[105])) { $(_0x56c1[101])[_0x56c1[23]](_0x56c1[104])[_0x56c1[109]](_0x56c1[106] + _0x5ed1x2b[_0x56c1[51]](_0x56c1[105]) + _0x56c1[107] + _0x5ed1x2b[_0x56c1[51]](_0x56c1[104]) + _0x56c1[108])[_0x56c1[95]](Metro_Gallery._lightbox); } else { $(_0x56c1[101])[_0x56c1[23]](_0x56c1[104])[_0x56c1[110]](_0x5ed1x2b[_0x56c1[51]](_0x56c1[104]))[_0x56c1[95]](Metro_Gallery._lightbox); }; }; } else { Metro_Gallery[_0x56c1[136]][_0x56c1[80]](_0x56c1[141])[_0x56c1[138]](); Metro_Gallery[_0x56c1[136]][_0x56c1[80]](_0x56c1[79])[_0x56c1[138]](); Metro_Gallery[_0x56c1[136]][_0x56c1[23]](_0x56c1[159]); if (Metro_Gallery[_0x56c1[11]]) { Metro_Gallery[_0x56c1[136]][_0x56c1[40]](_0x5ed1x2f); } else { Metro_Gallery[_0x56c1[136]][_0x56c1[62]](_0x5ed1x2f, 700); }; if (_0x5ed1x2c) { _0x5ed1x31 = $(_0x56c1[154])[_0x56c1[33]](_0x56c1[153], _0x5ed1x2b[_0x56c1[51]](_0x56c1[141]))[_0x56c1[33]](_0x56c1[41], Math[_0x56c1[152]](_0x5ed1xe[_0x56c1[41]]))[_0x56c1[33]](_0x56c1[112], Math[_0x56c1[152]](_0x5ed1xe[_0x56c1[112]]))[_0x56c1[33]](_0x56c1[150], _0x56c1[151])[_0x56c1[95]](Metro_Gallery._lightbox); } else { _0x5ed1x31 = $(_0x56c1[156])[_0x56c1[33]](_0x56c1[153], _0x5ed1x2b[_0x56c1[51]](_0x56c1[155]) ? _0x5ed1x2b[_0x56c1[51]](_0x56c1[155]) : _0x5ed1x2b[_0x56c1[33]](_0x56c1[153]))[_0x56c1[41]](Math[_0x56c1[152]](_0x5ed1xe[_0x56c1[41]]))[_0x56c1[112]](Math[_0x56c1[152]](_0x5ed1xe[_0x56c1[112]]))[_0x56c1[95]](Metro_Gallery._lightbox); }; if (_0x5ed1x2b[_0x56c1[51]](_0x56c1[104])) { if (_0x5ed1x2b[_0x56c1[51]](_0x56c1[105])) { Metro_Gallery[_0x56c1[136]][_0x56c1[80]](_0x56c1[160])[_0x56c1[109]](_0x56c1[106] + _0x5ed1x2b[_0x56c1[51]](_0x56c1[105]) + _0x56c1[107] + _0x5ed1x2b[_0x56c1[51]](_0x56c1[104]) + _0x56c1[108])[_0x56c1[131]](); } else { Metro_Gallery[_0x56c1[136]][_0x56c1[80]](_0x56c1[160])[_0x56c1[110]](_0x5ed1x2b[_0x56c1[51]](_0x56c1[104]))[_0x56c1[131]](); }; } else { Metro_Gallery[_0x56c1[136]][_0x56c1[80]](_0x56c1[160])[_0x56c1[132]](); }; setTimeout(function () { Metro_Gallery[_0x56c1[136]][_0x56c1[55]](_0x56c1[159]); if (!Metro_Gallery[_0x56c1[11]] && _0x5ed1x31) { _0x5ed1x31[_0x56c1[132]](); setTimeout(function () { _0x5ed1x31[_0x56c1[161]](); }, 700); }; }, 200); }; if (_0x5ed1x30) { Metro_Gallery[_0x56c1[136]][_0x56c1[95]]($(document[_0x56c1[8]])); if (Metro_Gallery[_0x56c1[11]]) { $(window)[_0x56c1[41]](); requestAnimFrame(function () { Metro_Gallery[_0x56c1[136]][_0x56c1[23]](_0x56c1[133]); }); } else { Metro_Gallery[_0x56c1[136]][_0x56c1[62]]({ top: _0x56c1[162] }, 700, null, function () { Metro_Gallery[_0x56c1[136]][_0x56c1[23]](_0x56c1[133]); }); }; }; }; if (_0x5ed1x2c) { _0x5ed1x2e(_0x5ed1x2b[_0x56c1[51]](_0x56c1[163]), _0x5ed1x2b[_0x56c1[51]](_0x56c1[164])); } else { var _0x5ed1x32 = new Image(); _0x5ed1x32[_0x56c1[153]] = _0x5ed1x2b[_0x56c1[51]](_0x56c1[155]) ? _0x5ed1x2b[_0x56c1[51]](_0x56c1[155]) : _0x5ed1x2b[_0x56c1[33]](_0x56c1[153]); if (_0x5ed1x32[_0x56c1[165]]) { _0x5ed1x2e(_0x5ed1x32[_0x56c1[41]], _0x5ed1x32[_0x56c1[112]]); } else { _0x5ed1x32[_0x56c1[166]] = function () { _0x5ed1x2e(this[_0x56c1[41]], this[_0x56c1[112]]); }; }; };
                                    }, _getLightboxSize: function (_0x5ed1x1b, _0x5ed1x1c) {
                                        var _0x5ed1x33 = $(window)[_0x56c1[41]]() * 0.8;
                                        var _0x5ed1x34 = $(window)[_0x56c1[112]]() * 0.8;
                                        var _0x5ed1x35 = _0x5ed1x1b; var _0x5ed1x36 = _0x5ed1x1c;
                                        if (_0x5ed1x1b > _0x5ed1x33 || _0x5ed1x1c > _0x5ed1x34)
                                        {
                                            var _0x5ed1x37 = _0x5ed1x1b / _0x5ed1x1c; if (_0x5ed1x1b > _0x5ed1x33 && _0x5ed1x1c <= _0x5ed1x34) { _0x5ed1x35 = _0x5ed1x33; _0x5ed1x36 = _0x5ed1x1c / (_0x5ed1x1b / _0x5ed1x35); } else { if (_0x5ed1x1c > _0x5ed1x34 && _0x5ed1x1b <= _0x5ed1x33) { _0x5ed1x36 = _0x5ed1x34; _0x5ed1x35 = _0x5ed1x1b / (_0x5ed1x1c / _0x5ed1x36); } else { _0x5ed1x35 = _0x5ed1x33; _0x5ed1x36 = _0x5ed1x1c / (_0x5ed1x1b / _0x5ed1x35); if (_0x5ed1x36 > _0x5ed1x34) { _0x5ed1x36 = _0x5ed1x34; _0x5ed1x35 = _0x5ed1x1b / (_0x5ed1x1c / _0x5ed1x36); }; }; };
                                        };
                                        return { width: _0x5ed1x35, height: _0x5ed1x36 };
                                    },
                                    setOptions: function (_0x5ed1x38) { Metro_Gallery[_0x56c1[26]][_0x56c1[25]] = typeof _0x5ed1x38[_0x56c1[25]] !== _0x56c1[72] ? parseInt(_0x5ed1x38[_0x56c1[25]], 10) : Metro_Gallery[_0x56c1[26]][_0x56c1[25]]; Metro_Gallery[_0x56c1[26]][_0x56c1[27]] = typeof _0x5ed1x38[_0x56c1[27]] !== _0x56c1[72] ? parseInt(_0x5ed1x38[_0x56c1[27]], 10) : Metro_Gallery[_0x56c1[26]][_0x56c1[27]]; Metro_Gallery[_0x56c1[26]][_0x56c1[60]] = typeof _0x5ed1x38[_0x56c1[60]] !== _0x56c1[72] ? parseFloat(_0x5ed1x38[_0x56c1[60]]) : Metro_Gallery[_0x56c1[26]][_0x56c1[60]]; Metro_Gallery[_0x56c1[26]][_0x56c1[127]] = typeof _0x5ed1x38[_0x56c1[127]] !== _0x56c1[72] ? parseInt(_0x5ed1x38[_0x56c1[127]], 10) : Metro_Gallery[_0x56c1[26]][_0x56c1[127]]; }, Events: { onMouseEnter: function (_0x5ed1x2a) { $(this)[_0x56c1[51]](_0x56c1[126], true); }, onMouseLeave: function (_0x5ed1x2a) { $(this)[_0x56c1[51]](_0x56c1[126], false); }, onKeyUp: function (_0x5ed1x2a) { if (Metro_Gallery[_0x56c1[136]]) { switch (_0x5ed1x2a[_0x56c1[167]]) { case 27: Metro_Gallery._closeLightbox(_0x5ed1x2a); break;; case 37: Metro_Gallery[_0x56c1[64]][_0x56c1[157]](_0x5ed1x2a); break;; case 39: Metro_Gallery[_0x56c1[64]][_0x56c1[158]](_0x5ed1x2a); break;; }; }; }, prevClick: function (_0x5ed1x2a) { _0x5ed1x2a[_0x56c1[168]](); _0x5ed1x2a[_0x56c1[169]](); Metro_Gallery._goNext($(this)[_0x56c1[51]](_0x56c1[116]), _0x56c1[170]); }, nextClick: function (_0x5ed1x2a) { _0x5ed1x2a[_0x56c1[168]](); _0x5ed1x2a[_0x56c1[169]](); Metro_Gallery._goNext($(this)[_0x56c1[51]](_0x56c1[116]), _0x56c1[122]); }, lightboxPrevClick: function (_0x5ed1x2a) { if (_0x5ed1x2a) { _0x5ed1x2a[_0x56c1[168]](); _0x5ed1x2a[_0x56c1[169]](); }; if (Metro_Gallery[_0x56c1[171]] === 0) { Metro_Gallery[_0x56c1[171]] = Metro_Gallery[_0x56c1[69]][_0x56c1[17]] - 1; } else { Metro_Gallery[_0x56c1[171]]--; }; Metro_Gallery[_0x56c1[69]][_0x56c1[28]](Metro_Gallery._image_pointer)[_0x56c1[114]](); }, lightboxNextClick: function (_0x5ed1x2a) { if (_0x5ed1x2a) { _0x5ed1x2a[_0x56c1[168]](); _0x5ed1x2a[_0x56c1[169]](); }; if (Metro_Gallery[_0x56c1[171]] === Metro_Gallery[_0x56c1[69]][_0x56c1[17]] - 1) { Metro_Gallery[_0x56c1[171]] = 0; } else { Metro_Gallery[_0x56c1[171]]++; }; Metro_Gallery[_0x56c1[69]][_0x56c1[28]](Metro_Gallery._image_pointer)[_0x56c1[114]](); }, imageClick: function (_0x5ed1x2a) { _0x5ed1x2a[_0x56c1[169]](); var _0x5ed1x39 = $(this); var _0x5ed1x3a = _0x5ed1x39[_0x56c1[51]](_0x56c1[172]); if (_0x5ed1x39[_0x56c1[175]](_0x56c1[174])[_0x56c1[173]]() !== _0x56c1[79]) { return; }; if (_0x5ed1x3a) { window[_0x56c1[133]](_0x5ed1x3a, _0x56c1[176]); } else { var _0x5ed1x11 = _0x5ed1x39[_0x56c1[57]](_0x56c1[56]); if (_0x5ed1x11[_0x56c1[45]](_0x56c1[177])) { Metro_Gallery[_0x56c1[69]][_0x56c1[42]](function (_0x5ed1xc) { if ($(this)[_0x56c1[47]](0) === _0x5ed1x39[_0x56c1[47]](0)) { Metro_Gallery[_0x56c1[171]] = _0x5ed1xc; return false; }; }); Metro_Gallery._openLightbox(_0x5ed1x39); }; }; }, onSwipeLeft: function (_0x5ed1x2a) { if (Metro_Gallery[_0x56c1[134]] && Metro_Gallery[_0x56c1[136]]) { Metro_Gallery[_0x56c1[64]][_0x56c1[157]](); }; }, onSwipeRight: function (_0x5ed1x2a) { if (Metro_Gallery[_0x56c1[134]] && Metro_Gallery[_0x56c1[136]]) { Metro_Gallery[_0x56c1[64]][_0x56c1[158]](); }; } }
                            };

                            $(document)[_0x56c1[178]](Metro_Gallery._init);
                            setTimeout(Metro_Gallery._start, 5000);
                            $(window)[_0x56c1[179]](Metro_Gallery._start);


                            $(document).on('click', '.caption.loaded .caption', function () {
                                //console.log($(this).parent('div').find('img').eq(0))
                               // console.log($(this).parent('div').eq(0).find('img').eq(0).attr('rel'));
                                location.href = $(this).parent('div').eq(0).find('img').eq(0).attr('rel');

                            }); 

                            //setInterval(function () {
                            //    $('.caption.loaded .caption').each(function () {
                            //        console.log($(this).attr('rel'));
                            //        var decoded = $(this).html($(this).attr('rel')).text();
                            //        $(this).html(decoded)
                            //        console.log(decoded);

                            //    });
                            //}, 500);
                         
                            //$.each(,function () {
                            //});
                           
                            
                        }
                       
                       
                        //    var $container = $('#container');

                        //    $container.isotope({
                        //        itemSelector: '.shifty-item',
                        //        layoutMode: 'masonryColumnShift'
                        //    });

                        //    $container.find('.shifty-item').hover(
                        //      function () {
                        //          $(this).css({ height: "+=100" });
                        //          // note that element is passed in, not jQuery object
                        //          $container.isotope('shiftColumnOfItem', this);
                        //      },
                        //      function () {
                        //          $(this).css({ height: "-=100" });
                        //          $container.isotope('shiftColumnOfItem', this);
                        //      }
                        //    );


                    }
                });
                //load Project end
            }

        })
    </script>
<%--<script>


  // -------------------------- Masonry Column Shift -------------------------- //
  
  // custom layout mode
  $.Isotope.prototype._masonryColumnShiftReset = function() {
    // layout-specific props
    var props = this.masonryColumnShift = {
      columnBricks: []
    };
    // FIXME shouldn't have to call this again
    this._getSegments();
    var i = props.cols;
    props.colYs = [];
    while (i--) {
      props.colYs.push( 0 );
      // push an array, for bricks in each column
      props.columnBricks.push([])
    }
  };
  
  $.Isotope.prototype._masonryColumnShiftLayout = function( $elems ) {
    var instance = this,
        props = instance.masonryColumnShift;
    $elems.each(function(){
      var $brick  = $(this);
      var setY = props.colYs;

      // get the minimum Y value from the columns
      var minimumY = Math.min.apply( Math, setY ),
          shortCol = 0;

      // Find index of short column, the first from the left
      for (var i=0, len = setY.length; i < len; i++) {
        if ( setY[i] === minimumY ) {
          shortCol = i;
          break;
        }
      }

      // position the brick
      var x = props.columnWidth * shortCol,
          y = minimumY;
      instance._pushPosition( $brick, x, y );
      // keep track of columnIndex
      $.data( this, 'masonryColumnIndex', i );
      props.columnBricks[i].push( this );

      // apply setHeight to necessary columns
      var setHeight = minimumY + $brick.outerHeight(true),
          setSpan = props.cols + 1 - len;
      for ( i=0; i < setSpan; i++ ) {
        props.colYs[ shortCol + i ] = setHeight;
      }

    });
  };
  
 $.Isotope.prototype._masonryColumnShiftGetContainerSize = function() {
    var containerHeight = Math.max.apply( Math, this.masonryColumnShift.colYs );
    return { height: containerHeight };
  };

  $.Isotope.prototype._masonryColumnShiftResizeChanged = function() {
    return this._checkIfSegmentsChanged();
  };
  
  $.Isotope.prototype.shiftColumnOfItem = function( itemElem, callback ) {
    
    var columnIndex = $.data( itemElem, 'masonryColumnIndex' );
    
    // don't proceed if no columnIndex
    if ( !isFinite(columnIndex) ) {
      return;
    }

    var props = this.masonryColumnShift;
    var columnBricks = props.columnBricks[ columnIndex ];
    var $brick;
    var x = props.columnWidth * columnIndex;
    var y = 0;
    for (var i=0, len = columnBricks.length; i < len; i++) {
      $brick = $( columnBricks[i] );
      this._pushPosition( $brick, x, y );
      y += $brick.outerHeight(true);
    }

    // set the size of the container
    if ( this.options.resizesContainer ) {
      var containerStyle = this._masonryColumnShiftGetContainerSize();
      containerStyle.height = Math.max( y, containerStyle.height );
      this.styleQueue.push({ $el: this.element, style: containerStyle });
    }

    this._processStyleQueue( $(columnBricks), callback )

  };

  $(function(){

    var $container = $('#container');

    $container.isotope({
      itemSelector: '.shifty-item',
      layoutMode: 'masonryColumnShift'
    });

    $container.find('.shifty-item').hover(
      function() {
        $(this).css({ height: "+=100" });
        // note that element is passed in, not jQuery object
        $container.isotope( 'shiftColumnOfItem', this );
      },
      function() {
        $(this).css({ height: "-=100" });
        $container.isotope( 'shiftColumnOfItem', this );
      }
    );

  });
</script>
    --%>
   
    
 <%-- </section> <!-- #content -->--%>


</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <%-- <uc1:ctr_footer runat="server" ID="ctr_footer" />--%>
</asp:Content>
