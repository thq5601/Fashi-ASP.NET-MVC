using Fashi.Context;
using System;
using System.Web;
using System.Web.Mvc;
namespace Fashi.Controllers
{
    public class DangKyController : Controller
    {
        fashiEntities2 dbObj = new fashiEntities2();
        // GET: DangKy
        public ActionResult Index()
        {
            var model = new Customer();
            model.Activated = false;
            return View(model);
        }
        [HttpPost]
        public ActionResult Index(Customer model)
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
                    model.Photo = "636585668791917063-tai.jpg";
                }
                // dawng ky
                dbObj.Customers.Add(model);
                dbObj.SaveChanges();
                ViewBag.message = "Register successfully! Please access the email to activate your account.";            
            }
            catch
            {
                ModelState.AddModelError("", "Register fails !");
            }
            return View();
        }

    }
}