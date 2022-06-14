namespace Project4Thuvien.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("lienhe")]
    public partial class lienhe
    {
        public int id { get; set; }

        [StringLength(100)]
        public string hoten { get; set; }

        [StringLength(100)]
        public string email { get; set; }

        public string noidung { get; set; }

        public DateTime? ngaygui { get; set; }

        public bool? trangthai { get; set; }
    }
}
