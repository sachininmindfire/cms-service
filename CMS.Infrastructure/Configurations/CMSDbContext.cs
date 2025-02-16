using CMS.Core.Entities;
using Microsoft.EntityFrameworkCore;

namespace CMS.Infrastructure.Configurations
{
    public class CMSDbContext : DbContext
    {
        public CMSDbContext(DbContextOptions<CMSDbContext> options) : base(options)
        {
        }

        public DbSet<Article> Articles { get; set; }
        public DbSet<Comment> Comments { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            // Configure the relationship between Article and Comment
            modelBuilder.Entity<Comment>()
                .HasOne<Article>()
                .WithMany(a => a.Comments)
                .HasForeignKey(c => c.ArticleId)
                .OnDelete(DeleteBehavior.Cascade);

            // Additional configurations can be added here
        }
    }
}
