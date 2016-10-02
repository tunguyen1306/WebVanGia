<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NewEvent.aspx.cs" Inherits="WebSiteVanGia.NewEvent" %>

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
      <div style="padding-top: 10px; padding-bottom: 90px;" class="video-rowdv" id="video-row">
        <div class="row-container visible visible-first">
            <div class="container">
                <div id="bottom" class="row">
                    <div class="moduletable testimonials  span12">
                        <div class="module_container">
                                <header>
                        <h2 class="moduleTitle ">

                            <span class="item_title_part1 item_title_part_even item_title_part_second_half tintuc">THÔNG BÁO</span></h2>
                    </header>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div>

                                <div class="row-fluid">
                                     <article id="Article2" class="span2 item item_num0 item__module  ">
                                     
                                        <div class="clearfix"></div>
                                    </article>
                                    <article id="Article1" class="span8 item item_num0 item__module  ">
                                        <div class="item_content">

                                            <div class="item_introtext">
                                                <asp:ListView ID="lvNewDuAn" runat="server" DataSourceID="dsNewsDuAn">
                                                    <ItemTemplate>

                                                        <a href='/DeatailTuyenDung.aspx?idn=<%#Eval("vangia_id_news") %>' target="_blank">
                                                            <%--  <div style="text-align: left; float: left;">
                                                                    <img alt="" width="50" src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_news").ToString().Split('_')[0]+"/"+Eval("vangia_img_news") %>">
                                                                </div>--%>
                                                            <div class="item_introtext cusa"><%#Eval("vangia_name_news") %></div>
                                                        </a>
                                                        <br />
                                                    </ItemTemplate>
                                                </asp:ListView>
                                                <footer class="pagination">

                                                    <ul>
                                                        <li class="pagination-start">
                                                            <span style="width: 100px;"><span class="rm">xem tiếp:</span>
                                                                <asp:DataPager ID="DataPager1" PagedControlID="lvNewDuAn" runat="server" PageSize="10">
                                                                    <Fields>

                                                                        <asp:NumericPagerField />

                                                                    </Fields>
                                                                </asp:DataPager>
                                                            </span>

                                                        </li>

                                                    </ul>

                                                </footer>
                                                <asp:SqlDataSource ID="dsNewsDuAn" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_news, vangia_name_news, vangia_img_news, vangia_links_news, vangia_type_news FROM web_vangia_news WHERE (vangia_type_news = 1)"></asp:SqlDataSource>

                                            </div>

                                        </div>
                                        <div class="clearfix"></div>
                                    </article>

                                    <div class="clearfix"></div>


                                </div>

                            </div>


                        </ContentTemplate>
                    </asp:UpdatePanel>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
