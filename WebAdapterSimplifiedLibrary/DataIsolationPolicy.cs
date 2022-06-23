namespace WebAdapterSimplifiedLibrary
{
    public class DataIsolationPolicy
    {
        #region Constants

        public static DataIsolationPolicy DataRestrictionByNothing { get; } = new DataIsolationPolicy("XXX");
        public static DataIsolationPolicy RestrictionByAgency { get; } = new DataIsolationPolicy("XXX");
        public static DataIsolationPolicy RestrictionByCreditor { get; } = new DataIsolationPolicy("XXX");
        public static DataIsolationPolicy RestrictionByTeam { get; } = new DataIsolationPolicy("XXX");
        public static DataIsolationPolicy RestrictionByUser { get; } = new DataIsolationPolicy("XXX");

        #endregion

        #region Properties

        public string Name { get; }

        #endregion

        #region Constructors

        private DataIsolationPolicy(string name)
        {
            Name = name;
        }

        #endregion
    }
}
