﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctr_headerrow.ascx.cs" Inherits="WebSiteVanGia.ctr.ctr_headerrow" %>
 <div id="header-row" >
                <header>
                    <div class="moduletable ">
                        <div class="module_container">
                            <div id="camera-slideshow_92" class=" camera_wrap pattern_1" >
                                <asp:Repeater ID="rptShow" runat="server" DataSourceID="dsProject"><ItemTemplate>
                                <div class="camera-item" data-src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_silde").ToString().Split('_')[0]+"/"+Eval("vangia_img_silde") %>" data-thumb="img/thumb-1.jpg">
                                    <div class="camera_caption fadeIn">
                                        <h4 class="slide-title" style="font-weight: bold;"><%#Eval("vangia_name_silde") %></h4>
                                        <p class="slogon">Vạn Gia, Vạn Niềm Vui – Vạn Nụ Cười</p>

                                        <a class="btn btn-info readmore rm" href="<%#Eval("vangia_link_silde") %>" target="_self"><span></span></a>
                                    </div>
                                </div>
                               </ItemTemplate>

                                </asp:Repeater>
                            </div>
                          
                        </div>
                    </div>
                </header>
            </div>
<script>
    jQuery(function () {
        jQuery('#camera-slideshow_92').camera({
            alignment: "topCenter", //topLeft, topCenter, topRight, centerLeft, center, centerRight, bottomLeft, bottomCenter, bottomRight
            autoAdvance: true,	//true, false
            mobileAutoAdvance: true, //true, false. Auto-advancing for mobile devices
            barDirection: "leftToRight",	//'leftToRight', 'rightToLeft', 'topToBottom', 'bottomToTop'
            barPosition: "bottom",	//'bottom', 'left', 'top', 'right'
            cols: 6,
            easing: "swing",	//for the complete list http://jqueryui.com/demos/effect/easing.html
            mobileEasing: "swing",	//leave empty if you want to display the same easing on mobile devices and on desktop etc.
            fx: "simpleFade",
            mobileFx: "simpleFade",		//leave empty if you want to display the same effect on mobile devices and on desktop etc.
            gridDifference: 250,	//to make the grid blocks slower than the slices, this value must be smaller than transPeriod
            height: "50.50505050505051%",	//here you can type pixels (for instance '300px'), a percentage (relative to the width of the slideshow, for instance '50%') or 'auto'
            imagePath: 'img/',	//the path to the image folder (it serves for the blank.gif, when you want to display videos)
            hover: true,	//true, false. Puase on state hover. Not available for mobile devices
            loader: "none",	//pie, bar, none (even if you choose "pie", old browsers like IE8- can't display it... they will display always a loading bar)
            loaderColor: "#eeeeee",
            loaderBgColor: "#222222",
            loaderOpacity: .8,	//0, .1, .2, .3, .4, .5, .6, .7, .8, .9, 1
            loaderPadding: 2,	//how many empty pixels you want to display between the loader and its background
            loaderStroke: 7,	//the thickness both of the pie loader and of the bar loader. Remember: for the pie, the loader thickness must be less than a half of the pie diameter
            minHeight: "200px",	//you can also leave it blank
            navigation: true,	//true or false, to display or not the navigation buttons
            navigationHover: false,	//if true the navigation button (prev, next and play/stop buttons) will be visible on hover state only, if false they will be 	visible always
            mobileNavHover: false,	//same as above, but only for mobile devices
            opacityOnGrid: false,	//true, false. Decide to apply a fade effect to blocks and slices: if your slideshow is fullscreen or simply big, I recommend to set it false to have a smoother effect 
            overlayer: false,	//a layer on the images to prevent the users grab them simply by clicking the right button of their mouse (.camera_overlayer)
            pagination: false,
            playPause: false,	//true or false, to display or not the play/pause buttons
            pauseOnClick: false,	//true, false. It stops the slideshow when you click the sliders.
            pieDiameter: 38,
            piePosition: "rightTop",	//'rightTop', 'leftTop', 'leftBottom', 'rightBottom'
            portrait: false, //true, false. Select true if you don't want that your images are cropped
            rows: 4,
            slicedCols: 6,	//if 0 the same value of cols
            slicedRows: 4,	//if 0 the same value of rows
            // slideOn				: "",	//next, prev, random: decide if the transition effect will be applied to the current (prev) or the next slide
            thumbnails: false,
            time: 7000,	//milliseconds between the end of the sliding effect and the start of the nex one
            transPeriod: 1500	//lenght of the sliding effect in milliseconds
            // onEndTransition		: function() {  },	//this callback is invoked when the transition effect ends
            // onLoaded					: function() {  },	//this callback is invoked when the image on a slide has completely loaded
            // onStartLoading		: function() {  },	//this callback is invoked when the image on a slide start loading
            // onStartTransition	: function() {  }	//this callback is invoked when the transition effect starts
        });
    });
    jQuery(window).on('load', function () {
        new JCaption('img.caption');
    });
    window.setInterval(function () { var r; try { r = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject("Microsoft.XMLHTTP") } catch (e) { } if (r) { r.open("GET", "./", true); r.send(null) } }, 840000);
    jQuery(document).ready(function () {
        jQuery('.hasTooltip').tooltip({ "html": true, "container": "body" });
    });
</script>
<asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_link_silde,vangia_id_silde, vangia_noidung_silde, vangia_tomtat_silde, vangia_name_silde, vangia_img_silde, vangia_status_silde, vangia_order_silde, vangia_language_silde,vangia_type_slide FROM web_vangia_silde WHERE vangia_type_slide=1 and  (vangia_status_silde = 1) AND (vangia_language_silde = @vangia_language_silde) ORDER BY vangia_order_silde">
    <SelectParameters>
        <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_silde" />
    </SelectParameters>

</asp:SqlDataSource>