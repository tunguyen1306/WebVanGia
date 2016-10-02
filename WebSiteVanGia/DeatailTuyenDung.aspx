<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeatailTuyenDung.aspx.cs" Inherits="WebSiteVanGia.DeatailTuyenDung" %>

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
    <style>
        table {
            width: 50%;
           
        }

        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            color:black;
        }

        th, td {
            padding: 5px;
            text-align: left;
        }

        table.t01 tr:nth-child(even) {
            background-color: #eee;
        }

        table.t01 tr:nth-child(odd) {
            background-color: #fff;
        }

        table.t01 th {
            background-color: black;
            color: white;
        }
    </style>
    <asp:MultiView runat="server" ID="ViewCha">
        <asp:View ID="view1" runat="server">
            <div id="content-row" class="brg">
                <div class="row-container">
                    <div class="container">
                        <div class="content-inner row">







                            <asp:ListView ID="lvShow" runat="server" DataSourceID="dsTuyenDung" DataKeyNames="vangia_id_tuyendung,vangia_name_tuyendung,vangia_img_tuyendung,vangia_tomtat_tuyendung,vangia_img1_tuyendung,vangia_img2_tuyendung,vangia_status_tuyendung,vangia_noidung_tuyendung,vangia_language_tuyendung,vangia_order_tuyendung,vangia_type_tuyendung,vangia_ma_tuyendung,vangia_vitri_tuyendung,vangia_soluong_tuyendung,vangia_diadiem_tuyendung,vangia_date_tuyendung">
                                <ItemTemplate>


                                    <main role="main"> 
                    <article class="page-item page-item__team">
		<header class="item_header">
		<h2 class="item_title"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span> <span class="item_title_part1 item_title_part_even item_title_part_second_half"><%#Eval("vangia_name_tuyendung") %>  </span> </h2>	</header>
		<figure class="item_img img-full img-full__left item-image">
		
            <img src="img/tuyen-dung-mien-trung.jpg" alt="" width="248" height="248">
           

            </span>

		
		</figure>	      
	<table class="t01">
          <tr>
            <td>Mã tuyển dụng</td>
             <td><%#Eval("vangia_ma_tuyendung") %></td>
        </tr>
        <tr>
            <td>Vị trí tuyển dụng</td>
             <td><%#Eval("vangia_name_tuyendung") %></td>
        </tr>
        
            <tr>
            <td>Số lượng</td>
             <td><%#Eval("vangia_soluong_tuyendung") %></td>
        </tr>
              <tr>
            <td>Địa điểm</td>
             <td><%#Eval("vangia_diadiem_tuyendung") %></td>
        </tr>
               <tr>
            <td>Mô tả công việc</td>
             <td><%#Eval("vangia_tomtat_tuyendung") %></td>
        </tr>
         <tr>
            <td>Quyền lợi và yêu cầu khác</td>
             <td><%#Eval("vangia_noidung_tuyendung") %></td>
        </tr>
         <tr>
            <td>Hồ sơ ứng tuyển gồm có</td>
             <td>- Sơ yếu lý lịch nêu rõ quá trình công tác, kinh nghiệm tích lũy và thành tích
                 - Đơn xin việc 
