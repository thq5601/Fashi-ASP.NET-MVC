using Fashi.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Fashi.Controllers
{
    public class BlogDetailController : Controller
    {
        // GET: BlogDetail
        fashiEntities2 dbObj = new fashiEntities2();
        // GET: Product
        public ActionResult Index(int id)
        {

            var objblog = dbObj.blogs.Where(n => n.id == id).First();
            return View(objblog);
        }
    }
}