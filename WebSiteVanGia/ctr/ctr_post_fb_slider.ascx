<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ctr_post_fb_slider.ascx.cs" Inherits="WebSiteVanGia.ctr.ctr_post_fb_slider" %>
    <asp:Repeater ID="rpt_de_products" runat="server" DataSourceID="dsProject" OnItemDataBound="rpt_de_products_ItemDataBound">
    <ItemTemplate>


        <meta property="og:title"
            content="<%#Eval("vangia_name_project")%>" />

        <meta property="og:url" content="http://vangia.net/DetailSlider.aspx?id=<%#Eval("vangia_id_project")%>" />
        <meta name="description" content="<%#Eval("vangia_content_project")%>">
        <meta property="og:description" content="<%#Eval("vangia_content_project")%>" />
        <asp:Repeater ID="rpPicture" runat="server">
            <ItemTemplate>
                <meta property="og:image"
                    content="<%#ConfigurationManager.AppSettings["domainvg"]+Eval("originalFilepath").ToString().Split('_')[0]+"/"+Eval("originalFilepath") %>" />
            </ItemTemplate>
        </asp:Repeater>
    </ItemTemplate>
</asp:Repeater>
<asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="Select * FROM web_vangia_project where vangia_status_project =1 and vangia_language_project=@vangia_language_project and vangia_id_project=@vangia_id_project
 order by vangia_order_project">
    <SelectParameters>
        <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
        <asp:QueryStringParameter DefaultValue="0" Name="vangia_id_project" QueryStringField="id" />
    </SelectParameters>

</asp:SqlDataSource>
<asp:SqlDataSource ID="dsPicture" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand=" select * from tblSysPicture  where advert_id=@vangia_id_project and position=1">
    <SelectParameters>

         <asp:QueryStringParameter DefaultValue="0" Name="vangia_id_project" QueryStringField="id" />
    </SelectParameters>

</asp:SqlDataSource>
<%--<asp:HiddenField runat="server" ID="hdProjectId" />--%>


