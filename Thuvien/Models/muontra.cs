namespace ThuVien.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("muontra")]
    public partial class muontra
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public muontra()
        {
            chitietmuontras = new HashSet<chitietmuontra>();
        }

        [Key]
        [StringLength(20)]
        public string maphieu { get; set; }

        public DateTime? ngaymuon { get; set; }

        public DateTime? hantra { get; set; }

        public string ghichu { get; set; }

        public string lichsu { get; set; }

        public bool? trangthai { get; set; }

        [StringLength(20)]
        public string sothe { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chitietmuontra> chitietmuontras { get; set; }

        public virtual docgia docgia { get; set; }
    }
}
