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
                            <header>
                                <h2 class="moduleTitle "><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first">VAN GIA TRAVEL </span></h2>
                            </header>
                            <div class="mod-newsflash-adv mod-newsflash-adv__welcome cols-3" id="module_144">
                                <div class="pretext">
                                    <%--  Sed loreet aliquam leotellus--%>
                                </div>
                                <div class="row-fluid">
                                    <article class="span4 item item_num0 item__module  " id="item_121">
                                        <div class="item_content">


                                            <div class="item_introtext">
                                                <p style="white-space: pre-line;font-size: 15px;">
                                                    VAN GIA TRAVEL là ngành dịch vụ của:
                                                     CÔNG TY CỔ PHẦN XÂY DỰNG VÀ THƯƠNG MẠI DỊCH VỤ             VẠN GIA
                                                    - Nay VAN GIA TRAVEL cung cấp dịch vụ cho thuê xe: 
                                                        + Thuê xe tháng, 
                                                        + Thuê xe du lịch,  
                                                        + Thuê xe cưới hỏi , 
                                                        + Từ thiện, tour theo yêu cầu,…
                                                </p>
                                            </div>

                                        </div>
                                        <div class="clearfix"></div>
                                    </article>
                                    <article class="span4 item item_num1 item__module  " id="item_122">
                                        <div class="item_content">


                                            <div class="item_introtext">
                                                <p style="white-space: pre-line;font-size: 15px;">
                                                    Hiện nay VAN GIA TRAVEL có các chủng loại xe khác nhau từ xe 16 chỗ, xe 7 chỗ, xe 4 chỗ.
VAN GIA TRAVEL trong lĩnh vực vận tải có đội ngũ cán bộ công nhân viên trẻ nhiệt tình, năng động. Xe cho thuê đều là xe mới.
                                                </p>
                                            </div>

                                        </div>
                                        <div class="clearfix"></div>
                                    </article>
                                    <article class="span4 item item_num2 item__module  lastItem" id="item_123">
                                        <div class="item_content">


                                            <div class="item_introtext">
                                                <p style="white-space: pre-line;font-size: 15px;">
                                                    Thông tin liên hệ:
VAN GIA TRAVEL
12A Trần Xuân Soạn, Phường Tân Kiểng, Quận 7, Thành Phố Hồ Chí minh, Việt Nam.
MST: 0312885439
Email: vangia.net@gmail.com
Liên hệ: 
0862 948 804 – Fax: 0862 948 804
0932 625 039 – Mr. Toàn 
0938 715 689 – Mrs. Ngọc
                                                </p>
                                            </div>

                                        </div>
                                        <div class="clearfix"></div>
                                    </article>
                                </div>
                                <div class="clearfix"></div>
                                <%-- <div class="mod-newsflash-adv_custom-link">
                                    <a class="btn btn-info" href="/joomla_53361/index.php/about">read more</a>
                                </div>--%>
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

    <div style="padding-top: 10px; padding-bottom: 90px;" class="video-rowdv" id="video-row">
        <div class="row-container visible visible-first">
            <div class="container">
                <div id="bottom" class="row">
                    <div class="moduletable testimonials  span12">
                        <div class="module_container">
                            <header>
                                <h2 class="moduleTitle visible visible-first">
                                    <span  class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first">DỊCH VỤ</span> </h2>

                            </header>
                            <div class="mod-newsflash-adv mod-newsflash-adv__testimonials cols-1" id="module_105">
                                <%--  <div style="font-size: 18px;" class="pretext slogon">VẠN GIA, VẠN NIỀM VUI &ndash; VẠN NỤ CƯỜI</div>--%>
                                <div  class="row-fluid">
                                    <asp:ListView ID="ListView1" runat="server" DataSourceID="dsProject">
                                        <ItemTemplate>
                                            <article class="cusGioiThieu span4 item item_num0 item__module visible-first" id="item_49">
                                                <!-- Intro Image -->
                                                <figure class="item_img img-intro img-intro__left">
                                                    <img width="30" height="33" src="img/blockquote_icon.png" alt="" class="">
                                                </figure>
                                                <div class="item_content">
                                                    <!-- Item title -->
                                                    <!-- Introtext -->
                                                    <div class="item_introtext">
                                                        <a href="/DetailProject.aspx?id=<%#Eval("vangia_id_project") %>">
                                                            <p class="cusa" style="white-space: pre-line; font-weight: bold; font-size: 17px;"><%#Eval("vangia_name_project") %></p>
                                                        </a>


                                                    </div>


                                                    <!-- Read More link -->
                                                </div>
                                                <div class="clearfix"></div>

                                            </article>

                                        </ItemTemplate>

                                    </asp:ListView>
                                </div>
                                <div class="clearfix"></div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM web_vangia_project WHERE (vangia_status_project = 1) and vangia_typeid_project=3 AND (vangia_language_project = @vangia_language_project ) order by vangia_order_project ">
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
                            <div class="mod-newsflash-adv droplist mod-newsflash-adv__droplist cols-1" id="module_146">
                                <div class="pretext">
                                    <br>
                                </div>
                                <div class="row-fluid">
                                    <article class="span4 item item_num0 item__module visible-first visible" id="Article1"></article>
                                    <article class="span4 item item_num0 item__module visible-first visible cuspadin" id="Article2">
                                        <asp:Repeater ID="Repeater1" DataSourceID="dsXayDungKeHoach" runat="server">
                                            <ItemTemplate>
                                                <span class=" dropcap1">
                                                    <img src="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0]+"/"+Eval("originalFilepath") %>" /></span>
                                                <div style="padding-top: 20px;" class="item_content">
                                                    <!-- Item title -->
                                                    <a class="cusa" href="/DetailProject.aspx?id=<%#Eval("vangia_id_project") %>">
                                                        <h4 style="font: 400 18px/31px 'Ubuntu Condensed', sans-serif;" class="item_title item_title__services kehoach  visible-first visible"><%#Eval("vangia_name_project") %></h4>
                                                    </a>
                                                    <!-- Introtext -->
                                                    <div class="item_introtext">
                                                        <p style="white-space: pre-line; font-size: 15px;">
                                                        </p>



                                                    </div>


                                                    <!-- Read More link -->


                                                </div>
                                                <div class="clearfix"></div>
                                            </ItemTemplate>

                                        </asp:Repeater>
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
    <asp:SqlDataSource ID="dsXayDungKeHoach" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM web_vangia_project left join tblSysPicture on tblSysPicture.advert_id=web_vangia_project.vangia_id_project  WHERE (vangia_status_project = 1)   and vangia_typeid_project=31   AND (vangia_language_project = 2 )  and tblSysPicture.position=1  order by vangia_id_project desc">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
        </SelectParameters>

    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsXayDungThongTin" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT * FROM web_vangia_project WHERE (vangia_status_project = 1) and vangia_typeid_project=32 AND (vangia_language_project = @vangia_language_project ) order by vangia_order_project ">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
        </SelectParameters>

    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
