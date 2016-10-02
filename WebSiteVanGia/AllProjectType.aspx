<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AllProjectType.aspx.cs" Inherits="WebSiteVanGia.AllProjectType" %>

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
          <asp:ListView ID="lvShow" runat="server" DataSourceID="dsProject">
                    <ItemTemplate>
        <li class="gallery-item mix mix_all gallery-grid   firstItem" style="display: inline-block;text-align:center;  opacity: 1;">
        <!-- Image  -->
  <figure class="item_img img-intro img-intro__none">
  	 <a href="/DetailProject.aspx?id=<%#Eval("vangia_id_project") %>">
<span class="lazy_preloader"><img src="img/blank.gif" alt="" style="width:220px ; height:220px !important;" class="lazy" data-src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_project").ToString().Split('_')[0]+"/"+Eval("vangia_img_project") %>"><span class="lazy_preloader_inner" style="width: 170px; padding-top: 100%;"></span></span>
</a>
  	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

  </figure>    
          <!--  title/author -->
  			<div class="item_header">
  				<h4 class="item_title visible-first">  					
                      <a href="/DeatilProducts.aspx">
                          <span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span> 
                          <span class="item_title_part1 item_title_part_even item_title_part_first_half"></span>
                          <span class="item_title_part2 item_title_part_odd item_title_part_second_half"><%#Eval("vangia_name_project") %></span> </a>
  					</h4>  			

  			</div>
  			  		  <!-- Introtext -->
  			<div class="item_introtext">
         <%-- <%#Eval("vangia_name_project") %>   --%>   
                 
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
		<%--<ul><li class="pagination-start"><span class="pagenav">Start</span></li>
            <li class="pagination-prev"><span class="pagenav">Prev</span></li>
            <li><span class="pagenav">1</span></li><li><a href="/joomla_53361/index.php/blog?start=2" class="pagenav">2</a></li>
            <li><a href="/joomla_53361/index.php/blog?start=4" class="pagenav">3</a></li>
            <li><a href="/joomla_53361/index.php/blog?start=6" class="pagenav">4</a></li>
            <li class="pagination-next"><a title="Next" href="/joomla_53361/index.php/blog?start=2" class="hasTooltip pagenav">Next</a></li>
            <li class="pagination-end"><a title="End" href="/joomla_53361/index.php/blog?start=6" class="hasTooltip pagenav">End</a></li>

		</ul>	--%>
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
 <asp:SqlDataSource ID="dsProject" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT top 6 vangia_id_project, vangia_name_project, vangia_img_project, vangia_img1_project, vangia_img2_project, vangia_img3_project, vangia_time_project, vangia_content_project, vangia_status_project,vangia_typeid_project, vangia_order_project, vangia_language_project FROM web_vangia_project WHERE (vangia_status_project = 1) AND (vangia_language_project = @vangia_language_project ) and vangia_typeid_project=@vangia_typeid_project order by vangia_order_project ">
        <SelectParameters>
            <asp:CookieParameter CookieName="lang" DefaultValue="2" Name="vangia_language_project" />
           
            <asp:QueryStringParameter DefaultValue="0" Name="vangia_typeid_project" QueryStringField="id" />
           
        </SelectParameters>
        
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
