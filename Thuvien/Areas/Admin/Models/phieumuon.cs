using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project4Thuvien.Areas.Admin.Models
{
    public class phieumuon
    {
        public string maphieu { get; set; }

        public DateTime? ngaymuon { get; set; }

        public DateTime? hantra { get; set; }

        public string ghichu { get; set; }

        public string lichsu { get; set; }

        public bool? trangthai { get; set; }
        public string sothe { get; set; }
        public string tendocgia { get; set; }
    }
}