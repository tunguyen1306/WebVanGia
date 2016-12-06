<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="plan.aspx.cs" Inherits="WebSiteVanGia.plan" %>

<%@ Register Src="~/ctr/ctr_toprow.ascx" TagPrefix="uc1" TagName="ctr_toprow" %>
<%@ Register Src="~/ctr/ctr_footer.ascx" TagPrefix="uc1" TagName="ctr_footer" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ct_post_fb" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_TopRow" runat="server">
    <uc1:ctr_toprow runat="server" ID="ctr_toprow" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content_HeaderRow" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content_ShowcaseRow" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Content_MaintopRow" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="Content_ContentRow" runat="server">

    <div id="content-row">
        <div class="row-container visible visible-first">
            <div class="container">
                <div class="content-inner row">
                    <div id="component" class="span12">
                        <header class="page_header">
                            <h2 class="visible-first visible">
                                <span class="item_title_part0 item_title_part_odd item_title_part_first_half item_title_part_first">Chi phí dự kiến
                                </span>
                            </h2>

                        </header>

                        <main role="main">
                            <span class="span5">

                                <table class="table-fill">
                                    <thead>
                                        <tr>
                                            <th class="text-left"></th>
                                            <th class="text-left"></th>
                                        </tr>
                                    </thead>
                                    <tbody class="table-hover">
                                        <tr>
                                            <td class="text-left">Công trình</td>
                                            <td class="text-left">
                                                <select id="dropLoaiCongTrinh">
                                                    <option value="0">Chọn loại công trình</option>
                                                </select></td>
                                        </tr>
                                        <tr>
                                            <td class="text-left">Loại mặt tiền</td>
                                            <td class="text-left">
                                                <select id="dropMatTien">
                                                    <option value="0">Chọn mặt tiền</option>
                                                </select></td>
                                        </tr>
                                        <tr>
                                            <td class="text-left">Mức đầu tư</td>
                                            <td class="text-left">
                                                <select id="dropDauTu">
                                                    <option value="0">Chọn mức đầu tư</option>
                                                </select></td>
                                        </tr>
                                        <tr>
                                            <td class="text-left">Loại móng</td>
                                            <td class="text-left">
                                                <select id="dropLoaiMong">
                                                    <option value="0">Chọn loại móng</option>
                                                </select></td>
                                        </tr>
                                        <tr>
                                            <td class="text-left">Kiểu mái</td>
                                            <td class="text-left">
                                                <select id="dropKieuMai">
                                                    <option value="0">Chọn kiểu mái</option>
                                                </select></td>
                                        </tr>
                                        <tr>
                                            <td>Lộ giới</td>
                                            <td>
                                                <select id="dropLoGioi">
                                                    <option value="0">Chọn lộ giới</option>
                                                </select>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Tầng hầm</td>
                                            <td>
                                                <select id="dropTangHam">
                                                    <option value="0">Chọn tầng hầm</option>
                                                </select>

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                            </span>
                            <span class="span6">

                                <table class="table-fill">
                                    <thead>
                                        <tr>
                                            <th class="text-left"></th>
                                            <th class="text-left"></th>
                                        </tr>
                                    </thead>
                                    <tbody class="table-hover">
                                        <tr>
                                            <td>Chiều ngang</td>
                                            <td>
                                                <input type="text" id="txtChieuNgang" />(m)

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Chiều dọc</td>
                                            <td>
                                                <input type="text" id="txtChieuDoc" />(m)

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Số tầng</td>
                                            <td>
                                                <input type="text" id="txtSoTang" />(Tầng)

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="hidden" id="txtSoTien" /><input type="hidden" id="txtTyLe" /></td>
                                            <td>
                                                <a href="javascript:void(0)" style="padding: 10px; margin: 10px 0; background: #54acc9 !important; font: 400 14px/14px 'Ubuntu Condensed', sans-serif; color: #ffffff;" class="btn btn-info btnTinhTien">Tính Tiền</a>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Giá thành</td>
                                            <td>
                                                <label class="txtGiaThanh"></label>

                                            </td>
                                        </tr>
                                        <%-- <tr>
                                        <td>Nhân công</td>
                                        <td>
                                            <label class="txtNhanCong"></label>

                                        </td>
                                    </tr>--%>
                                    </tbody>
                                </table>
                            </span>


                        </main>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <style>
       @import url(http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100);

/*body {
  background-color: #3e94ec;
  font-family: "Roboto", helvetica, arial, sans-serif;
  font-size: 16px;
  font-weight: 400;
  text-rendering: optimizeLegibility;
}*/

div.table-title {
   display: block;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
}

.table-title h3 {
   color: #fafafa;
   font-size: 30px;
   font-weight: 400;
   font-style:normal;
   font-family: "Roboto", helvetica, arial, sans-serif;
   text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
   text-transform:uppercase;
}


/*** Table Styles **/

.table-fill {
  background: white;
  border-radius:3px;
  border-collapse: collapse;
  height: 320px;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
}
 
th {
  color:#D5DDE5;;
  background:#1b1e24;
  border-bottom:4px solid #9ea7af;
  border-right: 1px solid #343a45;
  font-size:23px;
  font-weight: 100;
  padding:24px;
  text-align:left;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  vertical-align:middle;
}

th:first-child {
  border-top-left-radius:3px;
}
 
th:last-child {
  border-top-right-radius:3px;
  border-right:none;
}
  
tr {
  border-top: 1px solid #C1C3D1;
  border-bottom-: 1px solid #C1C3D1;
  color:#666B85;
  font-size:16px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}
 
tr:hover td {
  background:#4E5066;
  color:#FFFFFF;
  border-top: 1px solid #22262e;
  border-bottom: 1px solid #22262e;
}
 
tr:first-child {
  border-top:none;
}

tr:last-child {
  border-bottom:none;
}
 
tr:nth-child(odd) td {
  background:#EBEBEB;
}
 
tr:nth-child(odd):hover td {
  background:#4E5066;
}

tr:last-child td:first-child {
  border-bottom-left-radius:3px;
}
 
tr:last-child td:last-child {
  border-bottom-right-radius:3px;
}
 
td {
  background:#FFFFFF;
  padding:10px;
  text-align:left;
  vertical-align:middle;
  font-weight:300;
  font-size:18px;
  text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
  border-right: 1px solid #C1C3D1;
}

td:last-child {
  border-right: 0px;
}

th.text-left {
  text-align: left;
}

th.text-center {
  text-align: center;
}

th.text-right {
  text-align: right;
}

td.text-left {
  text-align: left;
}

td.text-center {
  text-align: center;
}

td.text-right {
  text-align: right;
}

    </style>
   
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="Content_MainBottomRow" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentFooter" runat="server">
    <uc1:ctr_footer runat="server" ID="ctr_footer" />
</asp:Content>
