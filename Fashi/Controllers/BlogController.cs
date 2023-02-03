using Fashi.Context;
using Fashi.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Fashi.Controllers
{
    public class BlogController : Controller
    {
        fashiEntities2 dbObj = new fashiEntities2();
        // GET: Blog
        public ActionResult Index()
        {
            BaseModel baseModel = new BaseModel();
            var listblog = dbObj.blogs.ToList();
            baseModel.listblog = listblog;
            return View(baseModel);
        }
    }
}