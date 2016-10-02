<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctr_mainbottomrow.ascx.cs" Inherits="WebSiteVanGia.ctr.ctr_mainbottomrow" %>
<div id="mainbottom-row">
    <div class="row-container visible-first visible">
        <div class="container">
            <div class="row" id="mainbottom">
                <div class="moduletable   span12">
                    <div class="module_container">
                        <header>
                            <h2 class="moduleTitle visible-first visible"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"> <span class="item_title_part1 item_title_part_even item_title_part_first_half ">
                                <span class="item_title_part2 item_title_part_odd item_title_part_second_half "><%--duanmau--%></span> </span></span></h2>
                        </header>
                        <div id="module_138" class="mod-newsflash-adv blog mod-newsflash-adv__ cols-3">
                            <%--<div class="pretext">
                                
                            </div>--%>
                            <div class="row-fluid">

                                 
                              
                               
                               <article class="span4 item item_num1 item__module">

                                    <figure class="item_img img-intro img-intro__none">
                                        <img  style="width:370px ; height:196px !important;" class="" alt="" src="/img/chinhsach.jpg">
                                    </figure>
                                    <div class="item_content">
                                       <div class="mod-newsflash-adv_custom-link">
                                <a href="/DetailVanGia.aspx" class="btn btn-info">Chính sách Công Ty</a>
                            </div>
                                    
                                       

                                    </div>
                                   
                                    <div class="clearfix"></div>
                                </article>
                               
                                  <article class="span4 item item_num1 item__module">

                                    <figure class="item_img img-intro img-intro__none">
                                        <img  style="width:370px ; height:196px !important;" class="" alt="" src="/img/tuyendung.jpg">
                                    </figure>
                                    <div class="item_content">
                                       <div class="mod-newsflash-adv_custom-link">
                                <a href="/TuyenDung.aspx" class="btn btn-info">Thông Tin Tuyển Dụng</a>
                            </div>
                                    
                                       

                                    </div>
                                   
                                    <div class="clearfix"></div>
                                </article>
                                <article class="span4 item item_num1 item__module">

                                    <figure class="item_img img-intro img-intro__none">
                                        
                                        <img  style="width:370px ; height:196px !important;" class="" alt="" src="/img/thongbao.jpg" />
                                    </figure>
                                    <div class="item_content">
                                       <div class="mod-newsflash-adv_custom-link">
                                <a href="/NewEvent.aspx" class="btn btn-info">THÔNG BÁO</a>
                            </div>
                                    
                                       

                                    </div>
                                   
                                    <div class="clearfix"></div>
                                </article>
                                
                            </div>
                            <div class="clearfix"></div>
                          <%--  <div class="mod-newsflash-adv_custom-link">
                                <a href="/AllDuAnMau.aspx" class="btn btn-info readmore rm"></a>
                            </div>--%>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT top 3 vangia_img_duanmau,vangia_tomtat_duanmau, vangia_name_duanmau, vangia_id_duanmau, vangia_time_duanmau, vangia_img1_duanmau, vangia_img2_duanmau, vangia_img3_duanmau, vangia_status_duanmau, vangia_order_duanmau, vangia_language, vangia_content_duanmau FROM web_vangia_duanmau
where vangia_language=@vangia_language and vangia_status_duanmau=1 order by vangia_order_duanmau">
    <SelectParameters>
        <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language" />
    </SelectParameters>

</asp:SqlDataSource>

