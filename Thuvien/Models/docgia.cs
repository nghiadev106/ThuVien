namespace ThuVien.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("docgia")]
    public partial class docgia
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public docgia()
        {
            muontras = new HashSet<muontra>();
            phieutams = new HashSet<phieutam>();
        }

        [Key]
        [StringLength(20)]
        public string sothe { get; set; }

        [StringLength(50)]
        public string password { get; set; }

        [StringLength(100)]
        public string tendocgia { get; set; }

        public DateTime? ngaysinh { get; set; }

        [StringLength(100)]
        public string diachi { get; set; }

        [StringLength(20)]
        public string sdt { get; set; }

        public bool? gioitinh { get; set; }

        public DateTime? ngaythem { get; set; }

        public bool? trangthai { get; set; }

        public int? maloaidocgia { get; set; }

        public DateTime? hanthe { get; set; }

        public double? tienthe { get; set; }

        [Column(TypeName = "text")]
        public string imgurl { get; set; }

        public virtual loaidocgia loaidocgia { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<muontra> muontras { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<phieutam> phieutams { get; set; }
    }
}
