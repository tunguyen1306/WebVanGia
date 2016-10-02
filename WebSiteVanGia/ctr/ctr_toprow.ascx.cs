using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSiteVanGia.ctr
{
    public partial class ctr_toprow : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            LoadMenu();

        }

        protected void lbtn_language_Click(object sender, EventArgs e)
        {
            string value_ = (sender as LinkButton).CommandArgument;
            HttpCookie cooki = new HttpCookie("lang");
            cooki.Value = value_;
            cooki.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(cooki);
           // Response.Redirect("Default.aspx");
            Response.Redirect(Request.RawUrl);
           

        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            HttpCookie cooki = Request.Cookies.Get("lang");
            if (cooki != null)
            {

                

                LinkButton mylan = (LinkButton)e.Item.FindControl("lbtn_language");

                if (mylan.CommandArgument == cooki.Value)
                    {
                        mylan.Attributes.Add("rellan", cooki.Value);
                    }
            }

        }
        public void LoadMenu()
        {
            DataTable dt = (dsMenu.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
            rptMenu.DataSource = dt;
            rptMenu.DataBind();
        }

        protected void rptMenu_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            DataRowView dv = e.Item.DataItem as DataRowView;
            if (dv!=null)
            {
                Repeater rp = e.Item.FindControl("rptMenu1") as Repeater;
                hdIDMenu.Value = dv.Row["vangia_id_menu"].ToString();
                DataTable dt = (dsMenucon.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
                rp.DataSource = dt;
                rp.DataBind();
                
            }
        }
    }
}