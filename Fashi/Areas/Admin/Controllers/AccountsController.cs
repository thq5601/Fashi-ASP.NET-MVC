
using Fashi.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Fashi.Areas.Admin.Controllers
{
    public class AccountsController : Controller
    {
        fashiEntities2 dbObj = new fashiEntities2();
        // GET: Admin/Accounts
        public ActionResult Index()
        {
            var user = Session["user"];
            if (user == null)
            {
                return RedirectToAction("Index", "LonginAd");
            }
            return View(dbObj.Customers.ToList());
        }

        // GET: Admin/Accounts/Details/5
        public ActionResult Details(String id)
        {
            var lstDetail = dbObj.Customers.Where(n => n.Id == id).FirstOrDefault();
            return View(lstDetail);
        }

        // GET: Admin/Accounts/Create
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Accounts/Create
        [HttpPost, ValidateInput(false)]
        public ActionResult Create(Customer model)
        {
            try
            {
                // upload hinh
                var f = Request.Files["ImageUpload"];
                if (f.ContentLength > 0)
                {

                    model.Photo = DateTime.Now.Ticks + "-" + f.FileName;
                    var path = "~/Content/img/custommer/" + model.Photo;
                    f.SaveAs(Server.MapPath(path));
                }
                else
                {
                }
                // tạo
                dbObj.Customers.Add(model);
                dbObj.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                ModelState.AddModelError("", "Thêm Thất Bại !");
            }
            return View(model);
        }

        // GET: Admin/Accounts/Edit/5
        public ActionResult Edit(String id)
        {
            var lstEdit = dbObj.Customers.Where(n => n.Id == id).FirstOrDefault();
            return View(lstEdit);
        }

        // POST: Admin/Accounts/Edit/5
        [HttpPost]
        public ActionResult Edit(String id, Customer objCus)
        {
            var lstEdit = dbObj.Customers.Where(n => n.Id == id).FirstOrDefault();
            dbObj.Customers.Remove(lstEdit);
            dbObj.Customers.Add(objCus);
            dbObj.SaveChanges();
            return RedirectToAction("Index");
        }

        // GET: Admin/Accounts/Delete/5
        public ActionResult Delete(String id)
        {
            var lstDele = dbObj.Customers.Where(n => n.Id == id).FirstOrDefault();
            return View(lstDele);
        }

        // POST: Admin/Accounts/Delete/5
        [HttpPost]
        public ActionResult Delete(String id, Customer objCus)
        {
            try
            {
                var objCuss = dbObj.Customers.Where(n => n.Id == id).FirstOrDefault();
                dbObj.Customers.Remove(objCuss);
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
