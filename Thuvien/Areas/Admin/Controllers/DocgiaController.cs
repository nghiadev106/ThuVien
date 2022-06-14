using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThuVien.Models;
using System.IO;

namespace ThuVien.Areas.Admin.Controllers
{
    public class DocgiaController : NguoidungController
    {
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Admin/Docgia
        public ActionResult Index()
        {
            ViewBag.maloaidocgia = new SelectList(db.loaidocgias, "maloaidocgia", "tenloai");
            var ds = db.docgias.ToList();

            return View(ds);
        }
        public ActionResult Deltai(string sothe)
        {
            docgia dg = db.docgias.Find(sothe);
            ViewBag.maloaidocgia = new SelectList(db.loaidocgias, "maloaidocgia", "tenloai", dg.maloaidocgia);
            if (dg.gioitinh == true)
            {
                ViewBag.nam = "selected";
            }
            if (dg.gioitinh == false)
            {
                ViewBag.nu = "selected";
            }
            if (dg.trangthai == true)
            {
                ViewBag.active = "selected";
            }
            if (dg.trangthai == false)
            {
                ViewBag.block = "selected";
            }

            DateTime ngay1 = DateTime.Now;
            DateTime ngay2 = Convert.ToDateTime(dg.hanthe);
            TimeSpan Time = ngay2 - ngay1;
            int day = Time.Days;
            if (day > 0)
            {
                ViewBag.ngayconlai = day.ToString()+" ngày";
            }
            else ViewBag.ngayconlai = "Thẻ hết hạn";
            return View(dg);
        }

        public JsonResult Get(string sothe)
        {
            var ds = db.docgias.Where(x => x.sothe == sothe).Select(x => new { sothe = x.sothe, tendocgia = x.tendocgia, ngaysinh = x.ngaysinh, diachi = x.diachi, sdt = x.sdt }).ToList().SingleOrDefault();
            return Json(new { success = true, dt = ds, timed = ds.ngaysinh.ToString() }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Getcart(string sothe)
        {
            var ds = db.docgias.Where(x => x.sothe == sothe).Select(x => new { sothe = x.sothe }).ToList().SingleOrDefault();
            return Json(new { success = true, dt = ds }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult Delete(string sothe)
        {
            docgia dg = db.docgias.Find(sothe);
            db.docgias.Remove(dg);
            var rs = db.SaveChanges();

            return Json(rs, JsonRequestBehavior.AllowGet);
        }

        public JsonResult CapnhapCart(string sothe,double tienthe)
        {
            docgia dg = db.docgias.Find(sothe);
            //db.docgias.Remove(dg);
            if(dg.tienthe+tienthe<0)
            {
                return Json(new { error = false,ms="số tiền trừ lớn hơn số tiền hiện tại" }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                dg.tienthe = dg.tienthe + tienthe;
                db.Entry(dg).State = System.Data.Entity.EntityState.Modified;
                var rs = db.SaveChanges();

                return Json(new { success=true, ms = "cập nhập thành công" }, JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]

        public ActionResult Create(int maloaidocgia, string tendocgia, DateTime ngaysinh, string diachi, string sdt, bool gioitinh, HttpPostedFileBase imgurl, bool trangthai)
        {
            docgia dg = new docgia();
            Random random = new Random();
        sothe:
            string st = "ST" + random.Next(1000, 2000).ToString();
            var ktdg = db.docgias.Find(st);
            if (ktdg != null)
            {
                goto sothe;
            }
            dg.sothe = st;
            dg.tendocgia = tendocgia;
            dg.maloaidocgia = maloaidocgia;
            dg.ngaysinh = ngaysinh;
            dg.diachi = diachi;
            dg.sdt = sdt;
            dg.gioitinh = gioitinh;

            dg.trangthai = trangthai;

            if (imgurl != null && imgurl.ContentLength > 0)
            {
                var filename = Path.GetFileName(imgurl.FileName);
                dg.imgurl = filename;
                var path = Path.Combine(Server.MapPath("~/Images/docgia/"), filename);
                imgurl.SaveAs(path);
            }
            dg.tienthe = 0;
            dg.ngaythem = DateTime.Now;
            dg.hanthe = dg.ngaythem.Value.AddYears(1);

            db.docgias.Add(dg);
            db.SaveChanges();

            return RedirectToAction("Index");
        }

        [HttpPost]

        public ActionResult Edit(string sothe, int maloaidocgia, string tendocgia, DateTime ngaysinh, string diachi, string sdt, bool gioitinh, HttpPostedFileBase imgurl, bool trangthai)
        {
            docgia dg = db.docgias.Find(sothe);

            dg.tendocgia = tendocgia;
            dg.maloaidocgia = maloaidocgia;
            dg.ngaysinh = ngaysinh;
            dg.diachi = diachi;
            dg.sdt = sdt;
            dg.gioitinh = gioitinh;

            dg.trangthai = trangthai;

            if (imgurl != null && imgurl.ContentLength > 0)
            {
                var filename = Path.GetFileName(imgurl.FileName);
                dg.imgurl = filename;
                var path = Path.Combine(Server.MapPath("~/Images/docgia/"), filename);
                imgurl.SaveAs(path);
            }

            db.Entry(dg).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();

            return RedirectToAction("Deltai", new { sothe = dg.sothe });
        }
    }
}