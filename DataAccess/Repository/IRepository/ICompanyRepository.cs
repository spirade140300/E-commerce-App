using ECommerceApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ECommerceApp.DataAccess.Repository.IRepository
{
    public interface ICompanyRepository : Repository<Company>
    {
        void Update(Company company);
    }
}
