using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThuVien.Models;

namespace ThuVien.Areas.Admin.Controllers
{
    public class NhacungcapController : NguoidungController
    {
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Admin/Nhacungcap
        public ActionResult Index()
        {
            return View(db.nccs.ToList());
        }
        public JsonResult Create(ncc nc)
        {
            db.nccs.Add(nc);
            var rs=db.SaveChanges();
            return Json(rs, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Get(int id)
        {
            var nc = db.nccs.Where(x => x.mancc == id).Select(x => new { mancc = x.mancc, tenncc = x.tenncc, diachi = x.diachi, dienthoai = x.dienthoai, email = x.email, website = x.website }).ToList().SingleOrDefault();
            return Json(nc, JsonRequestBehavior.AllowGet);
        }

        public JsonResult Edit(int mancc,string tenncc,string diachi,string dienthoai,string email,string website)
        {
            ncc nc = db.nccs.Find(mancc);
            nc.tenncc = tenncc;
            nc.diachi = diachi;
            nc.dienthoai = dienthoai;
            nc.email = email;
            nc.website = website;

            db.Entry(nc).State = System.Data.Entity.EntityState.Modified;
            var rs=db.SaveChanges();

            return Json(rs, JsonRequestBehavior.AllowGet);
        }

        public JsonResult Delete(int id)
        {
            ncc nc = db.nccs.Find(id);
            db.nccs.Remove(nc);
            var rs=db.SaveChanges();
            return Json(rs, JsonRequestBehavior.AllowGet);
        }
    }
}