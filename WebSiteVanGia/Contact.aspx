<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebSiteVanGia.Contact" %>

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
    <div id="content-row">
        <div class="row-container">
            <div class="container">
                <div class="content-inner row">

                    <div id="component" class="span12">
                        <main role="main">
                           
                            
                    <div class="page page-contact page-contact__contact">

    <!-- Heading -->
  <div class="page_header">
    <h2><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first footer-row">Contact</span> </h2>  </div>
    <!-- CONTACT FORM -->
  
  <!-- Map -->
  <div class="contact_map" id="contact_map">

    
<!-- Plugin Google Maps version 3.2 by Mike Reumer --><!-- fail nicely if the browser has no Javascript -->
			<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
    
    function initialize() {
        var mapOptions = {
            zoom: 17,
            center: new google.maps.LatLng(10.751910, 106.706406)
        }
        var map = new google.maps.Map(document.getElementById('googleMap'),
                                      mapOptions);

        var image = 'img/cdiAE.png';
        var myLatLng = new google.maps.LatLng(10.751910, 106.706406);
        var beachMarker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            icon: image
        });
    }

    google.maps.event.addDomListener(window, 'load', initialize);
</script>
          <div id="googleMap" style="width:100%;height:380px;"></div>	
      <div id="mapbody1_3enoq_0" style="display: none; text-align:center">
         

      </div>

    </div>

  <!-- Address -->
    <div class="row-fluid">
    

<div class="contact_details">
		<div class="contact_details_item span4" >
		<h2 class="ty eAddress">Address:</h2>		
            <i class="icons-marker fa fa-home"></i>
			<div class="contact_address eAddress1">
			Cư xá Thanh Đa<br />
			P. 27<br/>
			 Q. Bình Thạnh, HCM<br/>
					</div>
	</div>
		<div class="contact_details_item span4">
		<h2 class="ty ePhones">Phones:</h2>		<%--<i class="icons-marker fa fa-phone"></i>--%>
		<%--<div class="contact_details_telephone">
			0932.625.039		</div>	--%>		
		<div class="clearfix"></div>
				<i class="icons-marker fa fa-print"></i>
		<div class="contact_details_fax">
			 0866 811 816		</div>
		<div class="clearfix"></div>
			</div>
	<div class="contact_details_item span4">
		<h2>E-mail:</h2>		<i class="icons-marker fa fa-envelope"> </i>vangia.net@gmail.com
		
		<div class="clearfix"></div>
		    <div class="contact_vcard">
    	<i class="muted">Download information as:      	<a href="/joomla_53361/index.php/contacts?format=vcf">vCard</a>
    	</i>
    </div>
     <div class="clearfix"></div>
	 	</div>
</div>  </div>
  
  <!-- Misc -->
                  
  <div class="contact_misc">
	  <h2 class="yy thongtinkhac">Miscellaneous information:</h2>
   <%--   <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.

      </p> --%>

  </div>
  
  <!-- MISC INFO -->

      
</div>   
                         
                    <!-- Content-bottom -->
                    <div id="content-bottom-row" class="row">
                      <div id="content-bottom">
                        <div class="moduletable   span12"><div class="module_container"><section id="contact">
	
	<form class="mod_tm_ajax_contact_form" id="contact-form_115" novalidate="">
	    <div class="mod_tm_ajax_contact_form_message" id="message_115">

	</div>
	  <fieldset>
		
		<div class="row-fluid">
		<!-- Name Field -->
		  <div class="control-group control-group-input top-left span4">
						<div class="controls">
			  <asp:TextBox ID="txtName" CssClass="mod_tm_ajax_contact_form_input pl_name" Text="" runat="server"></asp:TextBox>
			</div>
		  </div>
		 
		  <!-- E-mail Field -->
		  			  
		  <div class="control-group control-group-input top-left span4">
						<div class="controls">
			  <asp:TextBox ID="txtEmail"  CssClass="mod_tm_ajax_contact_form_input pl_email" Text=""  runat="server"></asp:TextBox>
			</div>
		  </div>
		  		  
		  <!-- Phone Field -->
		  <div class="control-group control-group-input top-left span4">
						<div class="controls">
			  <asp:TextBox ID="txtPhone" CssClass="mod_tm_ajax_contact_form_input pl_phone" Text=""  runat="server"></asp:TextBox>
			</div>
		  </div>
            <div class="control-group control-group-input top-left span4">
						<div class="controls">
			  <asp:TextBox ID="txtTieuDe" CssClass="mod_tm_ajax_contact_form_input pl_tieude" Text=""  runat="server"></asp:TextBox>
			</div>
		  </div>
		  		  </div>
						 
		 <!-- Message Field -->
		  <div class="control-group control-group-textarea top-left">
               
		  				<div class="controls">
			  <asp:TextBox ID="txtMessage" Width="100%" Height="10%" TextMode="MultiLine" CssClass="mod_tm_ajax_contact_form_textarea pl_message" Text=""  runat="server"></asp:TextBox>
			</div>
		  </div>
		  		 
		 <!-- Submit Button -->
		  <div class="control-group control-group-button">
			<div class="controls">

                 <asp:Button ID="btnReset" CssClass="btn btn-primary mod_tm_ajax_contact_form_btn ip_clear"   runat="server" Text="clear" OnClick="btnReset_Click" />
                 <asp:Button ID="btnGSend" CssClass="btn btn-primary mod_tm_ajax_contact_form_btn ip_send"  runat="server" Text="send" OnClick="btnGSend_Click" />
			</div>
		  </div>
		  		</fieldset>
	</form>
</section>

                                                          
                        </div>

                        
                        </div>
                      
                      </div>
                    
                    </div>
                                      
                        </main>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