</td>
        </tr>
          <tr>
            <td>Cách thức nộp hồ sơ</td>
             <td>- Gửi hồ sơ qua mail:  vangia.construction@gmail.com  </td>
        </tr>
        <tr>
            <td></td>
             <td> <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary mod_tm_ajax_contact_form_btn" CommandArgument='<%#Eval("vangia_id_tuyendung") %>' Text="Nộp đơn" OnClick="Button1_Click" /> </td>
        </tr>
	</table> 
		
	
	
	<!-- Social Sharing -->

	<!-- Pagination -->
	</article> 

                                    </main>
                                </ItemTemplate>
                            </asp:ListView>

                        </div>
                    </div>
                </div>
            </div>

            <asp:SqlDataSource ID="dsTuyenDung" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_tuyendung, vangia_name_tuyendung, vangia_img_tuyendung, vangia_tomtat_tuyendung, vangia_img1_tuyendung, vangia_img2_tuyendung, vangia_status_tuyendung, vangia_noidung_tuyendung, vangia_language_tuyendung, vangia_order_tuyendung, vangia_type_tuyendung, vangia_ma_tuyendung, vangia_vitri_tuyendung, vangia_soluong_tuyendung, vangia_diadiem_tuyendung, vangia_date_tuyendung FROM web_vangia_tuyendung WHERE (vangia_status_tuyendung = 1) AND (vangia_type_tuyendung = 1) AND (vangia_id_tuyendung = @vangia_id_tuyendung)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="" Name="vangia_id_tuyendung" QueryStringField="id" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="dsDeTuyen" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_tuyendung, vangia_name_tuyendung, vangia_img_tuyendung, vangia_tomtat_tuyendung, vangia_img1_tuyendung, vangia_img2_tuyendung, vangia_status_tuyendung, vangia_noidung_tuyendung, vangia_language_tuyendung, vangia_order_tuyendung, vangia_type_tuyendung, vangia_ma_tuyendung, vangia_vitri_tuyendung, vangia_soluong_tuyendung, vangia_diadiem_tuyendung, vangia_date_tuyendung FROM web_vangia_tuyendung WHERE (vangia_status_tuyendung = 1) AND (vangia_type_tuyendung = 1) AND (vangia_id_tuyendung = @vangia_id_tuyendung)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="hdtuyenid" Name="vangia_id_tuyendung" PropertyName="Value" />
                </SelectParameters>
            </asp:SqlDataSource>

        </asp:View>
        <asp:View ID="view6" runat="server">
            <asp:HiddenField ID="hdtuyenid" runat="server" />
            <div id="Div9">
                <div class="row-container">
                    <div class="container">
                          <header class="item_header">
		<h2 class="item_title"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span> <span class="item_title_part1 item_title_part_even item_title_part_second_half">
            <asp:Literal ID="ltrName" runat="server"></asp:Literal>  </span> </h2>	</header>
                        <div class="content-inner row" style="text-align: center;padding: 0px 0px 0px 340px;">
                          
                            <table class="t01" style="width:66% !important;">
                                <tr>
                                    <td>Mã tuyển dụng</td>
                                    <td>
                                        <asp:Literal ID="ltrMatuyenDung" runat="server"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Vị trí tuyển dụng</td>
                                    <td>
                                        <asp:Literal ID="ltrVitrituyen" runat="server"></asp:Literal></td>
                                </tr>

                                <tr>
                                    <td>Tên Ứng viên</td>
                                    <td><asp:TextBox ID="txtName" CssClass="mod_tm_ajax_contact_form_input pl_name" Text="" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>Mô tả tóm tắt</td>
                                    <td><asp:TextBox ID="txtMessage" Width="100%" Height="10%" TextMode="MultiLine" CssClass="mod_tm_ajax_contact_form_textarea pl_message" Text=""  runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>Đính kèm CV</td>
                                    <td>
                                        <asp:FileUpload ID="fulCV" runat="server"  /></td>
                                </tr>


                                <tr>
                                    <td></td>
                                    <td>      
                  <asp:Button ID="btnReset" CssClass="btn btn-primary mod_tm_ajax_contact_form_btn ip_clear"   runat="server" Text="clear" OnClick="btnReset_Click" />
                 <asp:Button ID="btnGSend" CssClass="btn btn-primary mod_tm_ajax_contact_form_btn ip_send"  runat="server" Text="send" OnClick="btnGSend_Click" />

                                    </td>
                                </tr>
                            </table>


                        </div>
                    </div>
                </div>
            </div>



        </asp:View>
        <asp:View ID="view2" runat="server">
            <div id="Div1">
                <div class="row-container">
                    <div class="container">
                        <div class="content-inner row">

                            <div id="Div2" class="span12">
                                <asp:ListView ID="ListView1" runat="server" DataSourceID="dsBieuMau">
                                    <ItemTemplate>
                                        <div style="text-align: center; width: 100%;">
                                            <main role="main">
                            
                    <article class="page-item page-item__team" >
		<header class="item_header">
		<h2 class="item_title">
            <span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span> 
            <span class="item_title_part1 item_title_part_even item_title_part_second_half"><%#Eval("vangia_name_tuyendung") %>  </span> 

		</h2>	

		</header>
		<%--<figure class="item_img img-full img-full__left item-image">
		<span class="lazy_preloader">
            <img src="img/blank.gif" alt="" width="248" height="248" class="lazy" data-src="img/tuyen-dung-mien-trung.jpg"><span class="lazy_preloader_inner" style="width: 248px; padding-top: 100%;"></span></span>
			</figure>--%>
	<table class="t01">
          <tr>
            <td><%#Eval("vangia_name_tuyendung") %></td>
             <td><a href="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_tuyendung").ToString().Split('_')[0]+"/"+Eval("vangia_img_tuyendung") %>"><img src="img/_318-11585.jpg" style="width:30px;" /> Tải biểu mẫu</a></td>
        </tr>
        
	</table>
		
	
	

	</article>   
                       
                          
                       </main>
                                        </div>
                                    </ItemTemplate>

                                </asp:ListView>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <asp:SqlDataSource ID="dsBieuMau" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_tuyendung, vangia_name_tuyendung, vangia_img_tuyendung, vangia_tomtat_tuyendung, vangia_img1_tuyendung, vangia_img2_tuyendung, vangia_status_tuyendung, vangia_noidung_tuyendung, vangia_language_tuyendung, vangia_order_tuyendung, vangia_type_tuyendung, vangia_ma_tuyendung, vangia_vitri_tuyendung, vangia_soluong_tuyendung, vangia_diadiem_tuyendung, vangia_date_tuyendung FROM web_vangia_tuyendung WHERE (vangia_status_tuyendung = 1) AND (vangia_type_tuyendung = 2) AND (vangia_id_tuyendung = @vangia_id_tuyendung)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="" Name="vangia_id_tuyendung" QueryStringField="idbm" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="view3" runat="server">
            <div id="Div3">
                <div class="row-container">
                    <div class="container">
                        <div class="content-inner row">

                            <div id="Div4" class="span12">
                                <main role="main">
                           
                             <asp:Repeater ID="rptShow" runat="server" DataSourceID="dsHoatdong">
                    <ItemTemplate>
                    <article class="page-item page-item__gallery page-item__">
		<header class="item_header">
		<h2 class="item_title"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span> 
            <span class="item_title_part1 item_title_part_even item_title_part_first_half"></span> 
            <span class="item_title_part2 item_title_part_odd item_title_part_second_half"><%#Eval("vangia_name_tuyendung") %></span> 

		</h2>	

		</header>
		<!-- Article Image -->	
		<div class="page-gallery_img">
		<figure class="item_img img-full img-full__left">
			<a class="fancybox-thumb zoom articleGalleryZoom" data-fancybox-group="portfolio" data-fancybox-type="image" data-fancybox="fancybox" href="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_tuyendung").ToString().Split('_')[0]+"/"+Eval("vangia_img_tuyendung") %>">
				<span class="lazy_preloader">
                    <img src="img/blank.gif" alt="" style="width:700px ; height:460px !important;" class="lazy" data-src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_tuyendung").ToString().Split('_')[0]+"/"+Eval("vangia_img_tuyendung") %>">
                    <span class="lazy_preloader_inner" style="width: 700px; padding-top: 65.714285714286%;"></span>

				</span>
		&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</a></figure>
	</div>
		<div class="item_fulltext">
		
