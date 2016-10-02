<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctr_post_fb_products.ascx.cs" Inherits="WebSiteVanGia.ctr.ctr_post_fb_products" %>

<asp:Repeater ID="rpt_de_products" runat="server" DataSourceID="dsProject">
    <ItemTemplate>
       

        <meta property="og:title"
            content="<%#Eval("vangia_name_products")%>" />
     
        <meta property="og:url" content="http://vangia.net/DetailProject.aspx?id=<%#Eval("vangia_id_products")%>" />
        <meta name="description" content="<%#Eval("vangia_noidung_products")%>">
        <meta property="og:description" content="<%#Eval("vangia_noidung_products")%>" />
        <meta property="og:image" content="<%=ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0] +"/"+Eval("originalFilepath") %>" />

    </ItemTemplate>
</asp:Repeater>

 <asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="select * FROM web_vangia_products where vangia_status_products =1 and vangia_language_products=@vangia_language_products and vangia_id_products=@vangia_id_products
 order by vangia_order_products">
     <SelectParameters>
          <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_products" />
        <asp:QueryStringParameter Name="vangia_id_products" QueryStringField="id" />
    </SelectParameters>
</asp:SqlDataSource>
<%-- <asp:SqlDataSource ID="ds_load_ten" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="select * from  web_tr_menu_product where id_menu_products=@id_menu_products">
        <SelectParameters>
            <asp:QueryStringParameter Name="id_menu_products" QueryStringField="tid" />
        </SelectParameters>
    </asp:SqlDataSource>--%>

