namespace Project4Thuvien.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("nguoidung")]
    public partial class nguoidung
    {
        public int id { get; set; }

        [StringLength(100)]
        public string username { get; set; }

        [StringLength(100)]
        public string password { get; set; }

        [StringLength(100)]
        public string name { get; set; }

        [StringLength(100)]
        public string diachi { get; set; }

        [Column(TypeName = "text")]
        public string imgurl { get; set; }

        public bool? status { get; set; }
    }
}
