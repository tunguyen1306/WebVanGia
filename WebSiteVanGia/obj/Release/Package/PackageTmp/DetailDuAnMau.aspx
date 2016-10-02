<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DetailDuAnMau.aspx.cs" Inherits="WebSiteVanGia.DetailDuAnMau" %>

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
  

    <div id="content-row" class="brg">
        <div class="row-container">
            <div class="container">
                <div class="content-inner row">

                    <div id="component" class="span12">
                        <main role="main">
                            
   


                             <asp:Repeater ID="rptShow" runat="server" DataSourceID="dsProject">
                                <ItemTemplate>
                                   
                                
                                   
                                    <article class="page-item page-item__gallery page-item__">
                                        <header class="item_header">
                                            <h2 class="item_title"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span>
                                                <span class="item_title_part1 item_title_part_even item_title_part_first_half"></span>
                                                <span class="item_title_part2 item_title_part_odd item_title_part_second_half"><%#Eval("vangia_name_products") %></span>

                                            </h2>

                                        </header>
                                        <!-- Article Image -->
                                        <div class="page-gallery_img">
                                            <figure class="item_img img-full img-full__left">
                                                 <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 960px; height: 480px; overflow: hidden; visibility: hidden; ">
        <!-- Loading Screen -->
        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 240px; width: 720px; height: 480px; overflow: hidden;">
                   <div data-p="150.00" style="display: none;">
              <img data-u="image" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_products").ToString().Split('_')[0] +"/"+Eval("vangia_img_products")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_products").ToString().Split('_')[0] +"/"+Eval("vangia_img_products")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_products").ToString().Split('_')[0] +"/"+Eval("vangia_img_products")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_products").ToString().Split('_')[0] +"/"+Eval("vangia_img_products")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img_products").ToString().Split('_')[0] +"/"+Eval("vangia_img_products")): "img/09.png" %>" />
               <img data-u="thumb" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_products").ToString().Split('_')[0] +"/"+Eval("vangia_img_products")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_products").ToString().Split('_')[0] +"/"+Eval("vangia_img_products")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_products").ToString().Split('_')[0] +"/"+Eval("vangia_img_products")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_products").ToString().Split('_')[0] +"/"+Eval("vangia_img_products")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img_products").ToString().Split('_')[0] +"/"+Eval("vangia_img_products")): "img/09.png" %>" />
             </div>
           
            <div data-p="150.00" style="display: none;">
              <img data-u="image" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img1_products").ToString().Split('_')[0] +"/"+Eval("vangia_img1_products")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img1_products").ToString().Split('_')[0] +"/"+Eval("vangia_img1_products")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img1_products").ToString().Split('_')[0] +"/"+Eval("vangia_img1_products")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img1_products").ToString().Split('_')[0] +"/"+Eval("vangia_img1_products")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img1_products").ToString().Split('_')[0] +"/"+Eval("vangia_img1_products")): "img/09.png" %>" />
               <img data-u="thumb" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img1_products").ToString().Split('_')[0] +"/"+Eval("vangia_img1_products")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img1_products").ToString().Split('_')[0] +"/"+Eval("vangia_img1_products")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img1_products").ToString().Split('_')[0] +"/"+Eval("vangia_img1_products")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img1_products").ToString().Split('_')[0] +"/"+Eval("vangia_img1_products")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img1_products").ToString().Split('_')[0] +"/"+Eval("vangia_img1_products")): "img/09.png" %>" />
             </div>
             <div data-p="150.00" style="display: none;">
              <img data-u="image" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img2_products").ToString().Split('_')[0] +"/"+Eval("vangia_img2_products")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img2_products").ToString().Split('_')[0] +"/"+Eval("vangia_img2_products")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img2_products").ToString().Split('_')[0] +"/"+Eval("vangia_img2_products")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img2_products").ToString().Split('_')[0] +"/"+Eval("vangia_img2_products")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img2_products").ToString().Split('_')[0] +"/"+Eval("vangia_img2_products")): "img/09.png" %>" />
               <img data-u="thumb" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img2_products").ToString().Split('_')[0] +"/"+Eval("vangia_img2_products")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img2_products").ToString().Split('_')[0] +"/"+Eval("vangia_img2_products")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img2_products").ToString().Split('_')[0] +"/"+Eval("vangia_img2_products")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img2_products").ToString().Split('_')[0] +"/"+Eval("vangia_img2_products")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img2_products").ToString().Split('_')[0] +"/"+Eval("vangia_img2_products")): "img/09.png" %>" />
             </div>
