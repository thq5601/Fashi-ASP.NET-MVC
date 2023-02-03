using Fashi.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Fashi.Areas.Admin.Controllers
{
    public class BlogsController : Controller
    {
        fashiEntities2 dbObj = new fashiEntities2();
        // GET: Admin/Blogs
        public ActionResult Index()
        {
            var user = Session["user"];
            if (user == null)
            {
                return RedirectToAction("Index", "LonginAd");
            }
            return View(dbObj.blogs.ToList());
        }

        // GET: Admin/Blogs/Details/5
        public ActionResult Details(int id)
        {
            var lstDetail = dbObj.blogs.Where(n => n.id == id).FirstOrDefault();
            return View(lstDetail);
        }

        // GET: Admin/Blogs/Create
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Blogs/Create
        [HttpPost, ValidateInput(false)]
        public ActionResult Create(blog model)
        {
            try
            {
                // upload hinh
                var f = Request.Files["ImageUpload"];
                if (f.ContentLength > 0)
                {

                    model.anh = DateTime.Now.Ticks + "-" + f.FileName;
                    var path = "~/Content/img/blog/" + model.anh;
                    f.SaveAs(Server.MapPath(path));
                }
                else
                {               
                }
                // tạo
                dbObj.blogs.Add(model);
                dbObj.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                ModelState.AddModelError("", "Thêm Thất Bại !");
            }
            return View(model);
        }

        // GET: Admin/Blogs/Edit/5
        public ActionResult Edit(int id)
        {
            var lstEdit = dbObj.blogs.Where(n => n.id == id).FirstOrDefault();
            return View(lstEdit);
        }

        // POST: Admin/Blogs/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, blog objblogs)
        {
            var lstEdit = dbObj.blogs.Where(n => n.id == id).FirstOrDefault();
            dbObj.blogs.Remove(lstEdit);
            dbObj.blogs.Add(objblogs);
            dbObj.SaveChanges();
            return RedirectToAction("Index");
        }

        // GET: Admin/Blogs/Delete/5
        public ActionResult Delete(int id)
        {
            var lstDele = dbObj.blogs.Where(n => n.id == id).FirstOrDefault();
            return View(lstDele);
        }

        // POST: Admin/Blogs/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, blog objblogs)
        {
            try
            {
                var objblog = dbObj.blogs.Where(n => n.id == id).FirstOrDefault();
                dbObj.blogs.Remove(objblog);
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
