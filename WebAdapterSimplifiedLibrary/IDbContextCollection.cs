using System;
using System.Data.Entity;

namespace WebAdapterSimplifiedLibrary
{
    public interface IDbContextCollection : IDisposable
    {
		TDbContext Get<TDbContext>() where TDbContext : DbContext;
    }
}
