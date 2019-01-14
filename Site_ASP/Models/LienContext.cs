using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Site_ASP.Models
{
    class LienContext : DbContext
    {
        public LienContext() : base("name=LienContext")
        {
        }

        public LienContext(string connString) : base(connString)
        {
        }

        public DbSet<Base> Liens { get; set; }
    }
}
