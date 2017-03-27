using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSiteVanGia
{
    public partial class allProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void repSlide_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            DataRowView dv = e.Item.DataItem as DataRowView;
            if (dv != null)
            {
                Repeater rp = e.Item.FindControl("rpPicture") as Repeater;
                hdSlide.Value = dv.Row["vangia_id_project"].ToString();
                DataTable dt = (dsPicture.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
                rp.DataSource = dt;
                rp.DataBind();

            }
        }
        protected void repSlide1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            DataRowView dv = e.Item.DataItem as DataRowView;
            if (dv != null)
            {
                Repeater rp = e.Item.FindControl("rpPicture1") as Repeater;
                hdSlide1.Value = dv.Row["vangia_id_project"].ToString();
                DataTable dt = (dsPicture1.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
                rp.DataSource = dt;
                rp.DataBind();

            }
        }
        protected void repSlide2_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            DataRowView dv = e.Item.DataItem as DataRowView;
            if (dv != null)
            {
                Repeater rp = e.Item.FindControl("rpPicture2") as Repeater;
                hdSlide2.Value = dv.Row["vangia_id_project"].ToString();
                DataTable dt = (dsPicture2.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
                rp.DataSource = dt;
                rp.DataBind();

            }
        }
        protected void repSlide3_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            DataRowView dv = e.Item.DataItem as DataRowView;
            if (dv != null)
            {
                Repeater rp = e.Item.FindControl("rpPicture3") as Repeater;
                hdSlide3.Value = dv.Row["vangia_id_project"].ToString();
                DataTable dt = (dsPicture3.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
                rp.DataSource = dt;
                rp.DataBind();

            }
        }
        protected void repSlide4_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            DataRowView dv = e.Item.DataItem as DataRowView;
            if (dv != null)
            {
                Repeater rp = e.Item.FindControl("rpPicture4") as Repeater;
                hdSlide4.Value = dv.Row["vangia_id_project"].ToString();
                DataTable dt = (dsPicture4.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
                rp.DataSource = dt;
                rp.DataBind();

            }
        }

    }
   
}