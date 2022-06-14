using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThuVien.Models;
using ThuVien.Areas.Admin.Models;

namespace ThuVien.Areas.Admin.Controllers
{
    public class HomeController : NguoidungController
    {
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Admin/Home
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Docgia_quahan()
        {
            bool kt = true;
            var docgia = new List<DocgiaT>();
            List<DocgiaT> item = docgia as List<DocgiaT>;
            foreach(var itempm in db.muontras.Where(x=>x.trangthai==false).ToList())
            {
                DateTime today = DateTime.Now;
                DateTime ngaytra = Convert.ToDateTime(itempm.hantra);
                TimeSpan Time = ngaytra - today;
                int TongSoNgay = Time.Days;
                if (TongSoNgay < 0)
                {
                    var dg = db.docgias.Find(itempm.sothe);
                    if (item.Count() != 0)
                    {
                        DocgiaT itemdg = docgia.FirstOrDefault(x => x.sothe == dg.sothe);
                        if (itemdg != null)
                        {
                            itemdg.sophieu = itemdg.sophieu + 1;
                            kt = false;
                        }
                        else
                        {
                            kt = true;
                        }
                    }
                    if (kt == true)
                    {
                        DocgiaT adddg = new DocgiaT()
                        {
                            sothe = dg.sothe,
                            tendocgia = dg.tendocgia,
                            sophieu = 1

                        };
                        item.Add(adddg);
                    }
                }
            }
            var rs = (from dg in item orderby dg.sophieu descending select dg);
            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        }
    }
}