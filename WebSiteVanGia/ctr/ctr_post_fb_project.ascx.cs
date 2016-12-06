﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSiteVanGia.ctr
{
    public partial class ctr_post_fb_project : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rpt_de_products_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            DataRowView dv = e.Item.DataItem as DataRowView;
            if (dv != null)
            {
                Repeater rp = e.Item.FindControl("rpPicture") as Repeater;
               // hdProjectId.Value = dv.Row["vangia_id_project"].ToString();
                DataTable dt = (dsPicture.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
                rp.DataSource = dt;
                rp.DataBind();

            }
        }
    }
}