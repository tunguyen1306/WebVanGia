<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeatailEmployee.aspx.cs" Inherits="WebSiteVanGia.DeatailEmployee" %>

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
    <div id="content-row brg">
        <div class="row-container">
            <div class="container">
                <div class="content-inner row">

                    <div id="component" class="span12">
                        <main role="main">

                            <asp:ListView ID="lvShow" runat="server" DataSourceID="dsEmployee">
                                <ItemTemplate>
                                    <article class="page-item page-item__team">
                                        <header class="item_header">
                                            <h2 class="item_title"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span><span class="item_title_part1 item_title_part_even item_title_part_second_half"><%#Eval("vangia_name_employee") %>  </span></h2>
                                        </header>
                                        <figure class="item_img img-full img-full__left item-image">
                                            <span class="lazy_preloader">
                                                <img src="img/blank.gif" alt="" width="248" height="248" class="lazy" data-src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_employee").ToString().Split('_')[0]+"/"+Eval("vangia_img_employee") %>"><span class="lazy_preloader_inner" style="width: 248px; padding-top: 100%;"></span></span>
                                        </figure>
                                        <div class="item_fulltext">
                                            <p>
                                                <span style="line-height: 1.3em; white-space: pre-line">
                                                    <%#Eval("vangia_tiesu_employee") %>

                                                </span>
                                            </p>

                                        </div>
                                        <div class="item_fulltext">
                                            <p>
                                                <span style="line-height: 1.3em; white-space: pre-line">
                                                    <%#Eval("vangia_noidung_employee") %>

                                                </span>
                                            </p>

                                        </div>



                                        <!-- Social Sharing -->

                                        <!-- Pagination -->
                                    </article>
                                </ItemTemplate>
                            </asp:ListView>
                        </main>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="dsEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_employee, vangia_img_employee, vangia_name_employee, vangia_tiesu_employee,vangia_noidung_employee, vangia_status_employee, vangia_order_employee, vangia_language_employee, vangia_team_employee FROM web_vangia_employee WHERE (vangia_language_employee = @vangia_language_employee) AND (vangia_id_employee = @vangia_id_employee) AND (vangia_status_employee = 1) ORDER BY vangia_order_employee">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_employee" />
            <asp:QueryStringParameter DefaultValue="0" Name="vangia_id_employee" QueryStringField="id" />
        </SelectParameters>

    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
