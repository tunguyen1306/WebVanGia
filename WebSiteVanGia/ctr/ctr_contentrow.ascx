<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctr_contentrow.ascx.cs" Inherits="WebSiteVanGia.ctr.ctr_contentrow" %>
<div id="content-row">
    <div class="row-container">
        <div class="container">
            <div class="content-inner row">
                <div id="component" class="span12">
                    <main role="main">
<section class="page-category page-category__">
</section>
 
<div id="content-bottom-row" class="row">
<div id="content-bottom">
<div class="moduletable featured  span12">
 <div class="module_container">
     <header>
     <h2 class="moduleTitle ">
     <span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first">
          <span class="item_title_part1 item_title_part_even item_title_part_second_half content-row"></span> 

     </span>

                                       </h2>

                               </header>
     <div class="mod-newsflash-adv custom1 mod-newsflash-adv__featured cols-6" id="module_142">
<div class="pretext">
</div>
<div class="row-fluid">
    <asp:Repeater ID="rpt_project" DataSourceID="dsProject" runat="server" >
        <ItemTemplate>
            <article class="span4 item item_num0 item__module  ">
 
<figure class="item_img img-intro img-intro__none">
<a href="/DetailProject.aspx?id=<%#Eval("vangia_id_project") %>">
<span class="lazy_preloader"><img src="img/blank.gif" alt="" style="width:170px ; height:170px !important;" class="lazy" data-src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_project").ToString().Split('_')[0]+"/"+Eval("vangia_img_project") %>"><span class="lazy_preloader_inner" style="width: 170px; padding-top: 100%;"></span></span>
</a>
</figure>
<div class="item_content">
 
<time datetime="2015-02-28 11:15" class="item_published">
2 Months Ago </time>
 
<div class="item_introtext">
<p style="font-weight:bold;font-size:15px;"><%#Eval("vangia_name_project") %></p>
</div>
 
<%--<a class="btn btn-info readmore rm" href="/DetailProject.aspx?id=<%#Eval("vangia_id_project") %>"><span>Read more</span></a>--%>

</div>
<div class="clearfix"></div> </article>
  

        </ItemTemplate>
    </asp:Repeater>
   

     <asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT top 6 vangia_id_project, vangia_name_project, vangia_img_project, vangia_img1_project, vangia_img2_project, vangia_img3_project, vangia_time_project, vangia_content_project, vangia_status_project, vangia_order_project, vangia_language_project FROM web_vangia_project WHERE (vangia_status_project = 1) AND (vangia_language_project = @vangia_language_project ) order by vangia_order_project ">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
        </SelectParameters>
        
    </asp:SqlDataSource>

</div>
<div class="clearfix"></div>
<div class="mod-newsflash-adv_custom-link">
<a class="btn btn-info cacduan" href="/allProject.aspx"> </a>





</div>
</div>
</div>
</main>
                </div>
            </div>
        </div>
    </div>
</div>


