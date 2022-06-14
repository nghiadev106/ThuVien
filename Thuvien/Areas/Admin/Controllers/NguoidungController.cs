using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace Project4Thuvien.Areas.Admin.Controllers
{
    public class NguoidungController : Controller
    {
        
        // GET: Admin/Nguoidung

        protected override void OnActionExecuted(ActionExecutedContext filterContext)
        {
            if (Session["nguoidung"] == null)
            {
                
                filterContext.Result = new RedirectToRouteResult(new System.Web.Routing.RouteValueDictionary(new { controller = "Login", action = "Index", Area = "Admin" }));
            }
            base.OnActionExecuted(filterContext);
        }

    }
}