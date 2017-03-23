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
   
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_ContentRow" runat="server">
  
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
                                    <article class="span4 item item_num0 item__module  " style="height: 200px !important; padding-left: 0;" id="item_115">
                                        <!-- Intro Image -->
                                       
                                        <asp:Repeater ID="repSlide1" runat="server" DataSourceID="dsSlider" OnItemDataBound="repSlide1_ItemDataBound">
                                            <ItemTemplate>
                                                 
                                                <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 500px; height: 300px; overflow: hidden; visibility: hidden;">
                                                    <!-- Loading Screen -->
                                                 
                                                     
                                                        <div data-u="loading" style="position: absolute; top: 0px; left: 0px; background-color: rgba(0,0,0,0.7);">
                                                        <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                                        <div style="position: absolute; display: block; background: url('img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                                    </div>
                                                     

                                                    <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 500px; height: 300px; overflow: hidden;">
                                                        <asp:Repeater ID="rpPicture" runat="server">
                                                            <ItemTemplate>
                                                                <div>
                                                                    <img data-u="image" src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath").ToString().Replace("_1","_3")%>" />
                                                                    <div data-u="thumb"> <a href="DetailSlider.aspx?id=<%# Eval("vangia_id_project") %>">  
                                                        <div class="textonslider "><%# Eval("vangia_name_project") %></div>   </a> </div>
                                                                </div>

                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </div>
                                                    <!-- Thumbnail Navigator -->
                                                    <div data-u="thumbnavigator" class="jssort09-600-45" style="position: absolute; bottom: 0px; left: 0px; width: 500px; height: 45px;">
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
                                             

                                                </div>
                                                     
                                            </ItemTemplate>
                                        </asp:Repeater>
                                 
                                        <!-- #endregion Jssor Slider End -->


                                        <div class="clearfix"></div>
                                    </article>
                                    <article class="span4 item item_num1 item__module  " id="item_116" style="height: 200px !important; padding-left: 0;">
                                        <!-- Intro Image -->
                                        <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound" DataSourceID="dsSlider2">
                                            <ItemTemplate>
                                         
    <div id="jssor_3" style="position:relative;margin:0 auto;top:0px;left:0px;width:500px;height:300px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:600px;height:300px;overflow:hidden;">
             <asp:Repeater ID="rpPicture1" runat="server">
                                                        <ItemTemplate>
            <div>
                <img data-u="image" src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath").ToString().Replace("_1","_3")%>" />
              
                
                <div data-u="caption" data-t="1" data-3d="1" style="position:absolute;top:-50px;left:125px;width:350px;height:30px;z-index:0;background-color:rgba(235,81,0,0.5);font-size:20px;color:#ffffff;line-height:30px;text-align:center;">
                    <a class="cusTextSlider" href="DetailSlider.aspx?id=<%# Eval("vangia_id_project") %>">  
                                                        <%# Eval("vangia_name_project") %>   </a>

                </div>
            </div>
          
        </ItemTemplate>  
