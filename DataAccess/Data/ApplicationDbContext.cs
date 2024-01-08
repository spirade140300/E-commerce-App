using ECommerceApp.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace ECommerceApp.DataAccess
{
    public class ApplicationDbContext : IdentityDbContext<IdentityUser>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
            
        }

        public DbSet<Category> Categories { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<ApplicationUser> ApplicationUsers { get; set; }
        public DbSet<ShoppingCart> ShoppingCarts { get; set; }
        public DbSet<Company> Companies { get; set; }
        public DbSet<OrderHeader> OrderHeaders { get; set; }
        public DbSet<OrderDetail> OrderDetails { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<Category>().HasData(
                new Category { Id = 1, Name = "Action", DisplayOrder = 1 },
                new Category { Id = 2, Name = "SciFi", DisplayOrder = 2 },
                new Category { Id = 3, Name = "History", DisplayOrder = 3 }
                );

            modelBuilder.Entity<Company>().HasData(
                new Company { 
                    Id = 1, 
                    Name = "Company 1", 
                    StreetAddress = "address 1",
                    City = "City 1",
                    PostalCode = "111111",
                    State = "11",
                    PhoneNumber = "1111111111"
                },
                new Company {
                    Id = 2,
                    Name = "Company 2",
                    StreetAddress = "address 2",
                    City = "City 2",
                    PostalCode = "222222",
                    State = "22",
                    PhoneNumber = "1111111111"
                },
                new Company {
                    Id = 3,
                    Name = "Company 3",
                    StreetAddress = "address 3",
                    City = "City 3",
                    PostalCode = "333333",
                    State = "33",
                    PhoneNumber = "1111111111"
                },
                new Company
                {
                    Id = 4,
                    Name = "Company 4",
                    StreetAddress = "address 4",
                    City = "City 4",
                    PostalCode = "444444",
                    State = "44",
                    PhoneNumber = "1111111111"
                }, new Company
                {
                    Id = 5,
                    Name = "Company 5",
                    StreetAddress = "address 5",
                    City = "City 5",
                    PostalCode = "555555",
                    State = "55",
                    PhoneNumber = "1111111111"
                }
                );
        }
        
    }
}
