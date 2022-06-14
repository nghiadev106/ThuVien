using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project4Thuvien.Areas.Admin.Models
{
    public class DocgiaT
    {
        public string sothe { get; set; }

        public string password { get; set; }

        public string tendocgia { get; set; }

        public DateTime? ngaysinh { get; set; }

        public string diachi { get; set; }

        public string sdt { get; set; }

        public bool? gioitinh { get; set; }

        public DateTime? ngaythem { get; set; }

        public bool? trangthai { get; set; }

        public int? maloaidocgia { get; set; }

        public DateTime? hanthe { get; set; }

        public double? tienthe { get; set; }

        public string imgurl { get; set; }
        public int sophieu { get; set; }
    }
}