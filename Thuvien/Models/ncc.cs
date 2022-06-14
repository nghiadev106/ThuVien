namespace ThuVien.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ncc")]
    public partial class ncc
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ncc()
        {
            phieunhapsaches = new HashSet<phieunhapsach>();
            saches = new HashSet<sach>();
        }

        [Key]
        public int mancc { get; set; }

        [StringLength(100)]
        public string tenncc { get; set; }

        [StringLength(100)]
        public string diachi { get; set; }

        [StringLength(20)]
        public string dienthoai { get; set; }

        [StringLength(100)]
        public string email { get; set; }

        [StringLength(100)]
        public string website { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<phieunhapsach> phieunhapsaches { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<sach> saches { get; set; }
    }
}
