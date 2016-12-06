<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DetailSilde.aspx.cs" Inherits="WebSiteVanGia.DetailSilde" %>

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
    <div class="row-container visible visible-first">
        <div class="container">
            <div class="content-inner row">

                <div class="span12" id="component">
                    <main role="main">
                           
                            <asp:Repeater ID="rptShow" runat="server" DataSourceID="dsProject">
                                <ItemTemplate>
                    <article class="page-item page-item__">
		<header class="item_header">
		<h2 class="item_title visible-first visible">
            <span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span> <span class="item_title_part1 item_title_part_even item_title_part_first_half"></span> <span class="item_title_part2 item_title_part_odd item_title_part_first_half"></span> <%#Eval("vangia_name_silde") %><span class="item_title_part3 item_title_part_even item_title_part_first_half"></span> <span class="item_title_part4 item_title_part_odd item_title_part_first_half">build</span> <span class="item_title_part5 item_title_part_even item_title_part_second_half"></span> <span class="item_title_part6 item_title_part_odd item_title_part_second_half"></span> <span class="item_title_part7 item_title_part_even item_title_part_second_half"></span> <span class="item_title_part8 item_title_part_odd item_title_part_second_half"></span> </h2>	</header>
		<figure class="item_img img-full img-full__none item-image">
		<img width="1980" height="1000" class="" alt="" src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_silde").ToString().Split('_')[0]+"/"+Eval("vangia_img_silde") %>">
			</figure>
		<div class="item_fulltext"><p style="white-space:pre-line;font-size: 15px;"> <%#Eval("vangia_noidung_silde") %></p>
</div>
		
	
	<!-- Pagination -->
	</article>   

                            </ItemTemplate>

                            </asp:Repeater>
                   </main>
                </div>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_silde, vangia_noidung_silde, vangia_tomtat_silde, vangia_name_silde, vangia_img_silde, vangia_status_silde, vangia_order_silde, vangia_language_silde,vangia_type_slide FROM web_vangia_silde WHERE vangia_type_slide=1 and  (vangia_status_silde = 1) AND (vangia_language_silde = @vangia_language_silde) and vangia_id_silde=@vangia_id_silde  ORDER BY vangia_order_silde">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="" Name="vangia_language_silde" />
            <asp:QueryStringParameter DefaultValue="0" Name="vangia_id_silde" QueryStringField="id" />
        </SelectParameters>

    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>

