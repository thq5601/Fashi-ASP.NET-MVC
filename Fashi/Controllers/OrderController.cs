using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Fashi.Filters;
using Fashi.Context;

namespace Fashi.Controllers
{
    [Authenticate]
    public class OrderController : BaseController
    {
        public ActionResult Detail(int Id)
        {
            var model = dbObj.Orders.Find(Id);
            return View(model);
        }
        public ActionResult Checkout()
        {
            var model = new Order();
            if (XUser.Authenticated)
            {
                var user = Session["User"] as Customer;

                model.NgayDat = DateTime.Now;
                model.Tien = ShoppingCart.Cart.Amount;
                model.CustomerId = user.Id;
                model.NguoiNhan = user.Fullname;
                model.NgayNhan = DateTime.Now.AddDays(2);
                model.TrangThai = "Giao Hàng Ngay";


            }
            else
            {
            }
            return View(model);
        }
        [HttpPost]
        public ActionResult Checkout(Order model)
        {
            if (model.DiaChi == null)
            {
                ViewBag.DiaChi = "Điền Đầy Đủ Thông Tin";
            }
            var user = Session["User"] as Customer;
            try
            {
                dbObj.Orders.Add(model);
                foreach (var p in ShoppingCart.Cart.Items)
                {
                    var detail = new OrderDetail
                    {
                     
                         Order = model,  
                        ProductId = p.id,
                        SoLuong = (int)p.soluong,                      
                        Gia = (double)p.giagiam
                    };                 
                        dbObj.OrderDetails.Add(detail);                   
                    
                }
                dbObj.SaveChanges();
                ModelState.AddModelError("", "Đặt Hàng Thành Công!");
                ShoppingCart.Cart.Clear();
                return RedirectToAction("Detail", new { Id = model.Id });
            }
            catch
            {
                ModelState.AddModelError("", "Đặt Hàng Thất Bại!");
            }

            return View(model);
        }

    }
}