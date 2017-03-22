﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DetailSlider.aspx.cs" Inherits="WebSiteVanGia.DetailSlider" %>

<%@ Register Src="~/ctr/ctr_post_fb_project.ascx" TagPrefix="uc1" TagName="ctr_post_fb_project" %>
<%@ Register Src="~/ctr/ctr_toprow.ascx" TagPrefix="uc1" TagName="ctr_toprow" %>
<%@ Register Src="~/ctr/ctr_footer.ascx" TagPrefix="uc1" TagName="ctr_footer" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ct_post_fb" runat="server">
    <uc1:ctr_post_fb_project runat="server" ID="ctr_post_fb_project" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_TopRow" runat="server">
    <uc1:ctr_toprow runat="server" ID="ctr_toprow" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_HeaderRow" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_ShowcaseRow" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_MaintopRow" runat="server">


    <div id="content-row" class="brg">
        <div class="row-container">
            <div class="container">
                <div class="content-inner row">

                    <div id="component" class="span12">
                        <main role="main">

                            <asp:Repeater ID="rptShow" runat="server" DataSourceID="dsProject" OnItemDataBound="rptShow_ItemDataBound">
                                <ItemTemplate>


                                    <article class="page-item page-item__gallery page-item__">
                                        <header class="item_header">
                                            <h2 class="item_title"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span>
                                                <span class="item_title_part1 item_title_part_even item_title_part_first_half"></span>
                                                <span class="item_title_part2 item_title_part_odd item_title_part_second_half"><%#Eval("vangia_name_project") %></span>

                                            </h2>

                                        </header>
                                        <!-- Article Image -->
                                        <div class="page-gallery_img">
                                            <figure class="item_img img-full img-full__left">

                                                <div id="jssor_7" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 600px; height: 300px; overflow: hidden; visibility: hidden;">
                                                    <!-- Loading Screen -->
                                                    <div data-u="loading" style="position: absolute; top: 0px; left: 0px; background-color: rgba(0,0,0,0.7);">
                                                        <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                                        <div style="position: absolute; display: block; background: url('img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                                    </div>
                                                    <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 600px; height: 300px; overflow: hidden;">
                                                        <asp:Repeater ID="rpPicture" runat="server">
                                                            <ItemTemplate>
                                                                <img data-u="image" src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath").ToString().Replace("_1","_3")%>" />
                                                                <img data-u="thumb" src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath").ToString().Replace("_1","_2")%>" />

                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </div>
                                                    <!-- Thumbnail Navigator -->
                                                    <div data-u="thumbnavigator" class="jssort03" style="position: absolute; left: 0px; bottom: 0px; width: 600px; height: 60px;" data-autocenter="1">
                                                        <div style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; background-color: #000; filter: alpha(opacity=30.0); opacity: 0.3;"></div>
                                                        <!-- Thumbnail Item Skin Begin -->
                                                        <div data-u="slides" style="cursor: default;">
                                                            <div data-u="prototype" class="p">
                                                                <div class="w">
                                                                    <div data-u="thumbnailtemplate" class="t"></div>
                                                                </div>
                                                                <div class="c"></div>
                                                            </div>
                                                        </div>
                                                        <!-- Thumbnail Item Skin End -->
                                                    </div>
                                                    <!-- Arrow Navigator -->
                                                    <span data-u="arrowleft" class="jssora02l" style="top: 0px; left: 8px; width: 55px; height: 55px;" data-autocenter="2"></span>
                                                    <span data-u="arrowright" class="jssora02r" style="top: 0px; right: 8px; width: 55px; height: 55px;" data-autocenter="2"></span>
                                                </div>

                                            </figure>
                                        </div>


                                        <ul class="portfolio-meta-list">

                                            <li><strong class="portfolio-meta-key" style="white-space: pre-line; font-size: 15px;"><%#Eval("vangia_content_project") %></strong></li>
                                            <li>
                                                <div class="addthis_sharing_toolbox"></div>
                                            </li>
                                        </ul>



                                        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-55e053ac02ebd38e" async="async"></script>

                                    </article>
                                </ItemTemplate>
                            </asp:Repeater>

                            <script src="js/jssor.slider-22.2.16.min.js"></script>
                            <script type="text/javascript">
                                jssor_7_slider_init = function () {

                                    var jssor_7_options = {
                                        $AutoPlay: true,
                                        $ArrowNavigatorOptions: {
                                            $Class: $JssorArrowNavigator$
                                        },
                                        $ThumbnailNavigatorOptions: {
                                            $Class: $JssorThumbnailNavigator$,
                                            $Cols: 9,
                                            $SpacingX: 3,
                                            $SpacingY: 3,
                                            $Align: 260
                                        }
                                    };

                                    var jssor_7_slider = new $JssorSlider$("jssor_7", jssor_7_options);

                                    /*responsive code begin*/
                                    /*remove responsive code if you don't want the slider scales while window resizing*/
                                    function ScaleSlider() {
                                        var refSize = jssor_7_slider.$Elmt.parentNode.clientWidth;
                                        if (refSize) {
                                            refSize = Math.min(refSize, 600);
                                            jssor_7_slider.$ScaleWidth(refSize);
                                        }
                                        else {
                                            window.setTimeout(ScaleSlider, 30);
                                        }
                                    }
                                    ScaleSlider();
                                    $Jssor$.$AddEvent(window, "load", ScaleSlider);
                                    $Jssor$.$AddEvent(window, "resize", ScaleSlider);
                                    $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
                                    /*responsive code end*/
                                };
                            </script>
                            <style>
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

                                .jssora02l {
                                    background-position: -3px -33px;
                                }

                                .jssora02r {
                                    background-position: -63px -33px;
                                }

                                .jssora02l:hover {
                                    background-position: -123px -33px;
                                }

                                .jssora02r:hover {
                                    background-position: -183px -33px;
                                }

                                .jssora02l.jssora02ldn {
                                    background-position: -3px -33px;
                                }

                                .jssora02r.jssora02rdn {
                                    background-position: -63px -33px;
                                }

                                .jssora02l.jssora02lds {
                                    background-position: -3px -33px;
                                    opacity: .3;
                                    pointer-events: none;
                                }

                                .jssora02r.jssora02rds {
                                    background-position: -63px -33px;
                                    opacity: .3;
                                    pointer-events: none;
                                }
                                /* jssor slider thumbnail navigator skin 03 css */ /*.jssort03 .p            (normal).jssort03 .p:hover      (normal mouseover).jssort03 .pav          (active).jssort03 .pdn          (mousedown)*/

                                .jssort03 .p {
                                    position: absolute;
                                    top: 0;
                                    left: 0;
                                    width: 62px;
                                    height: 32px;
                                }

                                .jssort03 .t {
                                    position: absolute;
                                    top: 0;
                                    left: 0;
                                    width: 100%;
                                    height: 100%;
                                    border: none;
                                }

                                .jssort03 .w, .jssort03 .pav:hover .w {
                                    position: absolute;
                                    width: 60px;
                                    height: 30px;
                                    border: white 1px dashed;
                                    box-sizing: content-box;
                                }

                                .jssort03 .pdn .w, .jssort03 .pav .w {
                                    border-style: solid;
                                }

                                .jssort03 .c {
                                    position: absolute;
                                    top: 0;
                                    left: 0;
                                    width: 62px;
                                    height: 32px;
                                    background-color: #000;   fil
                                     alpha(opacity=4 );    oacit
                                    45;    transition: pacity 6s; 
                                    moz-transition  opacit .6s
                                ;

                                    -webkt-transiion  opacity 6s;   o
                                    nsition  opacity .6s;}.js
                                    03 .p:ho er
                                 
                                .c, .jssot03  .pav .c {
                                    filter: alp a(opa
                                    =0);    opacity: 0;}.j
                                    t03 .p:hover .c {   tran
                                    on: none;    - oz-tr
                                a

                                nitio:  none;   - e
                                    -tran ition  none
                                     -o-tr nsiti n:  no
                                n

                                l .jssort03 .w {    width /**/: 62px;    height /**/: 32px;}
                            </style>

                            <script type="text/javascript">jssor_7_slider_init();</script>
                            <!-- #endregion Jssor Slider End -->
                        </main>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="Select * FROM web_vangia_project where vangia_status_project =1  and vangia_id_project=@vangia_id_project
 order by vangia_id_project">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="0" Name="vangia_id_project" QueryStringField="id" />
        </SelectParameters>

    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsPicture" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand=" select * from tblSysPicture  where advert_id=@vangia_id_project">
        <SelectParameters>

            <asp:QueryStringParameter DefaultValue="0" Name="vangia_id_project" QueryStringField="id" />
        </SelectParameters>

    </asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_ContentRow" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentFooter" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
