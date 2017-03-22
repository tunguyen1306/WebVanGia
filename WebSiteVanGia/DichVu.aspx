<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DichVu.aspx.cs" Inherits="WebSiteVanGia.DichVu" %>

<%@ Register Src="~/ctr/ctr_toprow.ascx" TagPrefix="uc1" TagName="ctr_toprow" %>
<%@ Register Src="~/ctr/ctr_footer.ascx" TagPrefix="uc1" TagName="ctr_footer" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Content_TopRow" runat="server">
    <uc1:ctr_toprow runat="server" ID="ctr_toprow" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_HeaderRow" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_ShowcaseRow" runat="server">
    <div id="showcase-row" data-stellar-background-ratio="0.5">
        <div class="row-container">
            <div class="container">
                <div class="row">
                    <div class="moduletable welcome  span12">
                        <div class="module_container">
                            <%-- <header>
                                <h2 class="moduleTitle "><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first">VAN GIA TRAVEL </span></h2>
                            </header>--%>
                            <div class="mod-newsflash-adv mod-newsflash-adv__welcome cols-3" id="module_144">
                                <div class="row-fluid">
                                    <asp:Repeater ID="rpVideo" DataSourceID="dsVideo" runat="server">
                                        <ItemTemplate>
                                            <iframe width="100%" height="500" src="https://www.youtube.com/embed/<%#Eval("vangia_link_video_project") %>" frameborder="0" allowfullscreen></iframe>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <asp:SqlDataSource ID="dsVideo" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT  top 1* FROM web_vangia_project WHERE (vangia_status_project = 1) and vangia_typeid_project=3 order by vangia_id_project desc">
                                        <SelectParameters>
                                            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
                                        </SelectParameters>

                                    </asp:SqlDataSource>

                                </div>
                                <div class="clearfix"></div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MaintopRow" runat="server">
    <%-- <div class="maintop-row">
         <div class="moduletable best_projects">
        <div class="module_container">
            <div class="mod-newsflash-adv custom2 mod-newsflash-adv__best_projects cols-3" id="module_143">
              

                <div class="clearfix"></div>

            </div>
        </div>
    </div>
    </div>--%>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_ContentRow" runat="server">
    <%--     <div class="maintop-row">
         <div class="moduletable best_projects">
        <div class="module_container">
            <div class="mod-newsflash-adv custom2 mod-newsflash-adv__best_projects cols-3" id="module_143">
              

                <div class="clearfix"></div>

            </div>
        </div>
    </div>
    </div>--%>
    <%--style="padding-top: 10px; padding-bottom: 90px;"--%>
    <div class="video-rowdv" id="video-row">
        <div class="row-container visible visible-first">
            <div class="container">
                <div id="bottom" class="row">
                    <div class="moduletable testimonials  span12">
                        <div class="module_container">
                            <header>
                                <h2 class="moduleTitle visible visible-first">
                                    <span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first">Tour Du Lịch</span> </h2>

                            </header>
                            <div class="mod-newsflash-adv mod-newsflash-adv__testimonials cols-3" id="module_143">

                                <div class="row-fluid">
                                    <article class="span4 item item_num0 item__module  " style="height: 225px !important; padding-left: 0;" id="item_115">
                                        <!-- Intro Image -->
                                       
                                        <asp:Repeater ID="repSlide1" runat="server" DataSourceID="dsSlider" OnItemDataBound="repSlide1_ItemDataBound">
                                            <ItemTemplate>
                                                 
                                                <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 600px; height: 400px; overflow: hidden; visibility: hidden;">
                                                    <!-- Loading Screen -->
                                                 
                                                   <a href="DetailSlider.aspx?id=<%# Eval("vangia_id_project") %>">      <div data-u="loading" style="position: absolute; top: 0px; left: 0px; background-color: rgba(0,0,0,0.7);">
                                                        <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                                        <div style="position: absolute; display: block; background: url('img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                                    </div>
                                                   <div class="textonslider"><%# Eval("vangia_name_project") %></div>
                                                    <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 600px; height: 400px; overflow: hidden;">
                                                        <asp:Repeater ID="rpPicture" runat="server">
                                                            <ItemTemplate>
                                                                <div>
                                                                    <img data-u="image" src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath").ToString().Replace("_1","_3")%>" />
                                                                    <div data-u="thumb"> </div>
                                                                </div>

                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </div>
                                                    <!-- Thumbnail Navigator -->
                                                    <div data-u="thumbnavigator" class="jssort09-600-45" style="position: absolute; bottom: 0px; left: 0px; width: 600px; height: 45px;">
                                                        <div style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; background-color: #000; filter: alpha(opacity=40.0); opacity: 0.4;"></div>
                                                        <!-- Thumbnail Item Skin Begin -->
                                                        <div data-u="slides" style="cursor: default;">
                                                            <div data-u="prototype" class="p">
                                                                <div data-u="thumbnailtemplate" class="t"></div>
                                                            </div>
                                                        </div>
                                                        <!-- Thumbnail Item Skin End -->
                                                    </div>
                                                    <!-- Bullet Navigator -->
                                                    <div data-u="navigator" class="jssorb01" style="bottom: 16px; right: 16px;">
                                                        <div data-u="prototype" style="width: 12px; height: 12px;"></div>
                                                    </div>
                                                    <!-- Arrow Navigator -->
                                                    <span data-u="arrowleft" class="jssora05l" style="top: 0px; left: 8px; width: 40px; height: 40px;" data-autocenter="2"></span>
                                                    <span data-u="arrowright" class="jssora05r" style="top: 0px; right: 8px; width: 40px; height: 40px;" data-autocenter="2"></span>
                                                </a>  

                                                </div>
                                                     
                                            </ItemTemplate>
                                        </asp:Repeater>
                                 
                                        <!-- #endregion Jssor Slider End -->


                                        <div class="clearfix"></div>
                                    </article>
                                    <article class="span4 item item_num1 item__module  " id="item_116" style="height: 225px !important; padding-left: 0;">
                                        <!-- Intro Image -->
                                        <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound" DataSourceID="dsSlider2">
                                            <ItemTemplate>
                                                <div id="jssor_3" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 600px; height: 400px; overflow: hidden; visibility: hidden;">
                                                    <!-- Loading Screen -->
                                                    <div data-u="loading" style="position: absolute; top: 0px; left: 0px; background-color: rgba(0,0,0,0.7);">
                                                        <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                                        <div style="position: absolute; display: block; background: url('img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                                    </div>
                                                     <div class="textonslider"><%# Eval("vangia_name_project") %></div>
                                                    <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 600px; height: 400px; overflow: hidden;">
                                                        <asp:Repeater ID="rpPicture1" runat="server">
                                                            <ItemTemplate>
                                                                <div>
                                                                    <img data-u="image" src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath").ToString().Replace("_1","_3")%>" />

                                                                </div>

                                                            </ItemTemplate>
                                                        </asp:Repeater>


                                                    </div>
                                                    <!-- Bullet Navigator -->
                                                    <div data-u="navigator" class="jssorb01" style="bottom: 16px; right: 16px;">
                                                        <div data-u="prototype" style="width: 12px; height: 12px;"></div>
                                                    </div>
                                                    <!-- Arrow Navigator -->
                                                    <span data-u="arrowleft" class="jssora05l" style="top: 0px; left: 8px; width: 40px; height: 40px;" data-autocenter="2"></span>
                                                    <span data-u="arrowright" class="jssora05r" style="top: 0px; right: 8px; width: 40px; height: 40px;" data-autocenter="2"></span>
                                                </div>
                                                <!-- #endregion Jssor Slider End -->
                                            </ItemTemplate>
                                        </asp:Repeater>


                                        <div class="clearfix"></div>
                                    </article>
                                    <article class="span4 item item_num2 item__module  " id="item_117" style="height: 225px !important; padding-left: 0;">
                                        <!-- Intro Image -->
                                        <asp:Repeater ID="Repeater2" OnItemDataBound="Repeater2_ItemDataBound" runat="server" DataSourceID="dsSlider3">
                                            <ItemTemplate>
                                                <div id="jssor_4" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 600px; height: 400px; overflow: hidden; visibility: hidden;">
                                                    <!-- Loading Screen -->
                                                    <div data-u="loading" style="position: absolute; top: 0px; left: 0px; background-color: rgba(0,0,0,0.7);">
                                                        <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                                        <div style="position: absolute; display: block; background: url('img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                                    </div>
                                                     <div class="textonslider"><%# Eval("vangia_name_project") %></div>
                                                    <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 600px; height: 400px; overflow: hidden;">
                                                        <a data-u="any" href="http://www.jssor.com" style="display: none">Simple Fade Slideshow</a>
                                                        <asp:Repeater ID="rpPicture2" runat="server">
                                                            <ItemTemplate>
                                                                <div>
                                                                    <img data-u="image" src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath").ToString().Replace("_1","_3")%>" />

                                                                </div>

                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </div>
                                                    <!-- Bullet Navigator -->
                                                    <div data-u="navigator" class="jssorb05" style="bottom: 16px; right: 16px;" data-autocenter="1">
                                                        <!-- bullet navigator item prototype -->
                                                        <div data-u="prototype" style="width: 16px; height: 16px;"></div>
                                                    </div>
                                                    <!-- Arrow Navigator -->
                                                    <span data-u="arrowleft" class="jssora12l" style="top: 0px; left: 0px; width: 30px; height: 46px;" data-autocenter="2"></span>
                                                    <span data-u="arrowright" class="jssora12r" style="top: 0px; right: 0px; width: 30px; height: 46px;" data-autocenter="2"></span>
                                                </div>
                                                <!-- #endregion Jssor Slider End -->

                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <div class="clearfix"></div>
                                    </article>
                                </div>

                                <div class="row-fluid">


                                    <asp:Repeater ID="Repeater3" OnItemDataBound="Repeater3_ItemDataBound" runat="server" DataSourceID="dsSlider4">
                                        <ItemTemplate>
                                            <div id="jssor_6" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 1500px; height: 600px; overflow: hidden; visibility: hidden;">
                                                <!-- Loading Screen -->
                                                <div data-u="loading" class="jssorl-oval" style="position: absolute; top: 0px; left: 0px; text-align: center; background-color: rgba(0,0,0,0.7);">
                                                    <img style="margin-top: -19.0px; position: relative; top: 50%; width: 38px; height: 38px;" src="img/oval.svg" />
                                                </div>
                                                 <div class="textonslider"><%# Eval("vangia_name_project") %></div>
                                                <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1500px; height: 600px; overflow: hidden;">
                                                   
                                                    <asp:Repeater ID="rpPicture3" runat="server">
                                                        <ItemTemplate>
                                                            <div>
                                                                <img data-u="image" src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath").ToString().Replace("_1","_4")%>" />
                                                               
                                                            </div>


                                                        </ItemTemplate>
                                                    </asp:Repeater>

                                                </div>
                                                <!-- Bullet Navigator -->
                                                <div data-u="navigator" class="jssorb05" style="bottom: 16px; right: 16px;" data-autocenter="1">
                                                    <!-- bullet navigator item prototype -->
                                                    <div data-u="prototype" style="width: 16px; height: 16px;"></div>
                                                </div>
                                                <!-- Arrow Navigator -->
                                                <span data-u="arrowleft" class="jssora22l" style="top: 0px; left: 8px; width: 40px; height: 58px;" data-autocenter="2"></span>
                                                <span data-u="arrowright" class="jssora22r" style="top: 0px; right: 8px; width: 40px; height: 58px;" data-autocenter="2"></span>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <!-- #endregion Jssor Slider End -->

                                </div>
                                <div class="clearfix"></div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:HiddenField runat="server" ID="hdSlide1" />
    <asp:SqlDataSource ID="dsPicture" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand=" select * from tblSysPicture  where advert_id=@vangia_id_project">
        <SelectParameters>

            <asp:ControlParameter ControlID="hdSlide1" DefaultValue="0" Name="vangia_id_project" PropertyName="Value" />
        </SelectParameters>

    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM web_vangia_project WHERE (vangia_status_project = 1) and vangia_typeid_project=3 AND (vangia_language_project = @vangia_language_project ) order by vangia_order_project ">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
        </SelectParameters>

    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsSlider" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM    (SELECT ROW_NUMBER () OVER (ORDER BY web_vangia_project.vangia_id_project desc) AS RowNum,* FROM web_vangia_project where   (vangia_status_project = 1) and vangia_typeid_project=31 ) sub	WHERE RowNum = 1">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
        </SelectParameters>

    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsSlider2" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM    (SELECT ROW_NUMBER () OVER (ORDER BY web_vangia_project.vangia_id_project desc) AS RowNum,* FROM web_vangia_project where   (vangia_status_project = 1) and vangia_typeid_project=31 ) sub	WHERE RowNum = 2">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
        </SelectParameters>

    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsSlider3" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM    (SELECT ROW_NUMBER () OVER (ORDER BY web_vangia_project.vangia_id_project desc) AS RowNum,* FROM web_vangia_project where   (vangia_status_project = 1) and vangia_typeid_project=31 ) sub	WHERE RowNum = 3">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
        </SelectParameters>

    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsSlider4" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM    (SELECT ROW_NUMBER () OVER (ORDER BY web_vangia_project.vangia_id_project desc) AS RowNum,* FROM web_vangia_project where   (vangia_status_project = 1) and vangia_typeid_project=31  ) sub	WHERE RowNum = 4">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
        </SelectParameters>

    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
    <div style="background-position: 50% -7.5px;" id="mainbottom-row" data-stellar-background-ratio="0.5">
        <div class="row-container visible-first visible">
            <div class="container">
                <div id="mainbottom" class="row">
                    <div class="moduletable droplist  span12">
                        <div class="module_container">
                            <header>
                                <h2 class="moduleTitle visible-first visible"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span><span class="item_title_part1 item_title_part_even item_title_part_second_half">Hành trình dự kiến</span></h2>
                            </header>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            try {
                var jssor_6_options = {
                    $AutoPlay: true,
                    $SlideDuration: 800,
                    $SlideEasing: $Jease$.$OutQuint,
                    $ArrowNavigatorOptions: {
                        $Class: $JssorArrowNavigator$
                    },
                    $BulletNavigatorOptions: {
                        $Class: $JssorBulletNavigator$
                    }
                };

                var jssor_6_slider = new $JssorSlider$("jssor_6", jssor_6_options);

                /*responsive code begin*/
                /*you can remove responsive code if you don't want the slider scales while window resizing*/
                function ScaleSlider() {
                    var refSize = jssor_6_slider.$Elmt.parentNode.clientWidth;
                    if (refSize) {
                        refSize = Math.min(refSize, 1920);
                        jssor_6_slider.$ScaleWidth(refSize);
                    }
                    else {
                        window.setTimeout(ScaleSlider, 30);
                    }
                }
                ScaleSlider();
                $(window).bind("load", ScaleSlider);
                $(window).bind("resize", ScaleSlider);
                $(window).bind("orientationchange", ScaleSlider);
                /*responsive code end*/
            } catch (e) {

            }
            
        });
    </script>
    <style>
        /* jssor slider loading skin oval css */

        .jssorl-oval img {
            animation-name: jssorl-oval;
            animation-duration: 1.2s;
            animation-iteration-count: infinite;
            animation-timing-function: linear;
        }

        @keyframes jssorl-oval {
            from {
                transform: rotate(0deg);
            }

            to {
                transform: rotate(360deg);
            }
        }


        /* jssor slider bullet navigator skin 05 css */
        /*
        .jssorb05 div           (normal)
        .jssorb05 div:hover     (normal mouseover)
        .jssorb05 .av           (active)
        .jssorb05 .av:hover     (active mouseover)
        .jssorb05 .dn           (mousedown)
        */
        .jssorb05 {
            position: absolute;
        }

            .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
                position: absolute;
                /* size of bullet elment */
                width: 16px;
                height: 16px;
                background: url('img/b05.png') no-repeat;
                overflow: hidden;
                cursor: pointer;
            }

            .jssorb05 div {
                background-position: -7px -7px;
            }

                .jssorb05 div:hover, .jssorb05 .av:hover {
                    background-position: -37px -7px;
                }

            .jssorb05 .av {
                background-position: -67px -7px;
            }

            .jssorb05 .dn, .jssorb05 .dn:hover {
                background-position: -97px -7px;
            }

        /* jssor slider arrow navigator skin 22 css */
        /*
        .jssora22l                  (normal)
        .jssora22r                  (normal)
        .jssora22l:hover            (normal mouseover)
        .jssora22r:hover            (normal mouseover)
        .jssora22l.jssora22ldn      (mousedown)
        .jssora22r.jssora22rdn      (mousedown)
        .jssora22l.jssora22lds      (disabled)
        .jssora22r.jssora22rds      (disabled)
        */
        .jssora22l, .jssora22r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 40px;
            height: 58px;
            cursor: pointer;
            background: url('img/a22.png') center center no-repeat;
            overflow: hidden;
        }

        .jssora22l {
            background-position: -10px -31px;
        }

        .jssora22r {
            background-position: -70px -31px;
        }

        .jssora22l:hover {
            background-position: -130px -31px;
        }

        .jssora22r:hover {
            background-position: -190px -31px;
        }

        .jssora22l.jssora22ldn {
            background-position: -250px -31px;
        }

        .jssora22r.jssora22rdn {
            background-position: -310px -31px;
        }

        .jssora22l.jssora22lds {
            background-position: -10px -31px;
            opacity: .3;
            pointer-events: none;
        }

        .jssora22r.jssora22rds {
            background-position: -70px -31px;
            opacity: .3;
            pointer-events: none;
        }
    </style>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            try {
                var jssor_4_SlideshowTransitions = [
              { $Duration: 1200, $Opacity: 2 }
                ];

                var jssor_4_options = {
                    $AutoPlay: true,
                    $SlideshowOptions: {
                        $Class: $JssorSlideshowRunner$,
                        $Transitions: jssor_4_SlideshowTransitions,
                        $TransitionsOrder: 1
                    },
                    $ArrowNavigatorOptions: {
                        $Class: $JssorArrowNavigator$
                    },
                    $BulletNavigatorOptions: {
                        $Class: $JssorBulletNavigator$
                    }
                };

                var jssor_4_slider = new $JssorSlider$("jssor_4", jssor_4_options);

                /*responsive code begin*/
                /*you can remove responsive code if you don't want the slider scales while window resizing*/
                function ScaleSlider() {
                    var refSize = jssor_4_slider.$Elmt.parentNode.clientWidth;
                    if (refSize) {
                        refSize = Math.min(refSize, 700);
                        jssor_4_slider.$ScaleWidth(refSize);
                    }
                    else {
                        window.setTimeout(ScaleSlider, 30);
                    }
                }
                ScaleSlider();
                $(window).bind("load", ScaleSlider);
                $(window).bind("resize", ScaleSlider);
                $(window).bind("orientationchange", ScaleSlider);
                /*responsive code end*/
            } catch (e) {

            }
            
        });
    </script>
    <style>
        /* jssor slider bullet navigator skin 05 css */
        /*
        .jssorb05 div           (normal)
        .jssorb05 div:hover     (normal mouseover)
        .jssorb05 .av           (active)
        .jssorb05 .av:hover     (active mouseover)
        .jssorb05 .dn           (mousedown)
        */
        .jssorb05 {
            position: absolute;
        }

            .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
                position: absolute;
                /* size of bullet elment */
                width: 16px;
                height: 16px;
                background: url('img/b05.png') no-repeat;
                overflow: hidden;
                cursor: pointer;
            }

            .jssorb05 div {
                background-position: -7px -7px;
            }

                .jssorb05 div:hover, .jssorb05 .av:hover {
                    background-position: -37px -7px;
                }

            .jssorb05 .av {
                background-position: -67px -7px;
            }

            .jssorb05 .dn, .jssorb05 .dn:hover {
                background-position: -97px -7px;
            }

        /* jssor slider arrow navigator skin 12 css */
        /*
        .jssora12l                  (normal)
        .jssora12r                  (normal)
        .jssora12l:hover            (normal mouseover)
        .jssora12r:hover            (normal mouseover)
        .jssora12l.jssora12ldn      (mousedown)
        .jssora12r.jssora12rdn      (mousedown)
        */
        .jssora12l, .jssora12r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 30px;
            height: 46px;
            cursor: pointer;
            background: url('img/a12.png') no-repeat;
            overflow: hidden;
        }

        .jssora12l {
            background-position: -16px -37px;
        }

        .jssora12r {
            background-position: -75px -37px;
        }

        .jssora12l:hover {
            background-position: -136px -37px;
        }

        .jssora12r:hover {
            background-position: -195px -37px;
        }

        .jssora12l.jssora12ldn {
            background-position: -256px -37px;
        }

        .jssora12r.jssora12rdn {
            background-position: -315px -37px;
        }
    </style>


    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            try {
                var jssor_3_SlideshowTransitions = [
                              { $Duration: 1200, x: 0.2, y: -0.1, $Delay: 20, $Cols: 8, $Rows: 4, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 260, $Easing: { $Left: $Jease$.$InWave, $Top: $Jease$.$InWave, $Clip: $Jease$.$OutQuad }, $Outside: true, $Round: { $Left: 1.3, $Top: 2.5 } },
                              { $Duration: 1500, x: 0.3, y: -0.3, $Delay: 20, $Cols: 8, $Rows: 4, $Clip: 15, $During: { $Left: [0.1, 0.9], $Top: [0.1, 0.9] }, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 260, $Easing: { $Left: $Jease$.$InJump, $Top: $Jease$.$InJump, $Clip: $Jease$.$OutQuad }, $Outside: true, $Round: { $Left: 0.8, $Top: 2.5 } },
                              { $Duration: 1500, x: 0.2, y: -0.1, $Delay: 20, $Cols: 8, $Rows: 4, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 260, $Easing: { $Left: $Jease$.$InWave, $Top: $Jease$.$InWave, $Clip: $Jease$.$OutQuad }, $Outside: true, $Round: { $Left: 0.8, $Top: 2.5 } },
                              { $Duration: 1500, x: 0.3, y: -0.3, $Delay: 80, $Cols: 8, $Rows: 4, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $Easing: { $Left: $Jease$.$InJump, $Top: $Jease$.$InJump, $Clip: $Jease$.$OutQuad }, $Outside: true, $Round: { $Left: 0.8, $Top: 2.5 } },
                              { $Duration: 1800, x: 1, y: 0.2, $Delay: 30, $Cols: 10, $Rows: 5, $Clip: 15, $During: { $Left: [0.3, 0.7], $Top: [0.3, 0.7] }, $SlideOut: true, $Reverse: true, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 2050, $Easing: { $Left: $Jease$.$InOutSine, $Top: $Jease$.$OutWave, $Clip: $Jease$.$InOutQuad }, $Outside: true, $Round: { $Top: 1.3 } },
                              { $Duration: 1000, $Delay: 30, $Cols: 8, $Rows: 4, $Clip: 15, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraightStairs, $Assembly: 2049, $Easing: $Jease$.$OutQuad },
                              { $Duration: 1000, $Delay: 80, $Cols: 8, $Rows: 4, $Clip: 15, $SlideOut: true, $Easing: $Jease$.$OutQuad },
                              { $Duration: 1000, y: -1, $Cols: 12, $Formation: $JssorSlideshowFormations$.$FormationStraight, $ChessMode: { $Column: 12 } },
                              { $Duration: 1000, x: -0.2, $Delay: 40, $Cols: 12, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Assembly: 260, $Easing: { $Left: $Jease$.$InOutExpo, $Opacity: $Jease$.$InOutQuad }, $Opacity: 2, $Outside: true, $Round: { $Top: 0.5 } },
                              { $Duration: 2000, y: -1, $Delay: 60, $Cols: 15, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Easing: $Jease$.$OutJump, $Round: { $Top: 1.5 } }
                ];

                var jssor_3_options = {
                    $AutoPlay: true,
                    $SlideshowOptions: {
                        $Class: $JssorSlideshowRunner$,
                        $Transitions: jssor_3_SlideshowTransitions,
                        $TransitionsOrder: 1
                    },
                    $ArrowNavigatorOptions: {
                        $Class: $JssorArrowNavigator$
                    },
                    $BulletNavigatorOptions: {
                        $Class: $JssorBulletNavigator$
                    }
                };

                var jssor_3_slider = new $JssorSlider$("jssor_3", jssor_3_options);

                /*responsive code begin*/
                /*you can remove responsive code if you don't want the slider scales while window resizing*/
                function ScaleSlider() {
                    var refSize = jssor_3_slider.$Elmt.parentNode.clientWidth;
                    if (refSize) {
                        refSize = Math.min(refSize, 700);
                        jssor_3_slider.$ScaleWidth(refSize);
                    }
                    else {
                        window.setTimeout(ScaleSlider, 30);
                    }
                }
                ScaleSlider();
                $(window).bind("load", ScaleSlider);
                $(window).bind("resize", ScaleSlider);
                $(window).bind("orientationchange", ScaleSlider);
                /*responsive code end*/
            } catch (e) {

            }
        });
    </script>
    <style>
        /* jssor slider bullet navigator skin 01 css */
        /*
        .jssorb01 div           (normal)
        .jssorb01 div:hover     (normal mouseover)
        .jssorb01 .av           (active)
        .jssorb01 .av:hover     (active mouseover)
        .jssorb01 .dn           (mousedown)
        */
        .jssorb01 {
            position: absolute;
        }

            .jssorb01 div, .jssorb01 div:hover, .jssorb01 .av {
                position: absolute;
                /* size of bullet elment */
                width: 12px;
                height: 12px;
                filter: alpha(opacity=70);
                opacity: .7;
                overflow: hidden;
                cursor: pointer;
                border: #000 1px solid;
            }

            .jssorb01 div {
                background-color: gray;
            }

                .jssorb01 div:hover, .jssorb01 .av:hover {
                    background-color: #d3d3d3;
                }

            .jssorb01 .av {
                background-color: #fff;
            }

            .jssorb01 .dn, .jssorb01 .dn:hover {
                background-color: #555555;
            }

        /* jssor slider arrow navigator skin 05 css */
        /*
        .jssora05l                  (normal)
        .jssora05r                  (normal)
        .jssora05l:hover            (normal mouseover)
        .jssora05r:hover            (normal mouseover)
        .jssora05l.jssora05ldn      (mousedown)
        .jssora05r.jssora05rdn      (mousedown)
        .jssora05l.jssora05lds      (disabled)
        .jssora05r.jssora05rds      (disabled)
        */
        .jssora05l, .jssora05r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 40px;
            height: 40px;
            cursor: pointer;
            background: url('img/a17.png') no-repeat;
            overflow: hidden;
        }

        .jssora05l {
            background-position: -10px -40px;
        }

        .jssora05r {
            background-position: -70px -40px;
        }

        .jssora05l:hover {
            background-position: -130px -40px;
        }

        .jssora05r:hover {
            background-position: -190px -40px;
        }

        .jssora05l.jssora05ldn {
            background-position: -250px -40px;
        }

        .jssora05r.jssora05rdn {
            background-position: -310px -40px;
        }

        .jssora05l.jssora05lds {
            background-position: -10px -40px;
            opacity: .3;
            pointer-events: none;
        }

        .jssora05r.jssora05rds {
            background-position: -70px -40px;
            opacity: .3;
            pointer-events: none;
        }
    </style>

    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            try {
                var jssor_1_SlideshowTransitions = [
              { $Duration: 1200, x: -0.3, $During: { $Left: [0.3, 0.7] }, $Easing: { $Left: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 1200, x: 0.3, $SlideOut: true, $Easing: { $Left: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 }
                ];

                var jssor_1_options = {
                    $AutoPlay: true,
                    $SlideshowOptions: {
                        $Class: $JssorSlideshowRunner$,
                        $Transitions: jssor_1_SlideshowTransitions,
                        $TransitionsOrder: 1
                    },
                    $ArrowNavigatorOptions: {
                        $Class: $JssorArrowNavigator$
                    },
                    $BulletNavigatorOptions: {
                        $Class: $JssorBulletNavigator$
                    },
                    $ThumbnailNavigatorOptions: {
                        $Class: $JssorThumbnailNavigator$,
                        $Cols: 1,
                        $Align: 0,
                        $NoDrag: true
                    }
                };

                var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

                /*responsive code begin*/
                /*you can remove responsive code if you don't want the slider scales while window resizing*/
                function ScaleSlider() {
                    var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                    if (refSize) {
                        refSize = Math.min(refSize, 700);
                        jssor_1_slider.$ScaleWidth(refSize);
                    }
                    else {
                        window.setTimeout(ScaleSlider, 30);
                    }
                }
                ScaleSlider();
                $(window).bind("load", ScaleSlider);
                $(window).bind("resize", ScaleSlider);
                $(window).bind("orientationchange", ScaleSlider);
                /*responsive code end*/
            } catch (e) {

            }
            
        });
    </script>
    <style>
        /* jssor slider bullet navigator skin 01 css */
        /*
        .jssorb01 div           (normal)
        .jssorb01 div:hover     (normal mouseover)
        .jssorb01 .av           (active)
        .jssorb01 .av:hover     (active mouseover)
        .jssorb01 .dn           (mousedown)
        */
        .jssorb01 {
            position: absolute;
        }

            .jssorb01 div, .jssorb01 div:hover, .jssorb01 .av {
                position: absolute;
                /* size of bullet elment */
                width: 12px;
                height: 12px;
                filter: alpha(opacity=70);
                opacity: .7;
                overflow: hidden;
                cursor: pointer;
                border: #000 1px solid;
            }

            .jssorb01 div {
                background-color: gray;
            }

                .jssorb01 div:hover, .jssorb01 .av:hover {
                    background-color: #d3d3d3;
                }

            .jssorb01 .av {
                background-color: #fff;
            }

            .jssorb01 .dn, .jssorb01 .dn:hover {
                background-color: #555555;
            }

        /* jssor slider arrow navigator skin 05 css */
        /*
        .jssora05l                  (normal)
        .jssora05r                  (normal)
        .jssora05l:hover            (normal mouseover)
        .jssora05r:hover            (normal mouseover)
        .jssora05l.jssora05ldn      (mousedown)
        .jssora05r.jssora05rdn      (mousedown)
        .jssora05l.jssora05lds      (disabled)
        .jssora05r.jssora05rds      (disabled)
        */
        .jssora05l, .jssora05r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 40px;
            height: 40px;
            cursor: pointer;
            background: url('img/a17.png') no-repeat;
            overflow: hidden;
        }

        .jssora05l {
            background-position: -10px -40px;
        }

        .jssora05r {
            background-position: -70px -40px;
        }

        .jssora05l:hover {
            background-position: -130px -40px;
        }

        .jssora05r:hover {
            background-position: -190px -40px;
        }

        .jssora05l.jssora05ldn {
            background-position: -250px -40px;
        }

        .jssora05r.jssora05rdn {
            background-position: -310px -40px;
        }

        .jssora05l.jssora05lds {
            background-position: -10px -40px;
            opacity: .3;
            pointer-events: none;
        }

        .jssora05r.jssora05rds {
            background-position: -70px -40px;
            opacity: .3;
            pointer-events: none;
        }
        /* jssor slider thumbnail navigator skin 09 css */ .jssort09-600-45 .p {
            position: absolute;
            top: 0;
            left: 0;
            width: 600px;
            height: 45px;
        }

        .jssort09-600-45 .t {
            font-family: verdana;
            font-weight: normal;
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            color: #fff;
            line-height: 45px;
            font-size: 20px;
            padding-left: 10px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
