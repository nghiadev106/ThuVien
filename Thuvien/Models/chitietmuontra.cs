namespace ThuVien.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("chitietmuontra")]
    public partial class chitietmuontra
    {
        public int id { get; set; }

        public DateTime? ngaymuon { get; set; }

        public DateTime? ngaytra { get; set; }

        public bool? trangthai { get; set; }

        public int? masach { get; set; }

        [StringLength(20)]
        public string maphieu { get; set; }

        public int? macabiet { get; set; }

        public virtual muontra muontra { get; set; }

        public virtual kihieucabiet kihieucabiet { get; set; }

        public virtual sach sach { get; set; }
    }
}
