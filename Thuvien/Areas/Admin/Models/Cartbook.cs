using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ThuVien.Areas.Admin.Models
{
    public class Cartbook
    {
        public int macabiet { set; get; }
        public int? masach { set; get; }
        public string tensach { set; get; }
        public string imgurl { set; get; }
        public string tentacgia { set; get; }
        public bool? trangthai { set; get; }
    }
}