</asp:Repeater>
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb01" style="bottom:16px;right:16px;">
            <div data-u="prototype" style="width:12px;height:12px;"></div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora02l" style="top:0px;left:8px;width:55px;height:55px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora02r" style="top:0px;right:8px;width:55px;height:55px;" data-autocenter="2"></span>
    </div>
    <!-- #endregion Jssor Slider End -->
                                            </ItemTemplate>
                                        </asp:Repeater>


                                        <div class="clearfix"></div>
                                    </article>
                                    <article class="span4 item item_num2 item__module  " id="item_117" style="height: 200px !important; padding-left: 0;">
                                        <!-- Intro Image -->
                                        <asp:Repeater ID="Repeater2" OnItemDataBound="Repeater2_ItemDataBound" runat="server" DataSourceID="dsSlider3">
                                            <ItemTemplate>
                                                <div id="jssor_4" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 500px; height: 300px; overflow: hidden; visibility: hidden;">
                                                    <!-- Loading Screen -->
                                                    <div data-u="loading" style="position: absolute; top: 0px; left: 0px; background-color: rgba(0,0,0,0.7);">
                                                        <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                                        <div style="position: absolute; display: block; background: url('img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                                    </div>
                                                    
                                                    <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 500px; height: 300px; overflow: hidden;">
                                                        <a data-u="any" href="http://www.jssor.com" style="display: none">Simple Fade Slideshow</a>
                                                        <asp:Repeater ID="rpPicture2" runat="server">
                                                            <ItemTemplate>
                                                                <div>
                                                                    <img data-u="image" src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath").ToString().Replace("_1","_3")%>" />
                                                                     <div data-u="loading" data-t="1" data-3d="1" style="position:absolute;top:-50px;left:125px;width:350px;height:30px;z-index:0;background-color:rgba(235,81,0,0.5);font-size:20px;color:#ffffff;line-height:30px;text-align:center;">
                    <a class="cusTextSlider" href="DetailSlider.aspx?id=<%# Eval("vangia_id_project") %>">  
                                                        <%# Eval("vangia_name_project") %>   </a>

                </div>
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
                                                
                                                <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1500px; height: 600px; overflow: hidden;">
                                                   
                                                    <asp:Repeater ID="rpPicture3" runat="server">
                                                        <ItemTemplate>
                                                            <div>
                                                                <img data-u="image" src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath").ToString().Replace("_1","_4")%>" />
                                                               <div style="position:absolute;top:15px;left:15px;width:500px;height:40px;z-index:0;font-size:30px;color:#ffffff;line-height:40px;"> <a class="cusTextSlider" href="DetailSlider.aspx?id=<%# Eval("vangia_id_project") %>">  
                                                        <%# Eval("vangia_name_project") %>   </a></div>

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
    <asp:SqlDataSource ID="dsPicture" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand=" select * from tblSysPicture left join web_vangia_project on web_vangia_project.vangia_id_project=tblSysPicture.advert_id  where advert_id=@vangia_id_project">
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

            var jssor_3_SlideoTransitions = [
              [{b:0,d:600,y:-290,e:{y:27}}],
              [{b:0,d:1000,y:185},{b:1000,d:500,o:-1},{b:1500,d:500,o:1},{b:2000,d:1500,r:360},{b:3500,d:1000,rX:30},{b:4500,d:500,rX:-30},{b:5000,d:1000,rY:30},{b:6000,d:500,rY:-30},{b:6500,d:500,sX:1},{b:7000,d:500,sX:-1},{b:7500,d:500,sY:1},{b:8000,d:500,sY:-1},{b:8500,d:500,kX:30},{b:9000,d:500,kX:-30},{b:9500,d:500,kY:30},{b:10000,d:500,kY:-30},{b:10500,d:500,c:{x:87.50,t:-87.50}},{b:11000,d:500,c:{x:-87.50,t:87.50}}],
              [{b:0,d:600,x:410,e:{x:27}}],
              [{b:-1,d:1,o:-1},{b:0,d:600,o:1,e:{o:5}}],
              [{b:-1,d:1,c:{x:175.0,t:-175.0}},{b:0,d:800,c:{x:-175.0,t:175.0},e:{c:{x:7,t:7}}}],
              [{b:-1,d:1,o:-1},{b:0,d:600,x:-570,o:1,e:{x:6}}],
              [{b:-1,d:1,o:-1,r:-180},{b:0,d:800,o:1,r:180,e:{r:7}}],
              [{b:0,d:1000,y:80,e:{y:24}},{b:1000,d:1100,x:570,y:170,o:-1,r:30,sX:9,sY:9,e:{x:2,y:6,r:1,sX:5,sY:5}}],
              [{b:2000,d:600,rY:30}],
              [{b:0,d:500,x:-105},{b:500,d:500,x:230},{b:1000,d:500,y:-120},{b:1500,d:500,x:-70,y:120},{b:2600,d:500,y:-80},{b:3100,d:900,y:160,e:{y:24}}],
              [{b:0,d:1000,o:-0.4,rX:2,rY:1},{b:1000,d:1000,rY:1},{b:2000,d:1000,rX:-1},{b:3000,d:1000,rY:-1},{b:4000,d:1000,o:0.4,rX:-1,rY:-1}]
            ];

            var jssor_3_options = {
              $AutoPlay: true,
              $Idle: 2000,
              $CaptionSliderOptions: {
                $Class: $JssorCaptionSlideo$,
                $Transitions: jssor_3_SlideoTransitions,
                $Breaks: [
                  [{d:2000,b:1000}]
                ]
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
            /*remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_3_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 600);
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
        .jssorb01 div { background-color: gray; }
        .jssorb01 div:hover, .jssorb01 .av:hover { background-color: #d3d3d3; }
        .jssorb01 .av { background-color: #fff; }
        .jssorb01 .dn, .jssorb01 .dn:hover { background-color: #555555; }

        /* jssor slider arrow navigator skin 02 css */
        /*
        .jssora02l                  (normal)
        .jssora02r                  (normal)
        .jssora02l:hover            (normal mouseover)
        .jssora02r:hover            (normal mouseover)
        .jssora02l.jssora02ldn      (mousedown)
        .jssora02r.jssora02rdn      (mousedown)
        .jssora02l.jssora02lds      (disabled)
        .jssora02r.jssora02rds      (disabled)
        */
        .jssora02l, .jssora02r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 55px;
            height: 55px;
            cursor: pointer;
            background: url('img/a02.png') no-repeat;
            overflow: hidden;
        }
        .jssora02l { background-position: -3px -33px; }
        .jssora02r { background-position: -63px -33px; }
        .jssora02l:hover { background-position: -123px -33px; }
        .jssora02r:hover { background-position: -183px -33px; }
        .jssora02l.jssora02ldn { background-position: -3px -33px; }
        .jssora02r.jssora02rdn { background-position: -63px -33px; }
        .jssora02l.jssora02lds { background-position: -3px -33px; opacity: .3; pointer-events: none; }
        .jssora02r.jssora02rds { background-position: -63px -33px; opacity: .3; pointer-events: none; }
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
            width: 500px;
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
