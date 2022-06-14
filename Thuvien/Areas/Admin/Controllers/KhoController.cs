using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThuVien.Models;

namespace ThuVien.Areas.Admin.Controllers
{
    public class KhoController : NguoidungController
    {
        ThuvienDbContext db = new ThuvienDbContext(); 
        // GET: Admin/Kho
        public ActionResult Index()
        {

            return View(db.khoes.ToList());
        }

        public JsonResult GetKho(int id)
        {
            kho ko = db.khoes.Find(id);
            //RedirectToAction("Index");
            return Json(ko, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult GET(int id)
        {
            var ds = db.khoes.Where(s => s.makho == id).Select(x => new { makho = x.makho, tenkho = x.tenkho, kihieu = x.kihieu, ghichu = x.ghichu }).ToList().SingleOrDefault();

            return Json(new { success = true, dt = ds }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Create(kho entity)
        {
            try
            {
                db.khoes.Add(entity);
                var rs = db.SaveChanges();

                return Json(new { msg = rs, message = "Thêm mới thành công" }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(new { success = true, message = "loi roi" }, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult Update(kho entity)
        {
            db.Entry(entity).State = System.Data.Entity.EntityState.Modified;

            var rs = db.SaveChanges();
            return Json(new { msg = rs }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Delete(int makho)
        {
            //var ds = db.khoes.Where(s => s.makho == id).Select(x => new { makho = x.makho, tenkho = x.tenkho, kihieu = x.kihieu, ghichu = x.ghichu }).ToList().SingleOrDefault();
            try
            {
                kho ko = db.khoes.Find(makho);
                db.khoes.Remove(ko);
                db.SaveChanges();

                return Json(new { success = true, dt = ko }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(new { success = false, message="Không thể xóa" }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}