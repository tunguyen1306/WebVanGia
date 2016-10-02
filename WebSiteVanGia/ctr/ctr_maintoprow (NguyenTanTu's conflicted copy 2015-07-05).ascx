<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctr_maintoprow.ascx.cs" Inherits="WebSiteVanGia.ctr.ctr_maintoprow" %>
<div id="maintop-row">
    <div class="moduletable best_projects">
        <div class="module_container">
            <div class="mod-newsflash-adv custom2 mod-newsflash-adv__best_projects cols-3" id="module_143">
                <%--style="width:346.5px;height:263px;"--%>
                        <div class="row-fluid">
                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                            <asp:Repeater ID="rptShow" runat="server" DataSourceID="dsProject">
                    <ItemTemplate>
                            <article class="span4 item item_num0 item__module  " id="item_115" >

                                    <figure class="item_img img-intro img-intro__none">
                                        <a href="/Products.aspx">
                                            <span class="lazy_preloader">
                                                <img src="img/blank.gif" alt="" width="660" height="500" class="lazy" data-src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_type_products").ToString().Split('_')[0]+"/"+Eval("vangia_img_type_products") %>"><span class="lazy_preloader_inner" style="width: 660px; padding-top: 75.757575757576%;"></span></span>
                                        </a>
                                    </figure>
                                    <div class="item_content">


                                        <div class="item_introtext">
                                        </div>

                                        <a class="btn btn-info readmore" href="/Products.aspx?id=<%#Eval("vangia_id_type_products") %>"><span class="cus"><%#Eval("vangia_name_type_products") %></span></a>
                                    </div>
                                    <div class="clearfix"></div>
                                </article>
                           </ItemTemplate>
                </asp:Repeater>
                        </div>
                    
                <asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_type_products, vangia_name_type_products, vangia_img_type_products, vangia_status_type_products, vangia_order_type_products, vangia_language_type_products FROM web_vangia_type_products where  vangia_status_type_products=1 and vangia_language_type_products=@vangia_language_type_products order by vangia_order_type_products">
                    <SelectParameters>
                        <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_type_products" />
                    </SelectParameters>

                </asp:SqlDataSource>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
