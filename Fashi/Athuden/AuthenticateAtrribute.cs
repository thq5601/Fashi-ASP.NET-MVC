﻿using System.Web;
using System.Web.Mvc;

namespace Fashi.Filters
{
    public class AuthenticateAttribute : ActionFilterAttribute
    {

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {

            if (!XUser.Authenticated)
            {
                var Uri = HttpContext.Current.Request.Url.AbsoluteUri;
                HttpContext.Current.Session["RequestUrl"] = Uri;
                HttpContext.Current.Response.Redirect("/Account/Login");
            }

        }
    }
}