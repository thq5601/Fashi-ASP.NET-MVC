using System;
using System.Web;
using System.Web.Mvc;
using Fashi.Context;
using Fashi.Filters;

namespace Fashi.Controllers
{
    public class AccountController : BaseController
    {
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
                ViewBag.message = "Tài Khoản Không Có Quyền !";            
            }
            else
            {
                Session["User"] = user;
                Session["Id"] = Id;



                // Xu ly Remember me
                var cookie = new HttpCookie("User");
                if (Remember == false)
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
        [Authenticate]
        public ActionResult Logout()
        {
            Session.Remove("AccessToken");
            Session.Remove("User");
            return RedirectToAction("Index", "Home");
        }



        public ActionResult Register()
        {
            var model = new Customer();
            model.Activated = true;
            return View(model);
        }
        [HttpPost]
        public ActionResult Register(Customer model)
        {
            try
            {
                // upload hinh
                var f = Request.Files["UpPhoto"];
                if (f.ContentLength > 0)
                {

                    model.Photo = DateTime.Now.Ticks + "-" + f.FileName;
                    var path = "~/Content/img/custommer/" + model.Photo;
                    f.SaveAs(Server.MapPath(path));
                }
                else
                {
                    model.Photo = "~/ Content/img/custommer/a.png";
                }
                // dawng ky
                dbObj.Customers.Add(model);
                dbObj.SaveChanges();           
                ViewBag.message = "Đăng Ký Thành Công Vui Lòng Đăng Nhập.";
            }
            catch
            {
                ModelState.AddModelError("", "Đăng Ký Thất Bại !");
            }
            return View();
        }
    }
}