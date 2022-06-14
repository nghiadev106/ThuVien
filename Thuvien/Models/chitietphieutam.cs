namespace Project4Thuvien.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("chitietphieutam")]
    public partial class chitietphieutam
    {
        public int id { get; set; }

        public bool? trangthai { get; set; }

        public int? masach { get; set; }

        public int? maphieutam { get; set; }

        public int? macabiet { get; set; }

        public virtual kihieucabiet kihieucabiet { get; set; }

        public virtual phieutam phieutam { get; set; }

        public virtual sach sach { get; set; }
    }
}
