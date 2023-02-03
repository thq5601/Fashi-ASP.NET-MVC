
using Fashi.Context;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Fashi.Controllers
{
    public class ShopController : Controller
    {
        // GET: Shop
        fashiEntities2 dbObj = new fashiEntities2();
        public ActionResult Index(int? trang)
        {
            Session["BackUrl"] = "/Shop/Index/";
            int sosptrentrang = 9;
            int stttrang = (trang ?? 1);
            return View(dbObj.products.ToList().OrderBy(x => x.id).ToPagedList(stttrang, sosptrentrang));
        }
        public ActionResult Search(String Keywords, int? trang)
        {
            @ViewBag.Key = Keywords;
            Session["BackUrl"] = "/Shop/Search?Keywords=" + Keywords;
            int sosptrentrang = 9;
            int stttrang = (trang ?? 1);
            var model = dbObj.products
                .Where(p => p.ten.Contains(Keywords) ||
                    p.mieuta.Contains(Keywords))
                .ToList().ToPagedList(stttrang, sosptrentrang); ;

            return View("Search", model);
        }
        public ActionResult ListBySupplier(int Id, int? trang)
        {
            Session["BackUrl"] = "/Shop/ListBySupplier/" + Id;
            int sosptrentrang = 9;
            int stttrang = (trang ?? 1);
            var model = dbObj.products.Where(p => p.id  == Id).ToList();
            return View("List", model.OrderBy(x => x.id).ToPagedList(stttrang, sosptrentrang));
        }

    }
}