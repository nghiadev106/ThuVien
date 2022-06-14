using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThuVien.Models;

namespace ThuVien.Areas.Admin.Controllers
{
    public class NgonnguController : NguoidungController
    {
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Admin/Ngonngu
        public ActionResult Index()
        {
            return View(db.ngonngus.ToList());
        }
        public JsonResult Create(ngonngu nn)
        {
            db.ngonngus.Add(nn);
            var rs=db.SaveChanges();
            return Json(rs, JsonRequestBehavior.AllowGet);
        }

        public JsonResult Delete(int id)
        {
            ngonngu nn = db.ngonngus.Find(id);
            db.ngonngus.Remove(nn);
            var rs = db.SaveChanges();
            return Json(rs, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Get(int id)
        {
            var nn = db.ngonngus.Where(x => x.mangonngu == id).Select(x => new { mangonngu = x.mangonngu, tenngonngu = x.tenngonngu, kihieu = x.kihieu, ghichu = x.ghichu }).ToList().SingleOrDefault();
            return Json(nn, JsonRequestBehavior.AllowGet);
        }

        public JsonResult Update(ngonngu nn)
        {
            db.Entry(nn).State = System.Data.Entity.EntityState.Modified;
            var rs = db.SaveChanges();
            return Json(rs, JsonRequestBehavior.AllowGet);
        }
    }
}