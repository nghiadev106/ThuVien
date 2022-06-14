namespace ThuVien.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("sach")]
    public partial class sach
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public sach()
        {
            chitietmuontras = new HashSet<chitietmuontra>();
            chitietphieunhaps = new HashSet<chitietphieunhap>();
            chitietphieutams = new HashSet<chitietphieutam>();
            kihieucabiets = new HashSet<kihieucabiet>();
        }

        [Key]
        public int masach { get; set; }

        public int? ISBN { get; set; }

        [StringLength(200)]
        public string tensach { get; set; }

        public int? sotrang { get; set; }

        public int? namxuatban { get; set; }

        public int? solantaiban { get; set; }

        public double giabia { get; set; }

        public string tomtatnoidung { get; set; }

        public DateTime? ngaythem { get; set; }

        [Column(TypeName = "text")]
        public string imgurl { get; set; }

        public bool? trangthai { get; set; }

        public int? makho { get; set; }

        public int? matacgia { get; set; }

        public int? mangonngu { get; set; }

        public int? mancc { get; set; }

        public int? manxb { get; set; }

        public int? matheloai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chitietmuontra> chitietmuontras { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chitietphieunhap> chitietphieunhaps { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chitietphieutam> chitietphieutams { get; set; }

        public virtual kho kho { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<kihieucabiet> kihieucabiets { get; set; }

        public virtual ncc ncc { get; set; }

        public virtual ngonngu ngonngu { get; set; }

        public virtual nxb nxb { get; set; }

        public virtual tacgia tacgia { get; set; }

        public virtual theloai theloai { get; set; }
    }
}
