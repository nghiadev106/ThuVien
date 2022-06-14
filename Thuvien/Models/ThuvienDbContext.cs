namespace Project4Thuvien.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ThuvienDbContext : DbContext
    {
        public ThuvienDbContext()
            : base("name=ThuvienDbContext")
        {
        }

        public virtual DbSet<chitietmuontra> chitietmuontras { get; set; }
        public virtual DbSet<chitietphieunhap> chitietphieunhaps { get; set; }
        public virtual DbSet<chitietphieutam> chitietphieutams { get; set; }
        public virtual DbSet<docgia> docgias { get; set; }
        public virtual DbSet<kho> khoes { get; set; }
        public virtual DbSet<kihieucabiet> kihieucabiets { get; set; }
        public virtual DbSet<lienhe> lienhes { get; set; }
        public virtual DbSet<loaidocgia> loaidocgias { get; set; }
        public virtual DbSet<muontra> muontras { get; set; }
        public virtual DbSet<ncc> nccs { get; set; }
        public virtual DbSet<ngonngu> ngonngus { get; set; }
        public virtual DbSet<nguoidung> nguoidungs { get; set; }
        public virtual DbSet<nxb> nxbs { get; set; }
        public virtual DbSet<phieunhapsach> phieunhapsaches { get; set; }
        public virtual DbSet<phieutam> phieutams { get; set; }
        public virtual DbSet<sach> saches { get; set; }
        public virtual DbSet<tacgia> tacgias { get; set; }
        public virtual DbSet<theloai> theloais { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<chitietmuontra>()
                .Property(e => e.maphieu)
                .IsUnicode(false);

            modelBuilder.Entity<docgia>()
                .Property(e => e.sothe)
                .IsUnicode(false);

            modelBuilder.Entity<docgia>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<docgia>()
                .Property(e => e.sdt)
                .IsUnicode(false);

            modelBuilder.Entity<docgia>()
                .Property(e => e.imgurl)
                .IsUnicode(false);

            modelBuilder.Entity<kho>()
                .Property(e => e.kihieu)
                .IsUnicode(false);

            modelBuilder.Entity<lienhe>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<loaidocgia>()
                .Property(e => e.kihieu)
                .IsUnicode(false);

            modelBuilder.Entity<muontra>()
                .Property(e => e.maphieu)
                .IsUnicode(false);

            modelBuilder.Entity<muontra>()
                .Property(e => e.sothe)
                .IsUnicode(false);

            modelBuilder.Entity<ncc>()
                .Property(e => e.dienthoai)
                .IsUnicode(false);

            modelBuilder.Entity<ncc>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<ncc>()
                .Property(e => e.website)
                .IsUnicode(false);

            modelBuilder.Entity<ngonngu>()
                .Property(e => e.kihieu)
                .IsUnicode(false);

            modelBuilder.Entity<nguoidung>()
                .Property(e => e.username)
                .IsUnicode(false);

            modelBuilder.Entity<nguoidung>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<nguoidung>()
                .Property(e => e.imgurl)
                .IsUnicode(false);

            modelBuilder.Entity<nxb>()
                .Property(e => e.dienthoai)
                .IsUnicode(false);

            modelBuilder.Entity<nxb>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<phieutam>()
                .Property(e => e.sothe)
                .IsUnicode(false);

            modelBuilder.Entity<sach>()
                .Property(e => e.imgurl)
                .IsUnicode(false);

            modelBuilder.Entity<sach>()
                .HasMany(e => e.kihieucabiets)
                .WithRequired(e => e.sach)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tacgia>()
                .Property(e => e.imgurl)
                .IsUnicode(false);

            modelBuilder.Entity<theloai>()
                .Property(e => e.kihieu)
                .IsUnicode(false);
        }
    }
}
