<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctr_headerrow.ascx.cs" Inherits="WebSiteVanGia.ctr.ctr_headerrow" %>
 <div id="header-row">
                <header>
                    <div class="moduletable ">
                        <div class="module_container">
                            <div id="camera-slideshow_92" class=" camera_wrap pattern_1">
                                <asp:Repeater ID="rptShow" runat="server" DataSourceID="dsProject"><ItemTemplate>
                                <div class="camera-item" data-src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_silde").ToString().Split('_')[0]+"/"+Eval("vangia_img_silde") %>" data-thumb="img/thumb-1.jpg">
                                    <div class="camera_caption fadeIn">
                                        <h4 class="slide-title" style="font-weight: bold;"><%#Eval("vangia_name_silde") %></h4>
                                        <p class="slogon">Vạn Gia, Vạn Niềm Vui – Vạn Nụ Cười</p>

                                        <a class="btn btn-info readmore rm" href="/About.aspx" target="_self"><span></span></a>
                                    </div>
                                </div>
                               </ItemTemplate></asp:Repeater>
                            </div>
                          
                        </div>
                    </div>
                </header>
            </div>
<asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_silde, vangia_noidung_silde, vangia_tomtat_silde, vangia_name_silde, vangia_img_silde, vangia_status_silde, vangia_order_silde, vangia_language_silde FROM web_vangia_silde WHERE (vangia_status_silde = 1) AND (vangia_language_silde = @vangia_language_silde) ORDER BY vangia_order_silde">
    <SelectParameters>
        <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_silde" />
    </SelectParameters>

</asp:SqlDataSource>