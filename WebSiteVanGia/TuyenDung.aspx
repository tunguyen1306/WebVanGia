<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TuyenDung.aspx.cs" Inherits="WebSiteVanGia.TuyenDung" %>

<%@ Register Src="~/ctr/ctr_toprow.ascx" TagPrefix="uc1" TagName="ctr_toprow" %>
<%@ Register Src="~/ctr/ctr_footer.ascx" TagPrefix="uc1" TagName="ctr_footer" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ct_post_fb" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_TopRow" runat="server"><uc1:ctr_toprow runat="server" ID="ctr_toprow" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_HeaderRow" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_ShowcaseRow" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_MaintopRow" runat="server">
    <div id="video-row1" style="padding-top: 10px;">
        <div class="row-container visible visible-first">
            <div class="container">
                <div class="row" id="bottom">
                    <div class="moduletable testimonials  span12">
                        <div class="module_container">
                            <header>
                                <h2 class="moduleTitle visible visible-first">
                                    <span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first thongtintuyendung" style="font-size: 47px !important; color: #008ddb;"></span></h2>

                            </header>
                            <div id="module_105" class="mod-newsflash-adv mod-newsflash-adv__testimonials cols-3">
                                <div class="row-fluid" >
                                    <article id="item_49" class="span4 item item_num0 item__module visible visible-first" style="width: 100%;">
                                        <!-- Intro Image -->


                                        <asp:ListView ID="lvTuyendung" runat="server" DataSourceID="dsTuyenDung">
                                            <ItemTemplate>
                                                <a href="/DeatailTuyenDung.aspx?id=<%#Eval("vangia_id_tuyendung") %>" target="_blank">
                                                    <figure class="item_img img-intro img-intro__left">
                                                        <img width="30" height="30" class="" alt="" src="img/service_icon.png" />
                                                    </figure>
                                                    <div class="item_content">
                                                        <!-- Item title -->
                                                        <!-- Introtext -->
                                                        <div class="item_introtext">
                                                            <p style="text-align: left; float: none; width: 400px;"><%#Eval("vangia_name_tuyendung") %></p>

                                                        </div>
                                                        <!-- Read More link -->
                                                    </div>
                                                </a>
                                                <div class="clearfix"></div>
                                                <%--  <a href="/DeatailTuyenDung.aspx?id=<%#Eval("vangia_id_tuyendung") %>" target="_blank">
                                                    <div style="text-align: left; float: left;">
                                                        <img alt="" width="50" height="20" src="img/service_icon.png">
                                                    </div>
                                                    <div style="text-align: left; float: none; width: 400px;"><%#Eval("vangia_name_tuyendung") %></div>
                                                </a>
                                                <br />--%>
                                            </ItemTemplate>
                                        </asp:ListView>
                                    </article>
                                </div>
                                <div class="clearfix"></div>

                            </div>
                            <asp:SqlDataSource ID="dsTuyenDung" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_tuyendung, vangia_name_tuyendung, vangia_img_tuyendung, vangia_tomtat_tuyendung, vangia_img1_tuyendung, vangia_img2_tuyendung, vangia_status_tuyendung, vangia_noidung_tuyendung, vangia_language_tuyendung, vangia_order_tuyendung, vangia_type_tuyendung, vangia_ma_tuyendung, vangia_vitri_tuyendung, vangia_soluong_tuyendung, vangia_diadiem_tuyendung, vangia_date_tuyendung FROM web_vangia_tuyendung WHERE (vangia_status_tuyendung = 1) AND (vangia_type_tuyendung = 1)"></asp:SqlDataSource>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_ContentRow" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
   
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentFooter" runat="server"> <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
