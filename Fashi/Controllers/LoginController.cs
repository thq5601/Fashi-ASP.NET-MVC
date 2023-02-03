using Fashi.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Fashi.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        fashiEntities2 dbObj = new fashiEntities2();
        public ActionResult Login()
        {
            var cookie = Request.Cookies["User"];
            if (cookie != null)
            {
                ViewBag.Id = cookie.Values["Id"];
                ViewBag.Password = cookie.Values["Password"];
                ViewBag.Remember = true;
            }
            return View();
        }
        [HttpPost]
        public ActionResult Login(String Id, String Password, bool Remember)
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
            else if (user.Activated == false)
            {
                ViewBag.message = "Tài Khoản Không Có Quyền!";
            }
            else
            {
                Session["User"] = user;
                Session["Id"] = Id;
                // Xu ly Remember me
                var cookie = new HttpCookie("User");
                if (Remember == true)
                {
                    cookie.Values["Id"] = Id;
                    cookie.Values["Password"] = Password;
                    cookie.Expires = DateTime.Now.AddMonths(1);
                }
                else
                {
                    cookie.Expires = DateTime.Now;
                }
                Response.Cookies.Add(cookie);

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