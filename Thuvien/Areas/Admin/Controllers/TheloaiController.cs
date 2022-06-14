using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project4Thuvien.Models;

namespace Project4Thuvien.Areas.Admin.Controllers
{
    public class TheloaiController : NguoidungController
    {
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Admin/Theloai
        public ActionResult Index()
        {
            var rs = from tl in db.theloais orderby tl.matheloai descending select tl;
            return View(rs);
        }

        public JsonResult Get(int id)
        {
            var tl = db.theloais.Where(x => x.matheloai == id).Select(x=>new {matheloai=x.matheloai,tentheloai=x.tentheloai,kihieu=x.kihieu,ghichu=x.ghichu }).ToList().SingleOrDefault();
            return Json(tl, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Create(theloai tl)
        {
            db.theloais.Add(tl);
            db.SaveChanges();
            return Json(tl, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Edit(theloai tl)
        {
            db.Entry(tl).State = System.Data.Entity.EntityState.Modified;
            var rs=db.SaveChanges();
            return Json(rs, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Delete(int id)
        {
            theloai tl = db.theloais.Find(id);
            db.theloais.Remove(tl);
            var rs = db.SaveChanges();
            return Json(rs, JsonRequestBehavior.AllowGet);
        }
    }
}