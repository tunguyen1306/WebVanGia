﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebSiteVanGia
{
    /// <summary>
    /// Summary description for WebLoadData
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class WebLoadData : System.Web.Services.WebService
    {

        [WebMethod]
        public object GetRowLan(string lan)
        {
            DatabaseClassesDataContext db = new DatabaseClassesDataContext();
            return db.web_vangia_configs.Where(o => o.laguage_word_vg == int.Parse(lan));
        }
    }
}