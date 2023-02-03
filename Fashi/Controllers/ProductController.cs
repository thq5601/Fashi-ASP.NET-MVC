using Fashi.Context;
using Fashi.Model;
using PagedList;
using System;
using System.Linq;
using System.Web.Mvc;

namespace Fashi.Content
{
    public class ProductController : Controller
    {
        fashiEntities2 dbObj = new fashiEntities2();
        // GET: Product


        public ActionResult LienQuan()
        {
            BaseModel baseModel = new BaseModel();
            var listpro = dbObj.products.ToList();
            baseModel.listpro = listpro;
            return View(baseModel);
        }

        public ActionResult Index(int id)
        {
           
            var objproducts = dbObj.products.Where(n => n.id == id).First();
            return View(objproducts);
        }
      
    }
}