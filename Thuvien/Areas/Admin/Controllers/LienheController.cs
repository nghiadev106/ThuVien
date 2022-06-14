using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThuVien.Models;

namespace ThuVien.Areas.Admin.Controllers
{
    public class LienheController : NguoidungController
    {
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Admin/Lienhe
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]

        public ActionResult LoadEmail()
        {
            var rs = (from lh in db.lienhes orderby lh.ngaygui descending select new { lh.id, lh.hoten, lh.email, lh.noidung, lh.ngaygui, lh.trangthai }).ToList();
            
            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult Reademail(int id)
        {
            lienhe a = db.lienhes.Find(id);
            a.trangthai = true;
            db.Entry(a).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            var rs = (from lh in db.lienhes where lh.id==id select new { id=lh.id, hoten=lh.hoten, email=lh.email, noidung=lh.noidung, ngaygui=lh.ngaygui, trangthai=lh.trangthai }).SingleOrDefault();
            DateTime ngay = rs.ngaygui.Value;
            int year = ngay.Year;
            return Json(new { dt = rs,y= year }, JsonRequestBehavior.AllowGet);
        }
    }
}