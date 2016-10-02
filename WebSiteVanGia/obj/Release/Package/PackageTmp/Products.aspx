<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebSiteVanGia.Products" %>

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
                           
                            
                    <div class="note"></div>
<section class="page-gallery page-gallery__">
    <header class="page_header">
    <h2 class="visible-first visible"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"><asp:Literal ID="lbrShow" runat="server"></asp:Literal></span> </h2>  </header>
   <%-- <div class="category_desc">
        <div class="clr"></div>
  </div>--%>
    <!-- Filter -->
    <ul class="gallery items-row cols-3 hover_false grid loaded" id="isotopeContainer" >
          <asp:ListView ID="lvShow" runat="server" DataSourceID="dsproducts">
                    <ItemTemplate>
        <li class="gallery-item mix mix_all gallery-grid   firstItem" style="display: inline-block;text-align:center;  opacity: 1;width:auto !important;">
        <!-- Image  -->
  <figure class="item_img img-intro img-intro__none">
  <a href="/DeatilProducts.aspx?id=<%#Eval("vangia_id_products") %>">--%>

    <img src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_products").ToString().Split('_')[0]+"/"+Eval("vangia_img_products") %>" alt="" style="width:240px ; height:240px !important;">
    <span class="lazy_preloader_inner" style="width: 170px; padding-top: 100%;"></span>


</a>
  	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

  </figure>    
          <!--  title/author -->
  			<div class="item_header" style="padding:0 0 25px;">
  				<h4 class="item_title visible-first">  					
                      <%--<a href="/DeatilProducts.aspx"></a>--%>
                        <span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span> 
                          <span class="item_title_part1 item_title_part_even item_title_part_first_half"></span>
                          <span class="item_title_part2 item_title_part_odd item_title_part_second_half"  style="font-weight:bold;display:block;height:20px;width:250px;"><%#Eval("vangia_name_products") %></span>
                              
  					</h4>  			

  			</div>
  			  		  <!-- Introtext -->
  			<div class="item_introtext">
         <%-- <%#Eval("vangia_name_products") %>   --%>   
                 
  			</div>
         
  		  <!-- info BOTTOM -->
  			      <div class="clearfix"></div>
    </li>
        
    
</ItemTemplate>

          </asp:ListView>
         <li class="gap">
    </li><li class="gap">
    </li><li class="gap lastItem">
  </li>

    </ul>
    <%--<footer class="pagination">
		
        <ul>
            <li class="pagination-start">
        <span ><asp:DataPager ID="DataPager1" PagedControlID="lvShow"  runat="server" PageSize="9">
            <Fields>
                <asp:NextPreviousPagerField ButtonCssClass="pagenav" ShowNextPageButton="False" />
                <asp:NumericPagerField CurrentPageLabelCssClass="pagenav" />
                <asp:NextPreviousPagerField ShowPreviousPageButton="False" ButtonCssClass="pagenav" />
            </Fields>
        </asp:DataPager></span>
            </li>

        </ul>

    </footer>--%>
  </section>


                                     
                       </main>
                </div>
            </div>
        </div>
    </div>

    <asp:SqlDataSource ID="dsproducts" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_products, vangia_name_type_products,vangia_img_products, vangia_name_products,
 vangia_noidung_products, vangia_img1_products, vangia_img2_products,
  vangia_img3_products, vangia_tomtat_products, vangia_order_products,
   vangia_language_products, vangia_status_products, vangia_type_products 
   FROM web_vangia_products left join web_vangia_type_products on web_vangia_type_products.vangia_id_type_products=vangia_type_products
    where vangia_status_products =1 and vangia_language_products=@vangia_language_products and vangia_type_products=@vangia_type_products order by vangia_order_products">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_products" />
            <asp:QueryStringParameter DefaultValue="0" Name="vangia_type_products" QueryStringField="id" />
        </SelectParameters>

    </asp:SqlDataSource>
    <asp:SqlDataSource ID="ds_name_type_products" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_name_type_products, vangia_id_type_products, vangia_img_type_products, vangia_status_type_products, vangia_language_type_products, vangia_order_type_products FROM web_vangia_type_products WHERE (vangia_language_type_products = @vangia_language_type_products) AND (vangia_status_type_products = 1) and vangia_id_type_products=@vangia_id_type_products">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_type_products" />
            <asp:QueryStringParameter Name="vangia_id_type_products" QueryStringField="id" />
        </SelectParameters>

    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
