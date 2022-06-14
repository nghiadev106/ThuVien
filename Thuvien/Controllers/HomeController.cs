using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project4Thuvien.Models;
using Project4Thuvien.Areas.Page.Models;

namespace Project4Thuvien.Controllers
{
    public class HomeController : Controller
    {
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Page/Home
        public ActionResult Index()
        {      
            return View();
        }

        [HttpPost]
        public ActionResult Danhmuc1()
        {
            //var rs = db.theloais.Select(x => new { tentheloai = x.tentheloai }).Take(10).ToList();
            var rs = (from dm in db.theloais select dm.tentheloai).Take(10).ToList();
            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Danhmuc2_1()
        {
            var rs = db.theloais.Select(x => new { tentheloai = x.tentheloai }).Take(4).ToList();
            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Danhmuc2_2()
        {
            var rs = db.theloais.OrderBy(x=>x.matheloai).Skip(4).Take(4).Select(x => new { tentheloai = x.tentheloai });
            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Team1()
        {
            var rs = db.nguoidungs.OrderBy(x => x.id).Take(1).Select(x => new { name = x.name,diachi=x.diachi,imgurl=x.imgurl }).SingleOrDefault();
            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult Team2()
        {
            var rs = db.nguoidungs.OrderBy(x => x.id).Skip(1).Take(1).Select(x => new { name = x.name, diachi = x.diachi, imgurl = x.imgurl }).SingleOrDefault();
            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult Team3()
        {
            var rs = db.nguoidungs.OrderBy(x => x.id).Skip(2).Take(1).Select(x => new { name = x.name, diachi = x.diachi, imgurl = x.imgurl }).SingleOrDefault();
            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult Team4()
        {
            var rs = db.nguoidungs.OrderBy(x => x.id).Skip(3).Take(1).Select(x => new { name = x.name, diachi = x.diachi, imgurl = x.imgurl }).SingleOrDefault();
            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult Soitem()
        {
            var rs = db.saches.Count();
            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult Count_Docgia()
        {
            var rs = db.docgias.Count();
            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult Count_Kho()
        {
            var rs = db.khoes.Count();
            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult Count_Theloai()
        {
            var rs = db.theloais.Count();
            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]

        public ActionResult Tacgianoibat()
        {
            bool kt = true;
            var toptacgia = new List<TacgiaT>();
            List<TacgiaT> item = toptacgia as List<TacgiaT>;
            var ctm = db.chitietmuontras.ToList();
            foreach(var itemct in ctm)
            {
                var tl = db.saches.Find(itemct.masach);
                var tg = db.tacgias.Find(tl.matacgia);
                if (item.Count() != 0)
                {
                    TacgiaT itemtg = toptacgia.FirstOrDefault(x => x.matacgia == tg.matacgia);
                    if (itemtg != null)
                    {
                        itemtg.top = itemtg.top + 1;
                        kt = false;
                    }
                    else
                    {
                        kt = true;
                    }
                }
                if (kt == true)
                {
                    TacgiaT addtg = new TacgiaT()
                    {
                        matacgia = tg.matacgia,
                        tentacgia = tg.tentacgia,
                        nguyenquan=tg.nguyenquan,
                        imgurl = tg.imgurl,
                        top = 1

                    };
                    item.Add(addtg);
                }
            }
            var rs = (from tg in item orderby tg.top descending select tg).Take(4);
            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        }
    }
}