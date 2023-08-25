using ECommerceApp.DataAccess.Repository.IRepository;
using ECommerceApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ECommerceApp.DataAccess.Repository
{
    public class ProductRepository : Repository<Product>, IProductRepository
    {
        private ApplicationDbContext _context;
        public ProductRepository(ApplicationDbContext context) : base(context)
        {
            _context = context;
        }
        public void Update(Product product)
        {
            var productFromDB = _context.Products.FirstOrDefault(p => p.Id == product.Id);
            if (productFromDB != null)
            {
                productFromDB.Title = product.Title;
                productFromDB.ISBN = product.ISBN;
                productFromDB.Price = product.Price;
                productFromDB.Price50 = product.Price50;
                productFromDB.ListPrice = product.ListPrice;
                productFromDB.Price100 = product.Price100;
                productFromDB.Description = product.Description;
                productFromDB.CategoryId = product.CategoryId;
                productFromDB.Author = product.Author;
                if(product.ImageURL != null)
                {
                    productFromDB.ImageURL = product.ImageURL;
                }
            }
        }
    }
}