<div class="portfolio-thumbs">
<ul>
<li>
    <a class="fancybox-thumb" data-fancybox="fancybox" data-fancybox-type="image" data-fancybox-group="portfolio" href="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_tuyendung").ToString().Split('_')[0]+"/"+Eval("vangia_img_tuyendung") %>">
    <span class="lazy_preloader"><img src="img/blank.gif" alt="" style="width:220px ; height:145px !important;" class="lazy" data-src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_tuyendung").ToString().Split('_')[0]+"/"+Eval("vangia_img_tuyendung") %>"><span class="lazy_preloader_inner" style="width: 220px; padding-top: 65.909090909091%;"></span></span></a></li>
<li>
    <a class="fancybox-thumb" data-fancybox="fancybox" data-fancybox-type="image" data-fancybox-group="portfolio" href="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img1_tuyendung").ToString().Split('_')[0]+"/"+Eval("vangia_img1_tuyendung") %>">
        <span class="lazy_preloader"><img src="img/blank.gif" alt="" style="width:220px ; height:145px !important;" class="lazy" data-src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img1_tuyendung").ToString().Split('_')[0]+"/"+Eval("vangia_img1_tuyendung") %>"><span class="lazy_preloader_inner" style="width: 220px; padding-top: 65.909090909091%;"></span></span></a></li>
