namespace Project4Thuvien.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("loaidocgia")]
    public partial class loaidocgia
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public loaidocgia()
        {
            docgias = new HashSet<docgia>();
        }

        [Key]
        public int maloaidocgia { get; set; }

        [StringLength(100)]
        public string tenloai { get; set; }

        [StringLength(50)]
        public string kihieu { get; set; }

        public string ghichu { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<docgia> docgias { get; set; }
    }
}
