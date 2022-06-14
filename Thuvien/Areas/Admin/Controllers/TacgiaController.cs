using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThuVien.Models;
using System.IO;

namespace ThuVien.Areas.Admin.Controllers
{
    public class TacgiaController : NguoidungController
    {
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Admin/Tacgia
        public ActionResult Index()
        {
            return View(db.tacgias.ToList());
        }

        public ActionResult Detail(int id)
        {
            tacgia tg = db.tacgias.Find(id);
            if (tg.gioitinh == true)
            {
                ViewBag.nam = "selected";
            }
            if (tg.gioitinh == false)
            {
                ViewBag.nu = "selected";
            }
            return View(tg);
        }
        public JsonResult Get(int id)
        {
            var ds = db.tacgias.Where(s => s.matacgia == id).Select(x => new { matacgia = x.matacgia, tentacgia = x.tentacgia, gioitinh = x.gioitinh, namsinh = x.namsinh,nguyenquan=x.nguyenquan }).ToList().SingleOrDefault();

            //RedirectToAction("Index");
            return Json(ds, JsonRequestBehavior.AllowGet);
        }
        public JsonResult Delete(int id)
        {
            tacgia ko = db.tacgias.Find(id);
            //var fullPath = Server.MapPath("~/Images/Tacgia/" + ko.imgurl);

            //if (System.IO.File.Exists(fullPath))
            //{
            //    System.IO.File.Delete(fullPath);
            //}

            db.tacgias.Remove(ko);

            var rs = db.SaveChanges();
            return Json(new { msg = rs }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Creater(HttpPostedFileBase anh,tacgia tg)
        {
            if(anh != null && anh.ContentLength > 0)
            {
                var filename = Path.GetFileName(anh.FileName);
                tg.imgurl = filename;
                var path = Path.Combine(Server.MapPath("~/Images/Tacgia/"), filename);
                anh.SaveAs(path);
            }
            db.tacgias.Add(tg);
            var rs = db.SaveChanges();

            return RedirectToAction("Index");
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit( int matacgia,string tentacgia,bool gioitinh,int namsinh,string nguyenquan, HttpPostedFileBase anh, string gioithieu)
        {
            tacgia tg = db.tacgias.Find(matacgia);

            tg.matacgia = matacgia;
            tg.tentacgia = tentacgia;
            tg.namsinh = namsinh;
            tg.nguyenquan = nguyenquan;
            tg.gioithieu = gioithieu;
            if (anh != null && anh.ContentLength > 0)
            {
                //var fullPath = Server.MapPath("~/Images/Tacgia/" + anh);

                //if (System.IO.File.Exists(fullPath))
                //{
                //    System.IO.File.Delete(fullPath);
                //}

                var filename = Path.GetFileName(anh.FileName);
                tg.imgurl = filename;
                var path = Path.Combine(Server.MapPath("~/Images/Tacgia/"), filename);
                anh.SaveAs(path);
            }
            if(gioitinh == true || gioitinh == false)
            {
                tg.gioitinh = gioitinh;
            }
            if (ModelState.IsValid)
            {
                db.Entry(tg).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Detail",new {id=tg.matacgia });
            }
            return RedirectToAction("Detail", new { id = tg.matacgia });
        }
    }
}