<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DetailDoitac.aspx.cs" Inherits="WebSiteVanGia.DetailDoitac" %>

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
    <div id="content-row" class="brg">
        <div class="row-container">
            <div class="container">
                <div class="content-inner row">

                    <div id="component" class="span12">
                        <main role="main">
                           
                           <asp:ListView ID="lvShow" runat="server" DataSourceID="ds_doitac">
                    <ItemTemplate>   
                    <article class="page-item page-item__team">
		<header class="item_header">
		<h2 class="item_title"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span> <span class="item_title_part1 item_title_part_even item_title_part_second_half"><%#Eval("vangia_name_doitac") %>  </span> </h2>	</header>
		<figure class="item_img img-full img-full__left item-image">
		<span class="lazy_preloader">
            <img src="img/blank.gif" alt="" style="width:248px ; height:248px !important;" class="lazy" data-src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_doitac").ToString().Split('_')[0]+"/"+Eval("vangia_img_doitac") %>"><span class="lazy_preloader_inner" style="width: 248px; padding-top: 100%;"></span></span>
			</figure>
<%--		<div class="item_fulltext">
<p>
    <span style="line-height: 1.3em; white-space:pre-line">
         <%#Eval("vangia_tiesu_doitac") %>

    </span>
   </p>

		</div>--%>
                        <div class="item_fulltext">
<p>
    <span style="line-height: 1.3em; white-space:pre-line">
         <%#Eval("vangia_noidung") %>

    </span>
   </p>

		</div>
		
	
	
	<!-- Pagination -->
	</article>   
                        </ItemTemplate></asp:ListView>
</main>
 </div>
</div>
</div>
</div>
    </div>
    <asp:SqlDataSource ID="ds_doitac" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_doitac, vangia_name_doitac, vangia_img_doitac, vangia_noidung, vangia_status_doitac, vangia_order_doitac, vangia_language_doitac FROM web_vangia_doitac WHERE (vangia_status_doitac = 1) and (vangia_id_doitac=@vangia_id_doitac)  AND (vangia_language_doitac = @vangia_language_doitac) ORDER BY vangia_order_doitac">
                                        <SelectParameters>
                                            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_doitac" />
                                            <asp:QueryStringParameter Name="vangia_id_doitac" QueryStringField="id" />
                                        </SelectParameters>

                                    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
