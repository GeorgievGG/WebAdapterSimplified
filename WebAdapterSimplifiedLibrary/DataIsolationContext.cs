namespace WebAdapterSimplifiedLibrary
{
    public class DataIsolationContext
    {
        public DataIsolationContext(string username, DataIsolationPolicy policy)
        {
            Username = username;
            Policy = policy;
        }
        public string Username { get; }

        public DataIsolationPolicy Policy { get; }

        public override string ToString()
        {
            return $"{nameof(Username)}:{Username};{nameof(Policy)}:{Policy.Name}";
        }
    }
}
