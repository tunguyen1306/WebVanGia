<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctr_toprow.ascx.cs" Inherits="WebSiteVanGia.ctr.ctr_toprow" %>
<div id="top-row">
    <div class="row-container">
        <div class="container">
            <div id="top" class="row">

                <div id="logo" class="span2">
                    <a href="/Default.aspx">
                        <img src="img/logonew.png" class="logo" alt="vangia">
                        <h1>vangia</h1>
                    </a>
                </div>

                <nav class="moduletable   span10">

                    <div class="module_container">
                        <div class="icemegamenu">

                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ds_language" OnItemDataBound="Repeater1_ItemDataBound">
                                <ItemTemplate>

                                    <asp:LinkButton ID="lbtn_language" CommandArgument='<%#Eval("vangia_id_language") %>' OnClick="lbtn_language_Click" runat="server"><img src="<%=ConfigurationManager.AppSettings["domain"] %><%#Eval("vangia_icon_language").ToString().Split('_')[0] %>/<%#Eval("vangia_icon_language") %>" ></asp:LinkButton>
                                </ItemTemplate>
                            </asp:Repeater>


                            <asp:SqlDataSource ID="ds_language" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT [vangia_id_language],[vangia_icon_language], [vangia_name_language], [vangia_code_langue], [vangia_status_lague] FROM [web_vangia_language] where vangia_status_lague=1"></asp:SqlDataSource>
                        </div>
                        <div class="icemegamenu">

                            <div class="ice-megamenu-toggle"><a data-toggle="collapse" data-target=".nav-collapse">Menu</a></div>
                            <div class="nav-collapse icemegamenu collapse left ">
                          
                                <ul id="icemegamenu" class="meganizr mzr-slide mzr-responsive">
                                    <asp:Repeater ID="rptMenu"  runat="server" OnItemDataBound="rptMenu_ItemDataBound">
                                        <ItemTemplate>
                                            <li class="iceMenuLiLevel_1 mzr-drop parent"><a href='<%#Eval("vangia_link_menu") %>' class="iceMenuTitle "><span class="icemega_title icemega_nosubtitle"><%#Eval("vangia_name_menu") %></span></a>
                                                 <ul class="icesubMenu icemodules sub_level_1" style="width: 280px">
                                                       <asp:Repeater ID="rptMenu1"  runat="server">
                                        <ItemTemplate>
                                                    <li  class="iceMenuLiLevel_2 ">
                                                        <a href='<%#Eval("vangia_link_menucon")%>' class=" iceMenuTitle ">
                                                            <span class="icemega_title icemega_nosubtitle"><%#Eval("vangia_name_menucon") %></span>

                                                        </a>

                                                    </li>
                                                      </ItemTemplate>
                                    </asp:Repeater>
                                                </ul>
                                           
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <asp:SqlDataSource ID="dsMenu" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_menu, vangia_name_menu, vangia_link_menu, vangia_status_menu, vangia_id_language, vangia_order_menu,vangia_loai_menu FROM web_vangia_menu where vangia_status_menu=1 and vangia_id_language=@vangia_id_language  order by vangia_order_menu ">
                                        <SelectParameters>
                                            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_id_language" />
                                        </SelectParameters>

                                    </asp:SqlDataSource>
                                </ul>

                            </div>
                        </div>

                    </div>
                </nav>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
 <asp:SqlDataSource ID="dsMenucon" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_menucon, vangia_name_menucon, vangia_link_menucon, vangia_menucha_menucon, vangia_status_menucon, vangia_order_menucon, vangia_language_menucon FROM web_vangia_menucon WHERE (vangia_language_menucon = @vangia_language_menucon) AND (vangia_status_menucon = 1) AND (vangia_menucha_menucon = @vangia_menucha_menucon) ORDER BY vangia_order_menucon">
    <SelectParameters>
        <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_menucon" />
       
        <asp:ControlParameter ControlID="hdIDMenu" Name="vangia_menucha_menucon" PropertyName="Value" />
       
    </SelectParameters>
</asp:SqlDataSource>
<asp:HiddenField ID="hdIDMenu" runat="server" />