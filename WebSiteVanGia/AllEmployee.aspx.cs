using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSiteVanGia
{
    public partial class AllEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = (dsWorkTeam.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
                if (dt.Rows.Count > 0)
                {
                    lbrShow.Text = dt.Rows[0]["vangia_name_team"].ToString();
                }
               
            }

        }
    }
}