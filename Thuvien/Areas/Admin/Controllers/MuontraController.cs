using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThuVien.Models;
using ThuVien.Areas.Admin.Models;

namespace ThuVien.Areas.Admin.Controllers
{
    public class MuontraController : NguoidungController
    {
        ThuvienDbContext db = new ThuvienDbContext();
        // GET: Admin/Muontra
        public ActionResult Index()
        {
            var rs = from pm in db.muontras orderby pm.ngaymuon descending select pm;
            return View(rs);
        }
        public ActionResult Phieudatra()
        {
            var rs = from pm in db.muontras where pm.trangthai==true orderby pm.ngaymuon descending select pm;
            return View(rs);
        }
        public ActionResult Phieuchuatra()
        {
            var rs = from pm in db.muontras where pm.trangthai == false orderby pm.ngaymuon descending select pm;
            return View(rs);
        }
        public ActionResult Phieuquahan()
        {
            Session["quahan"] = new List<phieumuon>();  // Khởi tạo 
            List<phieumuon> quahan = Session["quahan"] as List<phieumuon>;
            var ds = db.muontras.Where(x=>x.trangthai==false).ToList();
            foreach(var item in ds)
            {
                DateTime today = DateTime.Now;
                DateTime ngaytra = Convert.ToDateTime(item.hantra);
                TimeSpan Time = ngaytra - today;
                int TongSoNgay = Time.Days;
                if (TongSoNgay < 0)
                {
                    phieumuon newItem = new phieumuon()
                    {
                        maphieu = item.maphieu,
                        ngaymuon = item.ngaymuon,
                        hantra = item.hantra,
                        sothe=item.sothe,
                        tendocgia=item.docgia.tendocgia,
                        trangthai=item.trangthai
                    };  // Tạo ra 1 danh sách mới

                    quahan.Add(newItem);  // Thêm  
                }
            }
            return View(quahan);
        }
        public ActionResult Addthongtin()
        {
            var rs = db.saches.ToList();
            ViewBag.sothe = new SelectList(db.docgias, "sothe", "sothe");
            return View(rs);
        }

        public ActionResult Tratailieu(string id)
        {
            return View();
        }

