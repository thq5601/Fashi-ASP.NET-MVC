using Fashi.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Fashi.Areas.Admin.Controllers
{
    public class LonginAdController : Controller
    {
        // GET: Admin/LonginAd
        fashiEntities2 dbObj = new fashiEntities2();
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(String Id, String Password)
        {
            var user = dbObj.Customers.Find(Id);
            if (user == null)
            {
                ViewBag.message = "Sai Tài Khoản";
            }
            else if (user.Password != Password)
            {
                ViewBag.message = "Sai Mật Khẩu";
            }
            else if (user.Activated == true)
            {
                ViewBag.message = "Tài Khoản Không Có Quyền !";
            }
            else
            {
                Session["User"] = user;
                Session["Id"] = Id;
               
                
                //
                var RequestUrl = Session["RequestUrl"] as String;
                if (RequestUrl != null)
                {
                    return Redirect(RequestUrl);
                }
                return RedirectToAction("Index", "Home");
            }

            return View();
        }
    }
}