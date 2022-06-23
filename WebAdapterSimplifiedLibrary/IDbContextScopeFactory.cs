namespace WebAdapterSimplifiedLibrary
{
    public interface IDbContextScopeFactory
    {
        IDbContextReadOnlyScope CreateReadOnly(DbContextScopeOption joiningOption = DbContextScopeOption.JoinExisting);
    }
}