<li>
    <a class="fancybox-thumb" data-fancybox="fancybox" data-fancybox-type="image" data-fancybox-group="portfolio" href="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img1_tuyendung").ToString().Split('_')[0]+"/"+Eval("vangia_img2_tuyendung") %>">
        <span class="lazy_preloader"><img src="img/blank.gif" alt="" style="width:220px ; height:145px !important;" class="lazy" data-src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img1_tuyendung").ToString().Split('_')[0]+"/"+Eval("vangia_img2_tuyendung") %>"><span class="lazy_preloader_inner" style="width: 220px; padding-top: 65.909090909091%;"></span></span></a></li>
</ul>
</div>
<ul class="portfolio-meta-list">

<li><strong class="portfolio-meta-key"></strong> <%#Eval("vangia_tomtat_tuyendung") %></li>
</ul>
            <p style="white-space:pre-line;font-size: 15px;"><%#Eval("vangia_noidung_tuyendung") %></p>
                   
	
                    </article>
</ItemTemplate></asp:Repeater>
        </main>
                                <script>

                                    jQuery(function ($) {
                                        $('a[data-fancybox="fancybox"]').fancybox({
                                            padding: 0,
                                            margin: 0,
                                            loop: true,
                                            openSpeed: 500,
                                            closeSpeed: 500,
                                            nextSpeed: 500,
                                            prevSpeed: 500,
                                            afterLoad: function () {
                                                $('.fancybox-inner').click(function () {
                                                    if (click == true) {
                                                        $('body').toggleClass('fancybox-full');
                                                    }
                                                })
                                            },
                                            beforeShow: function () {
                                                $('body').addClass('fancybox-lock');
                                            },
                                            afterClose: function () {
                                                $('body').removeClass('fancybox-lock');
                                            },
                                            tpl: {
                                                image: '<div class="fancybox-image" style="background-image: url(\'{href}\');"/>',
                                                iframe: '<span class="iframe-before"/><iframe id="fancybox-frame{rnd}" width="60%" height="60%" name="fancybox-frame{rnd}" class="fancybox-iframe" frameborder="0" vspace="0" hspace="0"' + ($.browser.msie ? ' allowtransparency="true"' : '') + '/>'
                                            },
                                            helpers: {
                                                title: null,
                                                thumbs: {
                                                    height: 50,
                                                    width: 80
                                                },
                                                overlay: {
                                                    css: {
                                                        'background': '#191919'
                                                    }
                                                }
                                            }
                                        });
                                    })

                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <asp:SqlDataSource ID="dsHoatdong" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand="SELECT vangia_id_tuyendung, vangia_name_tuyendung, vangia_img_tuyendung, vangia_tomtat_tuyendung, vangia_img1_tuyendung, vangia_img2_tuyendung, vangia_status_tuyendung, vangia_noidung_tuyendung, vangia_language_tuyendung, vangia_order_tuyendung, vangia_type_tuyendung, vangia_ma_tuyendung, vangia_vitri_tuyendung, vangia_soluong_tuyendung, vangia_diadiem_tuyendung, vangia_date_tuyendung FROM web_vangia_tuyendung WHERE (vangia_status_tuyendung = 1) AND (vangia_type_tuyendung = 3) AND (vangia_id_tuyendung = @vangia_id_tuyendung)">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="" Name="vangia_id_tuyendung" QueryStringField="idhd" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:View>

        <asp:View ID="view4" runat="server">
            <div id="Div5">
                <div class="row-container">
                    <div class="container">
                        <div class="content-inner row">

                            <div id="Div6" class="span12">
                                <main role="main">

                                  <%--  <asp:Repeater ID="Repeater1" runat="server" DataSourceID="dsNews">
                                        <ItemTemplate>
                                            <article class="page-item page-item__gallery page-item__">
                                                <header class="item_header">
                                                    <h2 class="item_title"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span>
                                                        <span class="item_title_part1 item_title_part_even item_title_part_first_half"></span>
                                                        <span class="item_title_part2 item_title_part_odd item_title_part_second_half"><%#Eval("vangia_name_news") %></span>

                                                    </h2>

                                                </header>
                                                <!-- Article Image -->
                                                <div class="page-gallery_img">
                                                    <figure class="item_img img-full img-full__left">
                                                        <a class="fancybox-thumb zoom articleGalleryZoom" data-fancybox-group="portfolio" data-fancybox-type="image" data-fancybox="fancybox" href="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_news").ToString().Split('_')[0]+"/"+Eval("vangia_img_news") %>">
                                                            <span class="lazy_preloader">
                                                                <img src="img/blank.gif" alt="" style="width: 700px; height: 460px !important;" class="lazy" data-src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_news").ToString().Split('_')[0]+"/"+Eval("vangia_img_news") %>">
                                                                <span class="lazy_preloader_inner" style="width: 700px; padding-top: 65.714285714286%;"></span>

                                                            </span>
                                                            &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</a>
                                                    </figure>
                                                </div>
                                                <div class="item_fulltext">

                                                    <div class="portfolio-thumbs">
                                                        <ul>
                                                            <li>
                                                                <a class="fancybox-thumb" data-fancybox="fancybox" data-fancybox-type="image" data-fancybox-group="portfolio" href="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_news").ToString().Split('_')[0]+"/"+Eval("vangia_img_news") %>">
                                                                    <span class="lazy_preloader">
                                                                        <img src="img/blank.gif" alt="" style="width: 220px; height: 145px !important;" class="lazy" data-src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_news").ToString().Split('_')[0]+"/"+Eval("vangia_img_news") %>"><span class="lazy_preloader_inner" style="width: 220px; padding-top: 65.909090909091%;"></span></span></a></li>
                                                            <li>
                                                                <a class="fancybox-thumb" data-fancybox="fancybox" data-fancybox-type="image" data-fancybox-group="portfolio" href="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img1_news").ToString().Split('_')[0]+"/"+Eval("vangia_img1_news") %>">
                                                                    <span class="lazy_preloader">
                                                                        <img src="img/blank.gif" alt="" style="width: 220px; height: 145px !important;" class="lazy" data-src="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_img1_news").ToString().Split('_')[0]+"/"+Eval("vangia_img1_news") %>"><span class="lazy_preloader_inner" style="width: 220px; padding-top: 65.909090909091%;"></span></span></a></li>
                                                            <li>
                                                                <a class="portfolio-video fancybox.iframe" data-fancybox="fancybox" data-fancybox-group="portfolio" href="">
                                                                    <span class="lazy_preloader">
                                                                        <img src="img/blank.gif" alt="" style="width: 220px; height: 145px !important;" class="lazy" data-src=""><span class="lazy_preloader_inner" style="width: 220px; padding-top: 65.909090909091%;"></span></span></a></li>
                                                        </ul>
                                                    </div>
                                                    <ul class="portfolio-meta-list">

                                                        <li><strong class="portfolio-meta-key"></strong><%#Eval("vangia_tomtat_news") %></li>
                                                    </ul>
                                                    <p><%#Eval("vangia_noidung_news") %></p>
                                            </article>
                                        </ItemTemplate>
                                    </asp:Repeater>--%>

                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="dsNews">
                                        <ItemTemplate>



                                            <article class="page-item page-item__gallery page-item__">
                                                <header class="item_header">
                                                    <h2 class="item_title"><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"></span>
                                                        <span class="item_title_part1 item_title_part_even item_title_part_first_half"></span>
                                                        <span class="item_title_part2 item_title_part_odd item_title_part_second_half"><%#Eval("vangia_name_news") %></span>

                                                    </h2>

                                                </header>
                                                <!-- Article Image -->
                                                <div class="page-gallery_img">
                                                    <figure class="item_img img-full img-full__left">
                                                        <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 960px; height: 480px; overflow: hidden; visibility: hidden; ">
                                                            <!-- Loading Screen -->
                                                            <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
                                                                <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                                                <div style="position: absolute; display: block; background: url('img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                                            </div>
                                                            <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 240px; width: 720px; height: 480px; overflow: hidden;">

                                                                <div data-p="150.00" style="display: none;">
                                                                    <img data-u="image" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_news").ToString().Split('_')[0] +"/"+Eval("vangia_img_news")).Contains(".jpg")?ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img_news").ToString().Split('_')[0] +"/"+Eval("vangia_img_news"): "img/09.png" %>" />
                                                                    <img data-u="thumb" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img_news").ToString().Split('_')[0] +"/"+Eval("vangia_img_news")).Contains(".jpg")?ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img_news").ToString().Split('_')[0] +"/"+Eval("vangia_img_news"): "img/09.png" %>" />
                                                                </div>
                                                               <div data-p="150.00" style="display: none;">
                                                                    <img data-u="image" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img1_news").ToString().Split('_')[0] +"/"+Eval("vangia_img1_news")).Contains(".jpg")?ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img1_news").ToString().Split('_')[0] +"/"+Eval("vangia_img1_news"): "img/09.png" %>" />
                                                                    <img data-u="thumb" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img1_news").ToString().Split('_')[0] +"/"+Eval("vangia_img1_news")).Contains(".jpg")?ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img1_news").ToString().Split('_')[0] +"/"+Eval("vangia_img1_news"): "img/09.png" %>" />
                                                                </div>
                                                               <div data-p="150.00" style="display: none;">
                                                                    <img data-u="image" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img2_news").ToString().Split('_')[0] +"/"+Eval("vangia_img2_news")).Contains(".jpg")?ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img2_news").ToString().Split('_')[0] +"/"+Eval("vangia_img2_news"): "img/09.png" %>" />
                                                                    <img data-u="thumb" src="<%#(ConfigurationManager.AppSettings["domain"]+Eval("vangia_img2_news").ToString().Split('_')[0] +"/"+Eval("vangia_img2_news")).Contains(".jpg")?ConfigurationManager.AppSettings["domain"]+    Eval("vangia_img2_news").ToString().Split('_')[0] +"/"+Eval("vangia_img2_news"): "img/09.png" %>" />
                                                                </div>
                                                                <div data-p="150.00" style="display: none;">
                                                                    <img data-u="image" src="img/09.png" />
                                                                    <img data-u="thumb" src="img/09.png" />
                                                                </div>
                                                                <div data-p="150.00" style="display: none;">
                                                                    <img data-u="image" src="img/09.png" />
                                                                    <img data-u="thumb" src="img/09.png" />
                                                                </div>
                                                                <div data-p="150.00" style="display: none;">
                                                                    <img data-u="image" src="img/09.png" />
                                                                    <img data-u="thumb" src="img/09.png" />
                                                                </div>
                                                                <div data-p="150.00" style="display: none;">
                                                                    <img data-u="image" src="img/09.png" />
                                                                    <img data-u="thumb" src="img/09.png" />
                                                                </div>
                                                                  <div data-p="150.00" style="display: none;">
                                                                    <img data-u="image" src="img/09.png" />
                                                                    <img data-u="thumb" src="img/09.png" />
                                                                </div>
                                                                <div data-p="150.00" style="display: none;">
                                                                    <img data-u="image" src="img/09.png" />
                                                                    <img data-u="thumb" src="img/09.png" />
                                                                </div>
                                                                <div data-p="150.00" style="display: none;">
                                                                    <img data-u="image" src="img/09.png" />
                                                                    <img data-u="thumb" src="img/09.png" />
                                                                </div>
                                                                <div data-p="150.00" style="display: none;">
                                                                    <img data-u="image" src="img/09.png" />
                                                                    <img data-u="thumb" src="img/09.png" />
                                                                </div>
                                                                <div data-p="150.00" style="display: none;">
                                                                    <img data-u="image" src="img/09.png" />
                                                                    <img data-u="thumb" src="img/09.png" />
                                                                </div>

                                                             
                                                            </div>
                                                            <!-- Thumbnail Navigator -->
                                                            <div data-u="thumbnavigator" class="jssort01-99-66" style="position: absolute; left: 0px; top: 0px; width: 240px; height: 480px;" data-autocenter="2">
                                                                <!-- Thumbnail Item Skin Begin -->
                                                                <div data-u="slides" style="cursor: default;">
                                                                    <div data-u="prototype" class="p">
                                                                        <div class="w">
                                                                            <div data-u="thumbnailtemplate" class="t"></div>
                                                                        </div>
                                                                        <div class="c"></div>
                                                                    </div>
                                                                </div>
                                                                <!-- Thumbnail Item Skin End -->
                                                            </div>
                                                            <!-- Arrow Navigator -->
                                                            <span data-u="arrowleft" class="jssora05l" style="top: 158px; left: 248px; width: 40px; height: 40px;" data-autocenter="2"></span>
                                                            <span data-u="arrowright" class="jssora05r" style="top: 158px; right: 8px; width: 40px; height: 40px;" data-autocenter="2"></span>
                                                        </div>
                                                    </figure>
                                                </div>



                                                <ul class="portfolio-meta-list">

                                                    <li><strong class="portfolio-meta-key" style="white-space:pre-line;font-size: 15px;"><%#Eval("vangia_noidung_news") %></strong></li>
                                                     <li><span style="font-size:20px;font-weight:bold;">Tải Thông báo:</span><strong class="portfolio-meta-key"></strong><a href="<%#ConfigurationManager.AppSettings["domain"]+Eval("vangia_vanban_news").ToString().Split('_')[0]+"/"+Eval("vangia_vanban_news") %>"><img src="img/_318-11585.jpg" style="width:30px;" /></a></li>
                                                </ul>
                                                <p></p>


                                            </article>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </main>
                          
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <asp:SqlDataSource ID="dsNews" runat="server" ConnectionString="<%$ ConnectionStrings:VanGiaConnectString %>" SelectCommand=" SELECT * FROM web_vangia_news WHERE (vangia_status_news = 1) AND (vangia_id_news = @vangia_id_news) ORDER BY vangia_order_news">
                <SelectParameters>
                    <asp:QueryStringParameter Name="vangia_id_news" QueryStringField="idn" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:View>
   
    </asp:MultiView>
     <script type="text/javascript" src="js/jssor.slider.min.js"></script>
    <!-- use jssor.slider.debug.js instead for debug -->
    <script>
        jssor_1_slider_init = function() {
            
            var jssor_1_SlideshowTransitions = [
              {$Duration:1200,$Zoom:1,$Easing:{$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad},$Opacity:2},
              {$Duration:1000,$Zoom:11,$SlideOut:true,$Easing:{$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,$Zoom:1,$Rotate:1,$During:{$Zoom:[0.2,0.8],$Rotate:[0.2,0.8]},$Easing:{$Zoom:$Jease$.$Swing,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$Swing},$Opacity:2,$Round:{$Rotate:0.5}},
              {$Duration:1000,$Zoom:11,$Rotate:1,$SlideOut:true,$Easing:{$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InExpo},$Opacity:2,$Round:{$Rotate:0.8}},
              {$Duration:1200,x:0.5,$Cols:2,$Zoom:1,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,x:4,$Cols:2,$Zoom:11,$SlideOut:true,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear},$Opacity:2},
              {$Duration:1200,x:0.6,$Zoom:1,$Rotate:1,$During:{$Left:[0.2,0.8],$Zoom:[0.2,0.8],$Rotate:[0.2,0.8]},$Easing:{$Left:$Jease$.$Swing,$Zoom:$Jease$.$Swing,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$Swing},$Opacity:2,$Round:{$Rotate:0.5}},
              {$Duration:1000,x:-4,$Zoom:11,$Rotate:1,$SlideOut:true,$Easing:{$Left:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InExpo},$Opacity:2,$Round:{$Rotate:0.8}},
              {$Duration:1200,x:-0.6,$Zoom:1,$Rotate:1,$During:{$Left:[0.2,0.8],$Zoom:[0.2,0.8],$Rotate:[0.2,0.8]},$Easing:{$Left:$Jease$.$Swing,$Zoom:$Jease$.$Swing,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$Swing},$Opacity:2,$Round:{$Rotate:0.5}},
              {$Duration:1000,x:4,$Zoom:11,$Rotate:1,$SlideOut:true,$Easing:{$Left:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InExpo},$Opacity:2,$Round:{$Rotate:0.8}},
              {$Duration:1200,x:0.5,y:0.3,$Cols:2,$Zoom:1,$Rotate:1,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad,$Rotate:$Jease$.$InCubic},$Opacity:2,$Round:{$Rotate:0.7}},
              {$Duration:1000,x:0.5,y:0.3,$Cols:2,$Zoom:1,$Rotate:1,$SlideOut:true,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InExpo,$Top:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InExpo},$Opacity:2,$Round:{$Rotate:0.7}},
              {$Duration:1200,x:-4,y:2,$Rows:2,$Zoom:11,$Rotate:1,$Assembly:2049,$ChessMode:{$Row:28},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad,$Rotate:$Jease$.$InCubic},$Opacity:2,$Round:{$Rotate:0.7}},
              {$Duration:1200,x:1,y:2,$Cols:2,$Zoom:11,$Rotate:1,$Assembly:2049,$ChessMode:{$Column:19},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad,$Rotate:$Jease$.$InCubic},$Opacity:2,$Round:{$Rotate:0.8}}
            ];
            
            var jssor_1_options = {
              $AutoPlay: true,
              $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: jssor_1_SlideshowTransitions,
                $TransitionsOrder: 1
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $ThumbnailNavigatorOptions: {
                $Class: $JssorThumbnailNavigator$,
                $Rows: 2,
                $Cols: 6,
                $SpacingX: 14,
                $SpacingY: 12,
                $Orientation: 2,
                $Align: 156
              }
            };
            
            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
            
            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 960);
                    refSize = Math.max(refSize, 300);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            //responsive code end
        };
    </script>

    <style>
        
        /* jssor slider arrow navigator skin 05 css */
        /*
        .jssora05l                  (normal)
        .jssora05r                  (normal)
        .jssora05l:hover            (normal mouseover)
        .jssora05r:hover            (normal mouseover)
        .jssora05l.jssora05ldn      (mousedown)
        .jssora05r.jssora05rdn      (mousedown)
        */
        .jssora05l, .jssora05r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 40px;
            height: 40px;
            cursor: pointer;
            background: url('img/a17.png') no-repeat;
            overflow: hidden;
        }
        .jssora05l { background-position: -10px -40px; }
        .jssora05r { background-position: -70px -40px; }
        .jssora05l:hover { background-position: -130px -40px; }
        .jssora05r:hover { background-position: -190px -40px; }
        .jssora05l.jssora05ldn { background-position: -250px -40px; }
        .jssora05r.jssora05rdn { background-position: -310px -40px; }

        /* jssor slider thumbnail navigator skin 01 css */
        /*
        .jssort01-99-66 .p            (normal)
        .jssort01-99-66 .p:hover      (normal mouseover)
        .jssort01-99-66 .p.pav        (active)
        .jssort01-99-66 .p.pdn        (mousedown)
        */
        .jssort01-99-66 .p {
            position: absolute;
            top: 0;
            left: 0;
            width: 99px;
            height: 66px;
        }
        
        .jssort01-99-66 .t {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border: none;
        }
        
        .jssort01-99-66 .w {
            position: absolute;
            top: 0px;
            left: 0px;
            width: 100%;
            height: 100%;
        }
        
        .jssort01-99-66 .c {
            position: absolute;
            top: 0px;
            left: 0px;
            width: 95px;
            height: 62px;
            border: #000 2px solid;
            box-sizing: content-box;
            background: url('img/t01.png') -800px -800px no-repeat;
            _background: none;
        }
        
        .jssort01-99-66 .pav .c {
            top: 2px;
            _top: 0px;
            left: 2px;
            _left: 0px;
            width: 95px;
            height: 62px;
            border: #000 0px solid;
            _border: #fff 2px solid;
            background-position: 50% 50%;
        }
        
        .jssort01-99-66 .p:hover .c {
            top: 0px;
            left: 0px;
            width: 97px;
            height: 64px;
            border: #fff 1px solid;
            background-position: 50% 50%;
        }
        
        .jssort01-99-66 .p.pdn .c {
            background-position: 50% 50%;
            width: 95px;
            height: 62px;
            border: #000 2px solid;
        }
        
        * html .jssort01-99-66 .c, * html .jssort01-99-66 .pdn .c, * html .jssort01-99-66 .pav .c {
            /* ie quirks mode adjust */
            width /**/: 99px;
            height /**/: 66px;
        }
        
    </style>


    <script>
        jssor_1_slider_init();
    </script>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
