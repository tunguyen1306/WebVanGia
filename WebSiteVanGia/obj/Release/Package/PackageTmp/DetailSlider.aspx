<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DetailSlider.aspx.cs" Inherits="WebSiteVanGia.DetailSlider" %>

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
                                                 <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_9_SlideshowTransitions = [
              {$Duration:1200,x:0.3,$During:{$Left:[0.3,0.7]},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,x:-0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,x:-0.3,$During:{$Left:[0.3,0.7]},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,x:0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,y:0.3,$During:{$Top:[0.3,0.7]},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,y:-0.3,$SlideOut:true,$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,y:-0.3,$During:{$Top:[0.3,0.7]},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,y:0.3,$SlideOut:true,$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,x:0.3,$Cols:2,$During:{$Left:[0.3,0.7]},$ChessMode:{$Column:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,x:0.3,$Cols:2,$SlideOut:true,$ChessMode:{$Column:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,y:0.3,$Rows:2,$During:{$Top:[0.3,0.7]},$ChessMode:{$Row:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,y:0.3,$Rows:2,$SlideOut:true,$ChessMode:{$Row:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,y:0.3,$Cols:2,$During:{$Top:[0.3,0.7]},$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,y:-0.3,$Cols:2,$SlideOut:true,$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,x:0.3,$Rows:2,$During:{$Left:[0.3,0.7]},$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,x:-0.3,$Rows:2,$SlideOut:true,$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,x:0.3,y:0.3,$Cols:2,$Rows:2,$During:{$Left:[0.3,0.7],$Top:[0.3,0.7]},$ChessMode:{$Column:3,$Row:12},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,x:0.3,y:0.3,$Cols:2,$Rows:2,$During:{$Left:[0.3,0.7],$Top:[0.3,0.7]},$SlideOut:true,$ChessMode:{$Column:3,$Row:12},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,$Delay:20,$Clip:3,$Assembly:260,$Easing:{$Clip:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,$Delay:20,$Clip:3,$SlideOut:true,$Assembly:260,$Easing:{$Clip:$Jease$.$OutCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,$Delay:20,$Clip:12,$Assembly:260,$Easing:{$Clip:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,$Delay:20,$Clip:12,$SlideOut:true,$Assembly:260,$Easing:{$Clip:$Jease$.$OutCubic,$Opacity:$Jease$.$Linear},$Opacity:2}
            ];

            var jssor_9_options = {
              $AutoPlay: true,
              $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: jssor_9_SlideshowTransitions,
                $TransitionsOrder: 1
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $ThumbnailNavigatorOptions: {
                $Class: $JssorThumbnailNavigator$,
                $Cols: 10,
                $SpacingX: 8,
                $SpacingY: 8,
                $Align: 360
              }
            };

            var jssor_9_slider = new $JssorSlider$("jssor_9", jssor_9_options);

            /*responsive code begin*/
            /*remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_9_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 800);
                    jssor_9_slider.$ScaleWidth(refSize);
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
        .jssora05l { background-position: -10px -40px; }
        .jssora05r { background-position: -70px -40px; }
        .jssora05l:hover { background-position: -130px -40px; }
        .jssora05r:hover { background-position: -190px -40px; }
        .jssora05l.jssora05ldn { background-position: -250px -40px; }
        .jssora05r.jssora05rdn { background-position: -310px -40px; }
        .jssora05l.jssora05lds { background-position: -10px -40px; opacity: .3; pointer-events: none; }
        .jssora05r.jssora05rds { background-position: -70px -40px; opacity: .3; pointer-events: none; }
        /* jssor slider thumbnail navigator skin 01 css *//*.jssort01 .p            (normal).jssort01 .p:hover      (normal mouseover).jssort01 .p.pav        (active).jssort01 .p.pdn        (mousedown)*/.jssort01 .p {    position: absolute;    top: 0;    left: 0;    width: 72px;    height: 72px;}.jssort01 .t {    position: absolute;    top: 0;    left: 0;    width: 100%;    height: 100%;    border: none;}.jssort01 .w {    position: absolute;    top: 0px;    left: 0px;    width: 100%;    height: 100%;}.jssort01 .c {    position: absolute;    top: 0px;    left: 0px;    width: 68px;    height: 68px;    border: #000 2px solid;    box-sizing: content-box;    background: url('img/t01.png') -800px -800px no-repeat;    _background: none;}.jssort01 .pav .c {    top: 2px;    _top: 0px;    left: 2px;    _left: 0px;    width: 68px;    height: 68px;    border: #000 0px solid;    _border: #fff 2px solid;    background-position: 50% 50%;}.jssort01 .p:hover .c {    top: 0px;    left: 0px;    width: 70px;    height: 70px;    border: #fff 1px solid;    background-position: 50% 50%;}.jssort01 .p.pdn .c {    background-position: 50% 50%;    width: 68px;    height: 68px;    border: #000 2px solid;}* html .jssort01 .c, * html .jssort01 .pdn .c, * html .jssort01 .pav .c {    /* ie quirks mode adjust */    width /**/: 72px;    height /**/: 72px;}
    </style>
    <div id="jssor_9" style="position:relative;margin:0 auto;top:0px;left:0px;width:800px;height:456px;overflow:hidden;visibility:hidden;background-color:#24262e;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:800px;height:356px;overflow:hidden;">
           
            <asp:Repeater ID="rpPicture" runat="server">
                                                            <ItemTemplate>
                                                                <div>
                                                                <img data-u="image" src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath").ToString().Replace("_1","_3")%>" />
                                                                <img data-u="thumb" src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath").ToString().Replace("_1","_2")%>" />
                                                                 
                                                                    </div>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
        </div>
        <!-- Thumbnail Navigator -->
        <div data-u="thumbnavigator" class="jssort01" style="position:absolute;left:0px;bottom:0px;width:800px;height:100px;" data-autocenter="1">
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
        <span data-u="arrowleft" class="jssora05l" style="top:158px;left:8px;width:40px;height:40px;"></span>
        <span data-u="arrowright" class="jssora05r" style="top:158px;right:8px;width:40px;height:40px;"></span>
    </div>
    <!-- #endregion Jssor Slider End -->
                                               

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
