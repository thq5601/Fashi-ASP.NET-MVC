using Fashi.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Fashi.Areas.Admin.Controllers
{
    public class OrdersController : Controller
    {
        fashiEntities2 dbObj = new fashiEntities2();
        public ActionResult ListHoaDon()
        {
            var user = Session["user"];
            if (user == null)
            {
                return RedirectToAction("Index", "LonginAd");
            }
            return View(dbObj.Orders.ToList().OrderBy(x => x.Id));
        }

        public ActionResult Edit(int id)
        {
            Order hd = dbObj.Orders.Find(id);
            if (hd == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            else
            {
                return View(hd);
            }
        }

        [HttpPost]
        public ActionResult Edit(Order ghcs)
        {
            if (ModelState.IsValid)
            {
                Order hd = dbObj.Orders.Find(ghcs.Id);
                hd.TrangThai = "Đơn Hàng Đã Xử Lý";
                dbObj.SaveChanges();
                return RedirectToAction("ListHoaDon");
            }
            else
            {
                return View(ghcs);
            }
        }
        public ActionResult Details(int Id)
        {
            var model = dbObj.Orders.Find(Id);
            return View(model);
        }
    }
}