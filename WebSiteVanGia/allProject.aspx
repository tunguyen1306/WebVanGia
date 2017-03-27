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
                    <main role="main">


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
                            <script src="content/js/demo.js"></script>
                            <script src="content/js/hammer.js"></script>
                            <script src="content/js/jquery.js"></script>
                            <script src="content/js/masonry.pkgd.min.js"></script>
                            <script src="content/js/metro_gallery.min.js"></script>
                            <link href="content/demo.css" rel="stylesheet" />
                            <link href="content/css/demo.css" rel="stylesheet" />
                            <link href="content/css/metro_gallery.css" rel="stylesheet" />



                            <script src="content/demo.js"></script>



                        </section>



                    </main>

                    <div id="main">
                        <div class="metro_gallery flip vertical lightbox" style="width: 100%;">

                            <asp:Repeater ID="repSlide" runat="server" DataSourceID="dsSlider" OnItemDataBound="repSlide_ItemDataBound">
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

                            </asp:SqlDataSource>
                          
                         
                            <div class="tile tile_1x1 darkred">
                                <img src="content/img/rooney.jpg" data-caption="Rooney" />
                            </div>
                            <div class="tile tile_1x1 grey">
                                <img src="content/img/tshirt.jpg" data-caption="ManUtd" />
                                <img src="content/img/ronaldo.jpg" data-caption="Ronaldo" />
                            </div>
                            <div class="tile tile_2x1 orange">
                                <img src="content/img/paper.jpg" data-caption="ManUtd" />
                                <img src="content/img/ferguson.jpg" data-caption="Ferguson" />
                            </div>
                            <div class="tile tile_3x3 green">
                                <img src="content/img/king.jpg" data-caption="ManUtd" />
                                <img src="content/img/rooney.jpg" data-caption="Rooney" />
                                <img src="content/img/tshirt.jpg" data-caption="ManUtd" />
                            </div>
                            <div class="tile tile_2x1 purple">
                                <img src="content/img/rio.jpg" data-caption="ferdinand" />
                                <img src="content/img/paper.jpg" data-caption="ManUtd" />
                            </div>
                            <div class="tile tile_2x3 yellow">
                                <img src="img/09.jpg" data-caption="Group" />
                                <img src="content/img/manutd_logo.jpg" data-caption="ManUtd" />
                            </div>
                            <div class="tile tile_4x2 darkblue">
                                <img src="content/img/ferguson.jpg" data-caption="Ferguson" />
                                <img src="content/img/paper.jpg" data-caption="ManUtd" />
                                <img src="content/img/rio.jpg" data-caption="ferdinand" />
                            </div>
                            <div class="tile tile_3x1 darkred">
                                <img src="content/img/champ.jpg" data-caption="EPL Champion" />
                                <img src="content/img/cloth.jpg" data-caption="ManUtd" />
                            </div>
                            <div class="tile tile_3x1 darkgreen">
                                <img src="content/img/wallpaper.jpg" data-caption="ManUtd" />
                                <img src="content/img/champ.jpg" data-caption="EPL Champion" />
                            </div>
                        </div>
                    </div>



                </div>

            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM web_vangia_project left join tblSysPicture on tblSysPicture.advert_id=web_vangia_project.vangia_id_project  WHERE (vangia_status_project = 1)   and vangia_typeid_project=1   AND (vangia_language_project = 2 )  and tblSysPicture.position=1  order by vangia_id_project desc">
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
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <%-- <uc1:ctr_footer runat="server" ID="ctr_footer" />--%>
</asp:Content>
