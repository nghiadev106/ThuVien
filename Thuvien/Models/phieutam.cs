namespace ThuVien.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("phieutam")]
    public partial class phieutam
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public phieutam()
        {
            chitietphieutams = new HashSet<chitietphieutam>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int maphieutam { get; set; }

        public DateTime? ngaydangki { get; set; }

        public DateTime? ngaylay { get; set; }

        public bool? trangthai { get; set; }

        public string ghichu { get; set; }

        [StringLength(20)]
        public string sothe { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chitietphieutam> chitietphieutams { get; set; }

        public virtual docgia docgia { get; set; }
    }
}