        [HttpPost]
        public ActionResult Trasach(int macabiet)
        {
            if (db.chitietmuontras.Where(x => x.macabiet == macabiet&&x.trangthai==false).Count()==1)
            {
                var ct = db.chitietmuontras.Where(x => x.macabiet == macabiet && x.trangthai == false).SingleOrDefault();
                return Json(new { success = true ,mp=ct.maphieu},  JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { success = false,ms="không tìm thấy thông tin phiếu" }, JsonRequestBehavior.AllowGet);
            }
        }
        public ActionResult Deltai(string id)
        {

            var rs = db.muontras.Find(id);

            if ((db.chitietmuontras.Where(x => x.maphieu == id).Count()) == (db.chitietmuontras.Where(x => x.maphieu == id && x.trangthai == true).Count()))
            {
                rs.trangthai = true;
                db.Entry(rs).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
            else
            {
                rs.trangthai = false;
                db.Entry(rs).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
            return View(rs);
        }
        [HttpPost]
        public ActionResult GetSothe(string sothe)
        {
            var rs = db.docgias.Where(x => x.sothe == sothe).Select(x => new { sothe = x.sothe, tendocgia = x.tendocgia, tenloai = x.loaidocgia.tenloai, tienthe = x.tienthe }).ToList().SingleOrDefault();
            return Json(new { success = true,dt=rs,sothe=sothe }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult Status(int id)
        {
            chitietmuontra ct = db.chitietmuontras.Find(id);
            muontra mt = db.muontras.Find(ct.maphieu);
            kihieucabiet khcb = db.kihieucabiets.Find(ct.macabiet);
            //if (ct.trangthai == true)
            //{

            //    mt.lichsu = "<p><i class='fa fa-circle - o'></i> bỏ trả <b>"+khcb.sach.tensach+"</b> vào lúc " + DateTime.Now.ToString() + " </p>"+mt.lichsu;
            //    ct.trangthai = false;
            //    ct.ngaytra = null;
            //    khcb.trangthai = false;
            //}
            if (ct.trangthai == false)
            {
                mt.lichsu = "<p><i class='fa fa-circle - o'></i> đã trả <b>" + khcb.sach.tensach + "</b> vào lúc " + DateTime.Now.ToString() + " </p>"+ mt.lichsu;
                ct.trangthai = true;
                ct.ngaytra = DateTime.Now;
                khcb.trangthai = true;
            }
            db.Entry(ct).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            db.Entry(mt).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            db.Entry(khcb).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            return Json(new { success = true }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult DeleteP(string id)
        {
            var ct = db.chitietmuontras.Where(x=>x.maphieu==id);
            muontra mt = db.muontras.Find(id);

            //foreach(var item in ct)
            //{
            //    kihieucabiet khcb = db.kihieucabiets.Find(item.macabiet);
            //    khcb.trangthai = true;
            //    db.Entry(khcb).State = System.Data.Entity.EntityState.Modified;
            //    db.SaveChanges();
            //}

            db.chitietmuontras.RemoveRange(ct);
            db.SaveChanges();

            db.muontras.Remove(mt);
            db.SaveChanges();
            return Json(new { success = true }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult Getdanhsach()
        {
            if (Session["muontra"] == null) // Nếu danh sách chưa được khởi tạo
            {
                Session["muontra"] = new List<Cartbook>();  // Khởi tạo 
            }
            List<Cartbook> muontra = Session["muontra"] as List<Cartbook>;
            if (muontra.Count() > 0)
            {
                return Json(new { success = true, dt = muontra }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { success = false }, JsonRequestBehavior.AllowGet);
            }
        }
        //[HttpPost]

        //public ActionResult GetMCB(int masach)
        //{
        //    var rs = db.kihieucabiets.Where(x => x.masach == masach).Select(x => new { macabiet = x.macabiet, trangthai = x.trangthai }).ToList();
        //    return Json(new { dt = rs }, JsonRequestBehavior.AllowGet);
        //}
        [HttpPost]

        public ActionResult Muonsach(int macabiet)
        {
            if (Session["muontra"] == null) // Nếu danh sách chưa được khởi tạo
            {
                Session["muontra"] = new List<Cartbook>();  // Khởi tạo 
            }

            List<Cartbook> muontra = Session["muontra"] as List<Cartbook>;
            if (db.kihieucabiets.Where(x=>x.macabiet==macabiet&&x.trangthai==true).Count()>0)
            {
                if (muontra.FirstOrDefault(m => m.macabiet == macabiet) == null) // ko co sách nay trong danh sách
                {
                    kihieucabiet sp = db.kihieucabiets.Find(macabiet);  // tim mcb theo id

                    Cartbook newItem = new Cartbook()
                    {
                        macabiet = macabiet,
                        masach = sp.masach,
                        tensach = sp.sach.tensach,
                        trangthai = sp.trangthai


                    };  // Tạo ra 1 danh sách mới

                    muontra.Add(newItem);  // Thêm  
                    return Json(new { success = true }, JsonRequestBehavior.AllowGet);

                }
                else
                {
                    // Nếu mcb đã có trong danh sách thì không thêm vào nữa
                    return Json(new { success = false, ms = "bạn vừa chọn mượn cuốn này rồi" }, JsonRequestBehavior.AllowGet);
                }
            }
            else
            {
                return Json(new { success = false, ms = "không tim thấy mã cá biệt" }, JsonRequestBehavior.AllowGet);
            }
           // var rs = db.kihieucabiets.Where(x => x.macabiet == macabiet).Select(x => new { macabiet = x.macabiet, masach = x.masach, trangthai = x.trangthai }).ToList().SingleOrDefault();
            
        }

        [HttpPost]

        public ActionResult Delete(int macabiet)
        {
            try
            {
                List<Cartbook> muontra = Session["muontra"] as List<Cartbook>;
                Cartbook item = muontra.FirstOrDefault(m => m.macabiet == macabiet);
                if (item != null)
                {
                    muontra.Remove(item);
                }

                return Json(new { success = true }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(new { success = false }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]

        public ActionResult Dangki(string sothe, DateTime hantra, string ghichu)
        {
            if (Session["muontra"] == null) // Nếu danh sách chưa được khởi tạo
            {
                Session["muontra"] = new List<Cartbook>();  // Khởi tạo 
            }
            List<Cartbook> muontra = Session["muontra"] as List<Cartbook>;
            if (muontra.Count() > 0)
            {
                muontra mt = new muontra();
                Random random = new Random();
            kt:
                string mp = "MP" + random.Next(1000, 2000).ToString();
                var ktmp = db.muontras.Find(mp);
                if (ktmp != null)
                {
                    goto kt;
                }
                mt.maphieu = mp;
                mt.ngaymuon = DateTime.Now;
                mt.ghichu = ghichu;
                mt.lichsu = "<p><i class='fa fa-circle - o'></i> đã đăng kí phiếu vào lúc "+ DateTime.Now.ToString()+ " </p>";
                mt.trangthai = false;
                mt.sothe = sothe;
                mt.hantra = hantra;
               

               
                if (db.docgias.Where(x=>x.sothe==sothe&&x.tienthe-2000<0).Count()==0)
                {
                    db.muontras.Add(mt);
                    db.SaveChanges();
                    var docgia = db.docgias.Find(sothe);
                    docgia.tienthe=docgia.tienthe - 2000;
                    db.Entry(docgia).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                    foreach (var item in muontra)
                    {
                        chitietmuontra ct = new chitietmuontra();
                        ct.ngaymuon = DateTime.Now;
                        ct.trangthai = false;
                        ct.masach = item.masach;
                        ct.maphieu = mt.maphieu;
                        ct.macabiet = item.macabiet;
                        db.chitietmuontras.Add(ct);
                        db.SaveChanges();

                        kihieucabiet khcb = db.kihieucabiets.Find(item.macabiet);
                        khcb.trangthai = false;
                        db.Entry(khcb).State = System.Data.Entity.EntityState.Modified;
                        db.SaveChanges();
                    }
                    Session["muontra"] = null;

                    return Json(new { success = true, ms = "đăng kí phiếu thành công cho " + sothe }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { success = false, ms = "thẻ không đủ tiền để đăng kí phiếu " + sothe }, JsonRequestBehavior.AllowGet);
                }
            }
            else
            {
                return Json(new { success = false, ms = "bạn cần chọn tài liệu cần mượn" }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}