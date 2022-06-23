using System;

namespace WebAdapterSimplifiedLibrary
{
    public interface IDbContextReadOnlyScope : IDisposable
    {
        IDbContextCollection DbContexts { get; }
    }
}
