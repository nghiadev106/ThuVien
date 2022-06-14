using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project4Thuvien.Models;
using Project4Thuvien.Areas.Admin.Models;

namespace Project4Thuvien.Controllers
{
    public class ProductCatalogController : Controller
    {
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Page/ProductCatalog
        public ActionResult Index()
        {
            ViewBag.matacgia = new SelectList(db.tacgias, "matacgia", "tentacgia");
            ViewBag.matheloai = new SelectList(db.theloais, "matheloai", "tentheloai");
            return View();
        }
        public ActionResult Chitiettailieu(int id)
        {
            var sa = db.saches.Find(id);
            ViewBag.sanpham = db.saches.Where(x => x.matheloai == sa.matheloai).Take(4).ToList();
            return View(sa);
        }
        [HttpPost]
        public ActionResult Danhmucsanpham(int page,int? matacgia,int? matheloai,string search)
        {
            if (search == "")
            {
                if (matheloai == null && matacgia == null)
                {
                    var rs = (from sp in db.saches orderby sp.ngaythem descending select new { masach = sp.masach, tensach = sp.tensach, tentheloai = sp.theloai.tentheloai, giabia = sp.giabia, sosach1 = sp.kihieucabiets.Where(x => x.trangthai == true).Count(), sosach2 = sp.kihieucabiets.Count(), imgurl = sp.imgurl }).Skip((page - 1) * 12).Take(12);
                    return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    if (matacgia == null && matheloai != null)
                    {
                        var rs = (from sp in db.saches where sp.matheloai == matheloai orderby sp.ngaythem descending select new { masach = sp.masach, tensach = sp.tensach, tentheloai = sp.theloai.tentheloai, giabia = sp.giabia, sosach1 = sp.kihieucabiets.Where(x => x.trangthai == true).Count(), sosach2 = sp.kihieucabiets.Count(), imgurl = sp.imgurl }).Skip((page - 1) * 12).Take(12);
                        return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
                    }
                    else
                    {
                        if (matacgia != null && matheloai == null)
                        {
                            var rs = (from sp in db.saches where sp.matacgia == matacgia orderby sp.ngaythem descending select new { masach = sp.masach, tensach = sp.tensach, tentheloai = sp.theloai.tentheloai, giabia = sp.giabia, sosach1 = sp.kihieucabiets.Where(x => x.trangthai == true).Count(), sosach2 = sp.kihieucabiets.Count(), imgurl = sp.imgurl }).Skip((page - 1) * 12).Take(12);
                            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
                        }
                        else
                        {
                            if (matheloai != null && matacgia != null)
                            {
                                var rs = (from sp in db.saches where sp.matacgia == matacgia && sp.matheloai == matheloai orderby sp.ngaythem descending select new { masach = sp.masach, tensach = sp.tensach, tentheloai = sp.theloai.tentheloai, giabia = sp.giabia, sosach1 = sp.kihieucabiets.Where(x => x.trangthai == true).Count(), sosach2 = sp.kihieucabiets.Count(), imgurl = sp.imgurl }).Skip((page - 1) * 12).Take(12);
                                return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
                            }
                            else
                            {
                                return Json(JsonRequestBehavior.AllowGet);
                            }
                        }
                    }
                }
            }
            else
            {
                var rs = (from sp in db.saches where sp.tensach.Contains(search) orderby sp.ngaythem descending select new { masach = sp.masach, tensach = sp.tensach, tentheloai = sp.theloai.tentheloai, giabia = sp.giabia, sosach1 = sp.kihieucabiets.Where(x => x.trangthai == true).Count(), sosach2 = sp.kihieucabiets.Count(), imgurl = sp.imgurl }).Skip((page - 1) * 12).Take(12);
                return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
            }
                      
        }

        [HttpPost]

        public ActionResult Pagelist(int? matacgia, int? matheloai,string search)
        {
            if (search == "")
            {
                if (matheloai == null && matacgia == null)
                {
                    double tong = db.saches.Count();
                    double trang = tong / 12;
                    if (trang % 2 != 0)
                    {
                        trang = (int)trang + 1;
                    }
                    return Json(new { dp = (int)trang }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    if (matacgia == null && matheloai != null)
                    {
                        double tong = db.saches.Where(x => x.matheloai == matheloai).Count();
                        double trang = tong / 12;
                        if (trang % 2 != 0)
                        {
                            trang = (int)trang + 1;
                        }
                        return Json(new { dp = (int)trang }, JsonRequestBehavior.AllowGet);
                    }
                    else
                    {
                        if (matacgia != null && matheloai == null)
                        {
                            double tong = db.saches.Where(x => x.matacgia == matacgia).Count();
                            double trang = tong / 12;
                            if (trang % 2 != 0)
                            {
                                trang = (int)trang + 1;
                            }
                            return Json(new { dp = (int)trang }, JsonRequestBehavior.AllowGet);
                        }
                        else
                        {
                            if (matheloai != null && matacgia != null)
                            {
                                double tong = db.saches.Where(x => x.matacgia == matacgia && x.matheloai == matheloai).Count();
                                double trang = tong / 12;
                                if (trang % 2 != 0)
                                {
                                    trang = (int)trang + 1;
                                }
                                return Json(new { dp = (int)trang }, JsonRequestBehavior.AllowGet);
                            }
                            else
                            {
                                return Json(JsonRequestBehavior.AllowGet);
                            }
                        }
                    }
                }
            }
            else
            {
                double tong = db.saches.Where(x => x.tensach.Contains(search)).Count();
                double trang = tong / 12;
                if (trang % 2 != 0)
                {
                    trang = (int)trang + 1;
                }
                return Json(new { dp = (int)trang }, JsonRequestBehavior.AllowGet);
            }

        }

        [HttpPost]

        public ActionResult GetMCB(int masach)
        {
            var rs = db.kihieucabiets.Where(x => x.masach == masach).Select(x => new { macabiet = x.macabiet, trangthai = x.trangthai }).ToList();
            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]

        public ActionResult Muonsach(int macabiet)
        {
            if (Session["shopcart"] == null) // Nếu danh sách chưa được khởi tạo
            {
                Session["shopcart"] = new List<Cartbook>();  // Khởi tạo 
            }

            List<Cartbook> muontra = Session["shopcart"] as List<Cartbook>;
            if (muontra.FirstOrDefault(m => m.macabiet == macabiet) == null) // ko co sách nay trong danh sách
            {
                kihieucabiet sp = db.kihieucabiets.Find(macabiet);  // tim mcb theo id

                Cartbook newItem = new Cartbook()
                {
                    macabiet = macabiet,
                    masach = sp.masach,
                    tensach = sp.sach.tensach,
                    imgurl=sp.sach.imgurl,
                    tentacgia=sp.sach.tacgia.tentacgia,
                    trangthai = sp.trangthai


                };  // Tạo ra 1 danh sách mới

                muontra.Add(newItem);  // Thêm  
                return Json(new { success = true, ms = "mượn thành công" }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                // Nếu mcb đã có trong danh sách thì không thêm vào nữa
                return Json(new { success = false, ms = "bạn vừa chọn mượn cuốn này rồi" }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpGet]
        public ActionResult Loadtheloai()
        {
            var rs = db.theloais.Select(x => new { matheloai=x.matheloai,tentheloai=x.tentheloai }).ToList();
            return Json(new { dt=rs }, JsonRequestBehavior.AllowGet);
        }
        [HttpGet]
        public ActionResult Loadtacgia()
        {
            var rs = db.tacgias.Select(x => new { matacgia = x.matacgia, tentacgia = x.tentacgia }).ToList();
            return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        }
    }
}