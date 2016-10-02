<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DetailVanGia.aspx.cs" Inherits="WebSiteVanGia.DetailVanGia" %>

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
    <div id="video-row1" style="padding-top: 10px;">
        <div class="row-container visible visible-first">
            <div class="container">
                <div class="row" id="bottom">
                    <div class="moduletable testimonials  span12">
                        <div class="module_container">
                            <header>
                                <h2 class="moduleTitle visible visible-first">
                                    <span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first chinhsach" style="font-size: 47px !important; color: #008ddb;"></span></h2>

                            </header>
                            <div id="module_105" class="mod-newsflash-adv mod-newsflash-adv__testimonials cols-3">
                                <div class="row-fluid" >
                                    <article id="item_49" class="span4 item item_num0 item__module visible visible-first" style="width: 100%;">
                                        <!-- Intro Image -->
                                        <figure class="item_img img-intro img-intro__left">
                                            <img width="30" height="30" class="" alt="" src="img/arrow-right.png" />
                                        </figure>
                                        <div class="item_content">
                                            <!-- Item title -->
                                            <!-- Introtext -->
                                            <div class="item_introtext">
                                                <p class="chinhsachd cusfontChinhSach"></p>

                                            </div>
                                            <!-- Read More link -->
                                        </div>
                                        <div class="clearfix"></div>
                                        <figure class="item_img img-intro img-intro__left">
                                            <img width="30" height="30" class="" alt="" src="img/arrow-right.png" />
                                        </figure>
                                        <div class="item_content">
                                            <!-- Item title -->
                                            <!-- Introtext -->
                                            <div class="item_introtext">
                                                <p class="chinhsachd1 cusfontChinhSach"></p>

                                            </div>
                                            <!-- Read More link -->
                                        </div>
                                        <div class="clearfix"></div>
                                        <figure class="item_img img-intro img-intro__left">
                                            <img width="30" height="30" class="" alt="" src="img/arrow-right.png" />
                                        </figure>
                                        <div class="item_content">
                                            <!-- Item title -->
                                            <!-- Introtext -->
                                            <div class="item_introtext">
                                                <p class="chinhsachd3 cusfontChinhSach"></p>

                                            </div>
                                            <!-- Read More link -->
                                        </div>
                                        <div class="clearfix"></div>
                                        <figure class="item_img img-intro img-intro__left">
                                            <img width="30" height="30" class="" alt="" src="img/arrow-right.png" />
                                        </figure>
                                        <div class="item_content">
                                            <!-- Item title -->
                                            <!-- Introtext -->
                                            <div class="item_introtext">
                                                <p class="chinhsachd4 cusfontChinhSach"></p>

                                            </div>
                                            <!-- Read More link -->
                                        </div>
                                        <div class="clearfix"></div>
                                        <figure class="item_img img-intro img-intro__left">
                                            <img width="30" height="30" class="" alt="" src="img/arrow-right.png" />
                                        </figure>
                                        <div class="item_content">
                                            <!-- Item title -->
                                            <!-- Introtext -->
                                            <div class="item_introtext">
                                                <p class="chinhsachd5 cusfontChinhSach"></p>

                                            </div>
                                            <!-- Read More link -->
                                        </div>
                                        <div class="clearfix"></div>
                                        <figure class="item_img img-intro img-intro__left">
                                            <img width="30" height="30" class="" alt="" src="img/arrow-right.png" />
                                        </figure>
                                        <div class="item_content">
                                            <!-- Item title -->
                                            <!-- Introtext -->
                                            <div class="item_introtext">
                                                <p class="chinhsachd7 cusfontChinhSach"></p>

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
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div id="video-row2" style="padding-top: 10px; padding-bottom: 90px;">
                <div class="row-container visible visible-first">
                    <div class="container">
                        <div class="row">

                           
                              <article id="item_49" class="span4 item item_num0 item__module visible visible-first" style="width: 100%;margin-left:215px">
                                    <div style="text-align: center; width: 40%; float: left;">
                                <footer class="pagination" style="padding: 0; width: 0%;">

                                    <ul>
                                        <li class="pagination-start" style="text-align: left;">
                                            <span class="pagenav bieumau" style="width: 250px; font-weight: bold;">Biểu mẫu hành chính</span>
                                        </li>

                                    </ul>

                                </footer>


                                <div class="row-fluid" style="text-align: center; width: 185px; float: left;">
                                    <article id="item_121" class="span4 item item_num0 item__module  ">
                                        <div class="item_content">



                                            <div class="item_introtext" style="width: 50px; float: left;">
                                                <asp:ListView ID="lvBieuMau" runat="server" DataSourceID="dsBieuMau">
                                                    <ItemTemplate>

                                                        <a href="/DeatailTuyenDung.aspx?idbm=<%#Eval("vangia_id_tuyendung") %>" target="_blank">
                                                            <div style="text-align: left; float: left;">
                                                                <img alt="" width="50" src="img/hop-dong-lao-dong.jpeg.png">
                                                            </div>
                                                            <div style="text-align: left; float: none; width: 400px;"><%#Eval("vangia_name_tuyendung") %></div>
                                                        </a>
                                                        <br />
                                                    </ItemTemplate>
                                                </asp:ListView>
                                                <footer class="pagination">

                                                    <ul>
                                                        <li class="pagination-start">
                                                            <span style="width: 100px;">Xem tiếp:
                                                    <asp:DataPager ID="DataPager2" PagedControlID="lvBieuMau" runat="server" PageSize="10">
                                                        <Fields>

                                                            <asp:NumericPagerField />

                                                        </Fields>
                                                    </asp:DataPager>
                                                            </span>
                                                        </li>

                                                    </ul>

                                                </footer>
                                                <asp:SqlDataSource ID="dsBieuMau" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_tuyendung, vangia_name_tuyendung, vangia_img_tuyendung, vangia_tomtat_tuyendung, vangia_img1_tuyendung, vangia_img2_tuyendung, vangia_status_tuyendung, vangia_noidung_tuyendung, vangia_language_tuyendung, vangia_order_tuyendung, vangia_type_tuyendung, vangia_ma_tuyendung, vangia_vitri_tuyendung, vangia_soluong_tuyendung, vangia_diadiem_tuyendung, vangia_date_tuyendung FROM web_vangia_tuyendung WHERE (vangia_status_tuyendung = 1) AND (vangia_type_tuyendung = 2)"></asp:SqlDataSource>

                                            </div>

                                        </div>
                                        <div class="clearfix"></div>
                                    </article>

                                    <div class="clearfix"></div>


                                </div>

                            </div>
                            <div style="text-align: center; width: 40%; float: left;">
                                <footer class="pagination" style="padding: 0; width: 0%;">

                                    <ul>
                                        <li class="pagination-start" style="text-align: left;">
                                            <span class="pagenav hoatdong" style="width: 250px; font-weight: bold;">Hoạt động tập thể</span>
                                        </li>

                                    </ul>

                                </footer>


                                <div class="row-fluid" style="text-align: center; width: 185px; float: left;">
                                    <article id="Article2" class="span4 item item_num0 item__module  ">
                                        <div class="item_content">



                                            <div class="item_introtext" style="width: 50px; float: left;">
                                                <asp:ListView ID="lvHoatDong" runat="server" DataSourceID="dsHoatdong">
                                                    <ItemTemplate>

                                                        <a href="/DeatailTuyenDung.aspx?idhd=<%#Eval("vangia_id_tuyendung") %>" target="_blank">
                                                            <div style="text-align: left; float: left;">
                                                                <img alt="" width="50" src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_tuyendung").ToString().Split('_')[0]+"/"+Eval("vangia_img_tuyendung") %>">
                                                            </div>
                                                            <div style="text-align: left; float: none; width: 400px;"><%#Eval("vangia_name_tuyendung") %></div>
                                                        </a>
                                                        <br />
                                                    </ItemTemplate>
                                                </asp:ListView>
                                                <footer class="pagination">

                                                    <ul>
                                                        <li class="pagination-start">
                                                            <span style="width: 100px;">Xem tiếp:
                                                    <asp:DataPager ID="DataPager3" PagedControlID="lvHoatDong" runat="server" PageSize="10">
                                                        <Fields>

                                                            <asp:NumericPagerField />

                                                        </Fields>
                                                    </asp:DataPager>
                                                            </span>
                                                        </li>

                                                    </ul>

                                                </footer>
                                                <asp:SqlDataSource ID="dsHoatdong" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_tuyendung, vangia_name_tuyendung, vangia_img_tuyendung, vangia_tomtat_tuyendung, vangia_img1_tuyendung, vangia_img2_tuyendung, vangia_status_tuyendung, vangia_noidung_tuyendung, vangia_language_tuyendung, vangia_order_tuyendung, vangia_type_tuyendung, vangia_ma_tuyendung, vangia_vitri_tuyendung, vangia_soluong_tuyendung, vangia_diadiem_tuyendung, vangia_date_tuyendung FROM web_vangia_tuyendung WHERE (vangia_status_tuyendung = 1) AND (vangia_type_tuyendung = 3)"></asp:SqlDataSource>

                                            </div>

                                        </div>
                                        <div class="clearfix"></div>
                                    </article>

                                    <div class="clearfix"></div>


                                </div>

                            </div>
                                  </article>
                          


                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
