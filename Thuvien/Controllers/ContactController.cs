using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project4Thuvien.Models;

namespace Project4Thuvien.Controllers
{
    public class ContactController : Controller
    {
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Page/Contact
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Guilienhe(string firstname, string lastname, string email, string noidung)
        {
            try
            {
                lienhe lh = new lienhe();
                lh.hoten = firstname + " " + lastname;
                lh.email = email;
                lh.noidung = noidung;
                lh.trangthai = false;
                lh.ngaygui = DateTime.Now;
                db.lienhes.Add(lh);
                db.SaveChanges();
                return Json(new { success=true }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(new { success = false }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}