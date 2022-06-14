using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project4Thuvien.Models;
using System.IO;

namespace Project4Thuvien.Areas.Admin.Controllers
{
    public class AdminController : NguoidungController
    {   
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Admin/Admin
        public ActionResult Index()
        {
            var rs = db.nguoidungs.ToList();
            return View(rs);
        }
        [HttpPost]
        public ActionResult Create(string username,string password, string name,string diachi, HttpPostedFileBase imgurl)
        {
            nguoidung nd = new nguoidung();
            nd.username = username;
            nd.password = password;
            nd.name = name;
            nd.diachi = diachi;

            if (imgurl != null && imgurl.ContentLength > 0)
            {
                var filename = Path.GetFileName(imgurl.FileName);
                nd.imgurl = filename;
                var path = Path.Combine(Server.MapPath("~/Images/admin/"), filename);
                imgurl.SaveAs(path);
            }
            else
            {
                nd.imgurl = "avatar5.png";
            }

            //if (db.nguoidungs.Where(x => x.username == username).Count() < 1)
            //{
            //    db.nguoidungs.Add(nd);
            //    db.SaveChanges();
            //    return Json(new { success = true, ms = "Tạo tài khoản thành công" }, JsonRequestBehavior.AllowGet);
            //}
            //else
            //{
            //    return Json(new { success = false, ms = "tài khoản đã tồn tại" }, JsonRequestBehavior.AllowGet);
            //}
            db.nguoidungs.Add(nd);
            db.SaveChanges();

            return RedirectToAction("Index");

        }

        [HttpPost]

        public ActionResult Delete(int id)
        {
            nguoidung nd = db.nguoidungs.Find(id);
            db.nguoidungs.Remove(nd);
            db.SaveChanges();

            return Json(new { success = true, ms = "xóa thành công" }, JsonRequestBehavior.AllowGet);
        }
    }
}