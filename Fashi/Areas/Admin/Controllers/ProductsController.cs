using Fashi.Context;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Fashi.Areas.Admin.Controllers
{
    public class ProductsController : Controller
    {
        fashiEntities2 dbObj = new fashiEntities2();
        // GET: Admin/Products
        public ActionResult Index()
        {
            var user = Session["user"];
            if (user == null)
            {
                return RedirectToAction("Index", "LonginAd");
            }
            return View(dbObj.products.ToList());
        }

        // GET: Admin/Products/Details/5
        public ActionResult Details(int id)
        {
            var lstDetail = dbObj.products.Where(n => n.id == id).FirstOrDefault();
            return View(lstDetail);
        }

        // GET: Admin/Products/Create
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Products/Create
        [HttpPost, ValidateInput(false)]
        public ActionResult Create(product model)
        {
            try
            {
                // upload hinh
                var f = Request.Files["ImageUpload"];
                if (f.ContentLength > 0)
                {

                    model.anhmh = DateTime.Now.Ticks + "-" + f.FileName;
                    var path = "~/Content/img/products/" + model.anhmh;
                    f.SaveAs(Server.MapPath(path));
                }
                else
                {
                }
                // tạo
                dbObj.products.Add(model);
                dbObj.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                ModelState.AddModelError("", "Thêm Thất Bại !");
            }
            return View(model);
        }

        // GET: Admin/Products/Edit/5
        [HttpGet]
        public ActionResult Edit(int id)
        {
            var lstEdit = dbObj.products.Where(n => n.id == id).FirstOrDefault();
            return View(lstEdit);
        }

        // POST: Admin/Products/Edit/5
        [HttpPost, ValidateInput(false)]
        public ActionResult Edit(int id, product model)
        {
            var lstEdit = dbObj.products.Where(n => n.id == id).FirstOrDefault();
            dbObj.products.Remove(lstEdit);
            try
            {
                // upload hinh
                var f = Request.Files["ImageUpload"];
                if (f.ContentLength > 0)
                {

                    model.anhmh = DateTime.Now.Ticks + "-" + f.FileName;
                    var path = "~/Content/img/products/" + model.anhmh;
                    f.SaveAs(Server.MapPath(path));
                }
                else
                {
                }
                // tạo
                dbObj.products.Add(model);
                dbObj.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                ModelState.AddModelError("", "Sửa Thất Bại !");
            }
            return View(model);          
          
        }

        // GET: Admin/Products/Delete/5
        public ActionResult Delete(int id)
        {
            var lstDele = dbObj.products.Where(n => n.id == id).FirstOrDefault();
            return View(lstDele);
        }
        [HttpPost]
        public ActionResult Delete(int id, product objProduct)
        {
            try
            {
                var objProductDe = dbObj.products.Where(n => n.id == id).FirstOrDefault();
                dbObj.products.Remove(objProductDe);
                dbObj.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
