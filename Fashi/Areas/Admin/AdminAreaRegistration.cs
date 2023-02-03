using System.Web.Mvc;

namespace Fashi.Areas.Admin
{
    public class AdminAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
             "Admin_default",
             "Admin/{controller}/{action}/{id}",
             new { action = "Index", id = UrlParameter.Optional },
             new[] { "Fashi.Areas.Admin.Controllers" }
         );
           /* context.MapRoute(
                name: "DefaultApi",
                 "Admin/{Products}/{Create}/{id}",
                 new { id = UrlParameter.Optional });*/

        }
    }
}