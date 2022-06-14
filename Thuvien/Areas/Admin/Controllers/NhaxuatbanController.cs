using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThuVien.Models;

namespace ThuVien.Areas.Admin.Controllers
{
    public class NhaxuatbanController : NguoidungController
    {
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Admin/Nhaxuatban
        public ActionResult Index()
        {
            var rs= from cust in db.nxbs
                    orderby cust.manxb descending
                    select cust;

            return View(rs);
        }

        public JsonResult Get(int id)
        {
            var ds = db.nxbs.Where(x => x.manxb == id).Select(x => new { manxb = x.manxb, tennxb = x.tennxb, diachi = x.diachi, dienthoai = x.dienthoai, email = x.email}).ToList().SingleOrDefault();

            return Json(ds, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Create(nxb nx)
        {
            db.nxbs.Add(nx);
            var rs = db.SaveChanges();
            return Json(rs, JsonRequestBehavior.AllowGet);
        }

        public JsonResult Edit(nxb nx)
        {
            db.Entry(nx).State = System.Data.Entity.EntityState.Modified;
            var rs=db.SaveChanges();

            return Json(rs, JsonRequestBehavior.AllowGet);
        }

        public JsonResult Delete(int id)
        {
            nxb nx = db.nxbs.Find(id);
            db.nxbs.Remove(nx);
            var rs=db.SaveChanges();
            return Json(rs, JsonRequestBehavior.AllowGet);
        }
    }
}