<div data-p="150.00" style="display: none;">
              <img data-u="image" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img3_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img3_products_vg")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img3_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img3_products_vg")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img3_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img3_products_vg")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img3_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img3_products_vg")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img3_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img3_products_vg")): "img/09.png" %>" />
               <img data-u="thumb" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img3_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img3_products_vg")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img3_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img3_products_vg")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img3_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img3_products_vg")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img3_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img3_products_vg")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img3_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img3_products_vg")): "img/09.png" %>" />
             </div>
           <div data-p="150.00" style="display: none;">
              <img data-u="image" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img4_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img4_products_vg")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img4_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img4_products_vg")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img4_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img4_products_vg")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img4_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img4_products_vg")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img4_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img4_products_vg")): "img/09.png" %>" />
               <img data-u="thumb" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img4_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img4_products_vg")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img4_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img4_products_vg")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img4_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img4_products_vg")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img4_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img4_products_vg")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img4_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img4_products_vg")): "img/09.png" %>" />
             </div>
            <div data-p="150.00" style="display: none;">
              <img data-u="image" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img5_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img5_products_vg")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img5_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img5_products_vg")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img5_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img5_products_vg")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img5_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img5_products_vg")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img5_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img5_products_vg")): "img/09.png" %>" />
               <img data-u="thumb" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img5_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img5_products_vg")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img5_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img5_products_vg")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img5_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img5_products_vg")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img5_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img5_products_vg")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img5_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img5_products_vg")): "img/09.png" %>" />
             </div>
             <div data-p="150.00" style="display: none;">
              <img data-u="image" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img6_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img6_products_vg")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img6_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img6_products_vg")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img6_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img6_products_vg")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img6_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img6_products_vg")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img6_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img6_products_vg")): "img/09.png" %>" />
               <img data-u="thumb" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img6_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img6_products_vg")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img6_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img6_products_vg")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img6_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img6_products_vg")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img6_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img6_products_vg")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img6_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img6_products_vg")): "img/09.png" %>" />
             </div>
           <div data-p="150.00" style="display: none;">
              <img data-u="image" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img7_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img7_products_vg")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img7_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img7_products_vg")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img7_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img7_products_vg")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img7_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img7_products_vg")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img7_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img7_products_vg")): "img/09.png" %>" />
               <img data-u="thumb" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img7_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img7_products_vg")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img7_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img7_products_vg")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img7_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img7_products_vg")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img7_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img7_products_vg")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img7_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img7_products_vg")): "img/09.png" %>" />
             </div>
            <div data-p="150.00" style="display: none;">
              <img data-u="image" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img8_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img8_products_vg")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img8_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img8_products_vg")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img8_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img8_products_vg")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img8_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img8_products_vg")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img8_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img8_products_vg")): "img/09.png" %>" />
               <img data-u="thumb" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img8_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img8_products_vg")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img8_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img8_products_vg")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img8_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img8_products_vg")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img8_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img8_products_vg")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img8_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img8_products_vg")): "img/09.png" %>" />
             </div>
                                   <div data-p="150.00" style="display: none;">
              <img data-u="image" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img9_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img9_products_vg")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img9_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img9_products_vg")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img9_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img9_products_vg")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img9_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img9_products_vg")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img9_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img9_products_vg")): "img/09.png" %>" />
               <img data-u="thumb" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img9_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img9_products_vg")).Contains(".JPG") || (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img9_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img9_products_vg")).Contains(".jpg") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img9_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img9_products_vg")).Contains(".png") ||  (ConfigurationManager.AppSettings["domain"]+Eval("vangia_img9_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img9_products_vg")).Contains(".PNG") ? (ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img9_products_vg").ToString().Split('_')[0] +"/"+Eval("vangia_img9_products_vg")): "img/09.png" %>" />
             </div>
             <div data-p="150.00" style="display: none;">
              <img data-u="image" src="img/09.png" />
               <img data-u="thumb" src="img/09.png" />
             </div>
          
          <div data-p="150.00" style="display: none;">
               <img data-u="image" src="img/09.png" />
               <img data-u="thumb" src="img/09.png" />

          </div>
             
          
           
        </div>
        <!-- Thumbnail Navigator -->
        <div data-u="thumbnavigator" class="jssort01-99-66" style="position:absolute;left:0px;top:0px;width:240px;height:480px;" data-autocenter="2">
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
        <span data-u="arrowleft" class="jssora05l" style="top:158px;left:248px;width:40px;height:40px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora05r" style="top:158px;right:8px;width:40px;height:40px;" data-autocenter="2"></span>
    </div>
                                            </figure>
                                        </div>
                                       

                                       <div class="addthis_sharing_toolbox"><div id="fb-root"></div></div>
                                            <ul class="portfolio-meta-list">

                                                <li><strong class="portfolio-meta-key" style="white-space:pre-line;font-size: 15px;"></strong><%#Eval("vangia_noidung_products") %></li> 
                                                <li>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.5&appId=1706744036228892";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
                                                    <div class="fb-like" data-href='http://vangia.net/DeatilProducts.aspx?id=<%#Eval("vangia_id_products") %>' data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>

                                                </li>
                                            </ul>
                                         

                                           
                                    </article>
                                </ItemTemplate>
                            </asp:Repeater>
                        
                        </main>
                  
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM web_vangia_products where vangia_status_products =1 and vangia_language_products=@vangia_language_products and vangia_id_products=@vangia_id_products
 order by vangia_order_products">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_products" />
            <asp:QueryStringParameter DefaultValue="0" Name="vangia_id_products" QueryStringField="id" />
        </SelectParameters>

    </asp:SqlDataSource>
    
      <script type="text/javascript" src="js/jssor.slider.min.js"></script>
    <!-- use jssor.slider.debug.js instead for debug -->
    <script>
        jssor_1_slider_init = function() {
            
            var jssor_1_SlideshowTransitions = [
              {$Duration:1200,$Zoom:1,$Easing:{$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad},$Opacity:2},
              {$Duration:1000,$Zoom:11,$SlideOut:true,$Easing:{$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,$Zoom:1,$Rotate:1,$During:{$Zoom:[0.2,0.8],$Rotate:[0.2,0.8]},$Easing:{$Zoom:$Jease$.$Swing,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$Swing},$Opacity:2,$Round:{$Rotate:0.5}},
              {$Duration:1000,$Zoom:11,$Rotate:1,$SlideOut:true,$Easing:{$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InExpo},$Opacity:2,$Round:{$Rotate:0.8}},
              {$Duration:1200,x:0.5,$Cols:2,$Zoom:1,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,x:4,$Cols:2,$Zoom:11,$SlideOut:true,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,x:0.6,$Zoom:1,$Rotate:1,$During:{$Left:[0.2,0.8],$Zoom:[0.2,0.8],$Rotate:[0.2,0.8]},$Easing:{$Left:$Jease$.$Swing,$Zoom:$Jease$.$Swing,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$Swing},$Opacity:2,$Round:{$Rotate:0.5}},
              {$Duration:1000,x:-4,$Zoom:11,$Rotate:1,$SlideOut:true,$Easing:{$Left:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InExpo},$Opacity:2,$Round:{$Rotate:0.8}},
              {$Duration:1200,x:-0.6,$Zoom:1,$Rotate:1,$During:{$Left:[0.2,0.8],$Zoom:[0.2,0.8],$Rotate:[0.2,0.8]},$Easing:{$Left:$Jease$.$Swing,$Zoom:$Jease$.$Swing,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$Swing},$Opacity:2,$Round:{$Rotate:0.5}},
              {$Duration:1000,x:4,$Zoom:11,$Rotate:1,$SlideOut:true,$Easing:{$Left:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InExpo},$Opacity:2,$Round:{$Rotate:0.8}},
              {$Duration:1200,x:0.5,y:0.3,$Cols:2,$Zoom:1,$Rotate:1,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad,$Rotate:$Jease$.$InCubic},$Opacity:2,$Round:{$Rotate:0.7}},
              {$Duration:1000,x:0.5,y:0.3,$Cols:2,$Zoom:1,$Rotate:1,$SlideOut:true,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InExpo,$Top:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InExpo},$Opacity:2,$Round:{$Rotate:0.7}},
              {$Duration:1200,x:-4,y:2,$Rows:2,$Zoom:11,$Rotate:1,$Assembly:2049,$ChessMode:{$Row:28},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad,$Rotate:$Jease$.$InCubic},$Opacity:2,$Round:{$Rotate:0.7}},
              {$Duration:1200,x:1,y:2,$Cols:2,$Zoom:11,$Rotate:1,$Assembly:2049,$ChessMode:{$Column:19},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad,$Rotate:$Jease$.$InCubic},$Opacity:2,$Round:{$Rotate:0.8}}
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
              $ThumbnailNavigatorOptions: {
                $Class: $JssorThumbnailNavigator$,
                $Rows: 2,
                $Cols: 6,
                $SpacingX: 14,
                $SpacingY: 12,
                $Orientation: 2,
                $Align: 156
              }
            };
            
            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
            
            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 960);
                    refSize = Math.max(refSize, 300);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            //responsive code end
        };
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

        /* jssor slider thumbnail navigator skin 01 css */
        /*
        .jssort01-99-66 .p            (normal)
        .jssort01-99-66 .p:hover      (normal mouseover)
        .jssort01-99-66 .p.pav        (active)
        .jssort01-99-66 .p.pdn        (mousedown)
        */
        .jssort01-99-66 .p {
            position: absolute;
            top: 0;
            left: 0;
            width: 99px;
            height: 66px;
        }
        
        .jssort01-99-66 .t {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border: none;
        }
        
        .jssort01-99-66 .w {
            position: absolute;
            top: 0px;
            left: 0px;
            width: 100%;
            height: 100%;
        }
        
        .jssort01-99-66 .c {
            position: absolute;
            top: 0px;
            left: 0px;
            width: 95px;
            height: 62px;
            border: #000 2px solid;
            box-sizing: content-box;
            background: url('img/t01.png') -800px -800px no-repeat;
            _background: none;
        }
        
        .jssort01-99-66 .pav .c {
            top: 2px;
            _top: 0px;
            left: 2px;
            _left: 0px;
            width: 95px;
            height: 62px;
            border: #000 0px solid;
            _border: #fff 2px solid;
            background-position: 50% 50%;
        }
        
        .jssort01-99-66 .p:hover .c {
            top: 0px;
            left: 0px;
            width: 97px;
            height: 64px;
            border: #fff 1px solid;
            background-position: 50% 50%;
        }
        
        .jssort01-99-66 .p.pdn .c {
            background-position: 50% 50%;
            width: 95px;
            height: 62px;
            border: #000 2px solid;
        }
        
        * html .jssort01-99-66 .c, * html .jssort01-99-66 .pdn .c, * html .jssort01-99-66 .pav .c {
            /* ie quirks mode adjust */
            width /**/: 99px;
            height /**/: 66px;
        }
        
    </style>


    <script>
        jssor_1_slider_init();
    </script>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
