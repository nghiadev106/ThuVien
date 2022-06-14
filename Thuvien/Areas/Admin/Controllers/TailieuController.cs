using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project4Thuvien.Models;
using System.IO;

namespace Project4Thuvien.Areas.Admin.Controllers
{
    public class TailieuController : NguoidungController
    {
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Admin/Tailieu
        public ActionResult Index()
        {
            var rs = (from sa in db.saches orderby sa.masach descending select sa);
            return View(rs);
        }
        public ActionResult Create()
        {
            ViewBag.makho = new SelectList(db.khoes, "makho", "tenkho");
            ViewBag.mancc = new SelectList(db.nccs, "mancc", "tenncc");
            ViewBag.mangonngu = new SelectList(db.ngonngus, "mangonngu", "tenngonngu");
            ViewBag.manxb = new SelectList(db.nxbs, "manxb", "tennxb");
            ViewBag.matacgia = new SelectList(db.tacgias, "matacgia", "tentacgia");
            ViewBag.matheloai = new SelectList(db.theloais, "matheloai", "tentheloai");
            return View();
        }

        public ActionResult Edit(int masach)
        {
            var dt = db.saches.Find(masach);
            ViewBag.makho = new SelectList(db.khoes, "makho", "tenkho",dt.makho);
            ViewBag.mancc = new SelectList(db.nccs, "mancc", "tenncc", dt.mancc);
            ViewBag.mangonngu = new SelectList(db.ngonngus, "mangonngu", "tenngonngu",dt.mangonngu);
            ViewBag.manxb = new SelectList(db.nxbs, "manxb", "tennxb",dt.manxb);
            ViewBag.matacgia = new SelectList(db.tacgias, "matacgia", "tentacgia",dt.matacgia);
            ViewBag.matheloai = new SelectList(db.theloais, "matheloai", "tentheloai",dt.matheloai);
            return View(dt);
        }

        public ActionResult Deltai(int id)
        {
            var dt = db.saches.Find(id);
            var mcb=db.kihieucabiets.Where(x => x.masach == id).ToList();
            ViewBag.mcb = mcb;
            return View(dt);
        }
        [HttpPost]

        public ActionResult CreateMCB(int masach)
        {
           //try
           // {
                kihieucabiet khcb = new kihieucabiet();
                Random rd = new Random();
                string mcb = masach.ToString() + rd.Next(1,100).ToString();
                khcb.macabiet = Convert.ToInt32(mcb);
                khcb.masach = masach;
                khcb.trangthai = true;
                db.kihieucabiets.Add(khcb);
                var rs = db.SaveChanges();

                return Json(new { success = true,dt= khcb, ms = "thêm mã cá biệt thành công" }, JsonRequestBehavior.AllowGet);
            //}
            //catch
            //{
            //    return Json(new { success=false,ms="thêm mã cá biệt thất bại"}, JsonRequestBehavior.AllowGet);
            //}
        }

        [HttpPost]
        public ActionResult DeleteMCB(int macabiet)
        {
            try
            {
                kihieucabiet khcb = db.kihieucabiets.Find(macabiet);
                db.kihieucabiets.Remove(khcb);
                db.SaveChanges();
                return Json(new { success = true,dt = khcb, ms = "xóa mã cá biệt thành công" }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(new { success = false, ms = "xóa mã cá biệt thất bại" }, JsonRequestBehavior.AllowGet);
            }

        }
        [HttpPost]

        public ActionResult Delete(int masach)
        {
            sach sa = db.saches.Find(masach);
            var khcb = db.kihieucabiets.Where(x => x.masach == masach);
            db.kihieucabiets.RemoveRange(khcb);
            //db.SaveChanges();
            db.saches.Remove(sa);
            var rs = db.SaveChanges();

            return Json(rs, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(int isbn, string tensach, int sotrang, int namxuatban, int solantaiban, double giabia, HttpPostedFileBase imgurl, int makho, int matacgia, int mangonngu, int mancc, int manxb, int matheloai, string tomtatnoidung)
        {
            sach sa = new sach();
            sa.ISBN = isbn;
            sa.tensach = tensach;
            sa.sotrang = sotrang;
            sa.namxuatban = namxuatban;
            sa.solantaiban = solantaiban;
            sa.giabia = giabia;
            if (imgurl != null && imgurl.ContentLength > 0)
            {
                var filename = Path.GetFileName(imgurl.FileName);
                sa.imgurl = filename;
                var path = Path.Combine(Server.MapPath("~/Images/sach/"), filename);
                imgurl.SaveAs(path);
            }
            //sa.imgurl = imgurl;
            sa.makho = makho;
            sa.matacgia = matacgia;
            sa.mangonngu = mangonngu;
            sa.mancc = mancc;
            sa.manxb = manxb;
            sa.matheloai = matheloai;
            sa.tomtatnoidung = tomtatnoidung;
            sa.ngaythem = DateTime.Now;
            sa.trangthai = true;

            db.saches.Add(sa);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(int masach,int isbn,string tensach,int sotrang,int namxuatban,int solantaiban,int giabia,HttpPostedFileBase imgurl,
            int makho,int matacgia,int mangonngu,int mancc,int manxb,int matheloai,string tomtatnoidung)
        {
            sach sa =db.saches.Find(masach);
            sa.masach = masach;
            sa.ISBN = isbn;
            sa.tensach = tensach;
            sa.sotrang = sotrang;
            sa.namxuatban = namxuatban;
            sa.solantaiban = solantaiban;
            sa.giabia = giabia;

            if(imgurl!=null && imgurl.ContentLength > 0)
            {
                //var fullPath = Server.MapPath("~/Images/sach/" + sa.imgurl);

                //if (System.IO.File.Exists(fullPath))
                //{
                //    System.IO.File.Delete(fullPath);
                //}

                var filename = Path.GetFileName(imgurl.FileName);
                var path = Path.Combine(Server.MapPath("~/Images/sach/"), filename);

                sa.imgurl = filename;
                imgurl.SaveAs(path);
            }


            sa.makho = makho;
            sa.matacgia = matacgia;
            sa.mangonngu = mangonngu;
            sa.mancc = mancc;
            sa.manxb = manxb;
            sa.matheloai = matheloai;
            sa.tomtatnoidung = tomtatnoidung;

            if (ModelState.IsValid)
            {
                db.Entry(sa).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Deltai", new { id = masach });
            }
            return RedirectToAction("Deltai", new { id = masach });
        }
    } 
}