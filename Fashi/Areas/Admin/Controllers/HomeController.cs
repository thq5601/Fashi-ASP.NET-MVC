using Fashi.Context;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Fashi.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
      
        // GET: Admin/Home
        public ActionResult Index()
        {

           var user = Session["user"];
            if (user == null)
            {
                return RedirectToAction("Index", "LonginAd");
            }
            return View();
        }
    }
}