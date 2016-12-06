<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebSiteVanGia.Default" %>

<%@ Register Src="~/ctr/ctr_toprow.ascx" TagPrefix="uc1" TagName="ctr_toprow" %>
<%@ Register Src="~/ctr/ctr_headerrow.ascx" TagPrefix="uc1" TagName="ctr_headerrow" %>
<%@ Register Src="~/ctr/ctr_showcaserow.ascx" TagPrefix="uc1" TagName="ctr_showcaserow" %>
<%@ Register Src="~/ctr/ctr_maintoprow.ascx" TagPrefix="uc1" TagName="ctr_maintoprow" %>
<%@ Register Src="~/ctr/ctr_contentrow.ascx" TagPrefix="uc1" TagName="ctr_contentrow" %>
<%@ Register Src="~/ctr/ctr_footer.ascx" TagPrefix="uc1" TagName="ctr_footer" %>
<%@ Register Src="~/ctr/ctr_mainbottomrow.ascx" TagPrefix="uc1" TagName="ctr_mainbottomrow" %>







<asp:Content ID="Content1" ContentPlaceHolderID="Content_TopRow" runat="server">
    <uc1:ctr_toprow runat="server" ID="ctr_toprow" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_HeaderRow" runat="server">
    <uc1:ctr_headerrow runat="server" ID="ctr_headerrow" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_ShowcaseRow" runat="server">
    <%--  <uc1:ctr_showcaserow runat="server" ID="ctr_showcaserow" />--%>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_MaintopRow" runat="server">
  <%--  <uc1:ctr_maintoprow runat="server" ID="ctr_maintoprow" />--%>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_ContentRow" runat="server">
   <%-- <uc1:ctr_contentrow runat="server" ID="ctr_contentrow" />--%>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
 <%--   <uc1:ctr_mainbottomrow runat="server" ID="ctr_mainbottomrow" />--%>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentFooter" runat="server">
    <%-- <div id="footer-row" data-stellar-background-ratio="0.5">
        <div class="row-container">
            <div class="container">
                <div id="footer" class="row">
                    <div class="moduletable form_2  span12">
                        <div class="module_container">
                            <header>
                                <h2 class="moduleTitle "><span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first"><span class="item_title_part1 item_title_part_even item_title_part_second_half footer-row">
                                    </span></span> </h2>
                               
                            </header>
                            <section id="contact">

                                <div class="mod_tm_ajax_contact_form"  novalidate="">
                                  <div class="pretext">
                                     
                                    </div>
                                    <div class="mod_tm_ajax_contact_form_message" >
                                    </div>
                                    <fieldset>
                                        <div class="row-fluid">

                                            <div class="span6">
                                                <div class="control-group control-group-input top-left">
                                                    <div class="controls">

                                                        <asp:TextBox ID="txtName" CssClass="mod_tm_ajax_contact_form_input pl_name" Text="" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="control-group control-group-input top-left">
                                                    <div class="controls">

                                                        <asp:TextBox ID="txtEmail" CssClass="mod_tm_ajax_contact_form_input pl_email" Text="" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="control-group control-group-input top-left">
                                                    <div class="controls">

                                                        <asp:TextBox ID="txtPhone" CssClass="mod_tm_ajax_contact_form_input pl_phone" Text="" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span6">
                                                <div class="control-group control-group-input top-left">
                                                    <div class="controls">

                                                        <asp:TextBox ID="txtTieuDe" CssClass="mod_tm_ajax_contact_form_input pl_tieude" Text="" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="control-group control-group-textarea top-left">
                                                    <div class="controls">

                                                        <asp:TextBox ID="txtMessage" TextMode="MultiLine" CssClass="mod_tm_ajax_contact_form_textarea pl_message" Text="" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="span12">

                                                <div class="control-group control-group-button">
                                                    <div class="controls">

                                                        <asp:Button ID="btnReset" CssClass="btn btn-primary mod_tm_ajax_contact_form_btn ip_clear" OnClick="btnReset_Click" runat="server" Text="clear" />

                                                        <asp:Button ID="btnGSend" CssClass="btn btn-primary mod_tm_ajax_contact_form_btn ip_send" OnClick="btnGSend_Click" runat="server" Text="send" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    --%>
   <%-- <uc1:ctr_footer runat="server" ID="ctr_footer" />--%>
</asp:Content>
