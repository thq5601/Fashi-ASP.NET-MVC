using Fashi.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Fashi.Controllers
{
    public class ShoppingCartController : Controller
    {
        // GET: ShoppingCart
        fashiEntities1 dbObj = new fashiEntities1();
        public ActionResult Index( )
        {
            return View();
        }
        public ActionResult Add(int id)
        {
            ShoppingCart.Cart.Add(id);
            var response = new
            {
                Count = ShoppingCart.Cart.Count,
                Amount = Math.Round(ShoppingCart.Cart.Amount)
            };
            return Json(response, JsonRequestBehavior.AllowGet);
        }

         
        public ActionResult Remove(int id)
        {
            ShoppingCart.Cart.Remove(id);
            var response = new
            {
                Count = ShoppingCart.Cart.Count,
                Amount = Math.Round(ShoppingCart.Cart.Amount)
            };
            return Json(response, JsonRequestBehavior.AllowGet);
        }
        public ActionResult Update(int id, int newqty)
        {
            ShoppingCart.Cart.Update(id, newqty);
            var response = new
            {
                Count = ShoppingCart.Cart.Count,
                Amount = Math.Round(ShoppingCart.Cart.Amount)
            };
            return Json(response, JsonRequestBehavior.AllowGet);
        }
        public ActionResult Clear()
        {
            ShoppingCart.Cart.Clear();
            return View("Index");
        }
    }
}