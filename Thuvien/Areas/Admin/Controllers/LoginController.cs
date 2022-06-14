using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThuVien.Models;

namespace ThuVien.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Admin/Login
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
     
        public ActionResult Index(string username, string password)
        {
            var login = db.nguoidungs.Where(x => x.username == username && x.password == password).FirstOrDefault();
            if (login != null)
            {
                Session["nguoidung"] = login;

                return RedirectToAction("Index", "Home");
            }
            else
            {
                ViewBag.thongbao = "<script>alert('đăng nhập sai')</script>";
            }
            return View();
        }

        [HttpPost]
        public ActionResult Logout()
        {
            Session["nguoidung"] = null;
            return RedirectToAction("Index", "Login");
        }
    }
}