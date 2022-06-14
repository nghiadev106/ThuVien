namespace ThuVien.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("chitietphieunhap")]
    public partial class chitietphieunhap
    {
        public int id { get; set; }

        public int? soluong { get; set; }

        public int? masach { get; set; }

        public int? maphieunhap { get; set; }

        public virtual phieunhapsach phieunhapsach { get; set; }

        public virtual sach sach { get; set; }
    }
}
