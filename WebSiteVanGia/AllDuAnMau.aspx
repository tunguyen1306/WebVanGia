<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AllDuAnMau.aspx.cs" Inherits="WebSiteVanGia.AllDuAnMau" %>

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
    <ul class="gallery items-row cols-3 hover_false grid loaded" id="isotopeContainer">
          <asp:ListView ID="lvShow" runat="server" DataSourceID="dsDuanmau">
                    <ItemTemplate>
        <li class="gallery-item mix mix_all gallery-grid   firstItem" style="display: inline-block;  opacity: 1;text-align:center;">
        <!-- Image  -->
  <figure class="item_img img-intro img-intro__none">
  	 <a href="/DetailDuAnMau.aspx?id=<%#Eval("vangia_id_duanmau") %>">

    <img src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_duanmau").ToString().Split('_')[0]+"/"+Eval("vangia_img_duanmau") %>" alt="" style="width:220px ; height:220px !important;" >
    <span class="lazy_preloader_inner" style="width: 170px; padding-top: 100%;"></span>

</a>
  	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

  </figure>    
          <!--  title/author -->
  			<div class="item_header">
  				<h4 class="item_title visible-first">  					
                      <a href="/Deatailduanmau.aspx?id=<%#Eval("vangia_id_duanmau") %>">
                          <span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span> 
                          <span class="item_title_part1 item_title_part_even item_title_part_first_half"></span>
                          <span class="item_title_part2 item_title_part_odd item_title_part_second_half"><%#Eval("vangia_name_duanmau") %></span> </a>
  					</h4>  			

  			</div>
  			  		  <!-- Introtext -->
  			<div class="item_introtext">
       <%#Eval("vangia_time_duanmau") %> 
                
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
    <footer class="pagination">
	
        <ul>
            <li class="pagination-start">
        <span ><asp:DataPager ID="DataPager1" PagedControlID="lvShow"  runat="server" PageSize="10">
            <Fields>
                <asp:NextPreviousPagerField ButtonCssClass="pagenav" ShowNextPageButton="False" />
                <asp:NumericPagerField CurrentPageLabelCssClass="pagenav" />
                <asp:NextPreviousPagerField ShowPreviousPageButton="False" ButtonCssClass="pagenav" />
            </Fields>
        </asp:DataPager></span>
            </li>

        </ul>

    </footer>
  </section>


                                     
                       </main>
                </div>
            </div>
        </div>
    </div>
 <asp:SqlDataSource ID="dsDuanmau" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_duanmau, vangia_img_duanmau, vangia_name_duanmau, vangia_time_duanmau, vangia_img2_duanmau, vangia_img1_duanmau, vangia_img3_duanmau, vangia_status_duanmau, vangia_order_duanmau, vangia_language, vangia_content_duanmau, vangia_tomtat_duanmau FROM web_vangia_duanmau WHERE (vangia_status_duanmau = 1) AND (vangia_language = @vangia_language) ORDER BY vangia_order_duanmau DESC">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language" />
        </SelectParameters>
        
    </asp:SqlDataSource>
     
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
