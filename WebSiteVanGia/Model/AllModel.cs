using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebSiteVanGia.Model
{
    public class AllModel
    {
        public web_vangia_project tblWebProject { get; set; }
        public tblSysPicture tblSysPicture { get; set; }
        public List<web_vangia_project> ListWebProject { get; set; }
        public List<tblSysPicture> ListSysPicture { get; set; }
    }
}