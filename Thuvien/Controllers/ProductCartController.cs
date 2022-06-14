using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThuVien.Models;
using ThuVien.Areas.Admin.Models;

namespace ThuVien.Controllers
{
    public class ProductCartController : Controller
    {
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Page/ProductCart
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Getdanhsach()
        {
            if (Session["shopcart"] == null) // Nếu danh sách chưa được khởi tạo
            {
                Session["shopcart"] = new List<Cartbook>();  // Khởi tạo 
            }
            List<Cartbook> muontra = Session["shopcart"] as List<Cartbook>;
            if (muontra.Count() > 0)
            {
                return Json(new { success = true, dt = muontra }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { success = false }, JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]

        public ActionResult Delete(int macabiet)
        {
            try
            {
                List<Cartbook> muontra = Session["shopcart"] as List<Cartbook>;
                Cartbook item = muontra.FirstOrDefault(m => m.macabiet == macabiet);
                if (item != null)
                {
                    muontra.Remove(item);
                }

                return Json(new { success = true }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(new { success = false }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}