using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project4Thuvien.Models;

namespace Project4Thuvien.Areas.Admin.Controllers
{
    public class LoaidocgiaController : NguoidungController
    {
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Admin/Loaidocgia
        public ActionResult Index()
        {
            var rs = db.loaidocgias.ToList();
            return View(rs);
        }


        public JsonResult Get(int id)
        {
            var rs = db.loaidocgias.Where(x => x.maloaidocgia == id).Select(x => new { maloaidocgia = x.maloaidocgia, tenloai = x.tenloai, kihieu = x.kihieu, ghichu = x.ghichu }).ToList().SingleOrDefault();
            return Json(new { success=true,dt = rs }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Create(loaidocgia ldg)
        {
            db.loaidocgias.Add(ldg);
            var rs = db.SaveChanges();
            return Json(rs, JsonRequestBehavior.AllowGet);
        }

        public JsonResult Update(int maloaidocgia,string tenloai,string kihieu,string ghichu)
        {
            loaidocgia ldg = db.loaidocgias.Find(maloaidocgia);

            ldg.tenloai = tenloai;
            ldg.kihieu = kihieu;
            ldg.ghichu = ghichu;

            db.Entry(ldg).State = System.Data.Entity.EntityState.Modified;
            var ds=db.SaveChanges();

            return Json(new { success = true }, JsonRequestBehavior.AllowGet);

        }
        public JsonResult Delete(int maloaidocgia)
        {
            var ldg = db.loaidocgias.Find(maloaidocgia);
            db.loaidocgias.Remove(ldg);
            db.SaveChanges();

            return Json(new { success=true}, JsonRequestBehavior.AllowGet);
        }
    }
}