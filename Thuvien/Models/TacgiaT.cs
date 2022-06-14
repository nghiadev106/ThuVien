using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ThuVien.Areas.Page.Models
{
    public class TacgiaT
    {
        public int matacgia { get; set; }

        public string tentacgia { get; set; }

        public bool? gioitinh { get; set; }

        public int? namsinh { get; set; }

        public string nguyenquan { get; set; }
        public string imgurl { get; set; }

        public string gioithieu { get; set; }

        public int? top { set; get; }
    }
}