using Fashi.Context;
using Fashi.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Fashi.Controllers
{
    public class HomeController : Controller

    {
        fashiEntities2 dbObj = new fashiEntities2();
        // GET: Home     
        private const string CartSession = "cart";

        public ActionResult Index()
        {
            BaseModel baseModel = new BaseModel();
          
            var listCate = dbObj.categorys.ToList();
            var listMenu = dbObj.menus.ToList();
            var listHero = dbObj.slides.ToList();
            var lstBanner = dbObj.bannersections.ToList();
            var listWomenLange = dbObj.womenlarges.ToList();            
            var listMenLange = dbObj.manlarges.ToList();        
            var listItagram = dbObj.instagrams.ToList();
            var listLogoPartem = dbObj.partners.ToList();           
            var listLatest = dbObj.latests.ToList();
            baseModel.listLatest = listLatest;
            baseModel.listCate = listCate;
            baseModel.listMenu = listMenu;
            baseModel.listHero = listHero;
            baseModel.lstBanner = lstBanner;
            baseModel.listWomenLange = listWomenLange;
            baseModel.listMenLange = listMenLange;
            baseModel.listItagram = listItagram;
            baseModel.listLogoPartem = listLogoPartem;
            var listpro = dbObj.products.ToList();
            baseModel.listpro = listpro;
            return View(baseModel);
        }
    }
}