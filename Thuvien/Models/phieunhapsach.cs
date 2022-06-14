namespace ThuVien.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("phieunhapsach")]
    public partial class phieunhapsach
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public phieunhapsach()
        {
            chitietphieunhaps = new HashSet<chitietphieunhap>();
        }

        [Key]
        public int maphieunhap { get; set; }

        public DateTime? ngaynhap { get; set; }

        public int? mancc { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chitietphieunhap> chitietphieunhaps { get; set; }

        public virtual ncc ncc { get; set; }
    }
}
