using Fashi.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Fashi.Controllers
{
    public class BaseController : Controller
    {
        protected fashiEntities2 dbObj = new fashiEntities2();
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                dbObj.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}