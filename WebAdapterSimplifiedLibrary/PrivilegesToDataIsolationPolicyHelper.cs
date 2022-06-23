namespace WebAdapterSimplifiedLibrary
{
    public static class PrivilegesToDataIsolationPolicyHelper
    {
        public static DataIsolationPolicy GetDataIsolationPolicy(UserPrivilegesViewModel model)
        {
            if (model.DataRestrictionByNothing)
            {
                return DataIsolationPolicy.DataRestrictionByNothing;
            }

            if (model.DataRestrictionByAgency)
            {
                return DataIsolationPolicy.RestrictionByAgency;
            }

            if (model.DataRestrictionByCreditor)
            {
                return DataIsolationPolicy.RestrictionByCreditor;
            }

            if (model.DataRestrictionByTeam)
            {
                return DataIsolationPolicy.RestrictionByTeam;
            }

            return model.DataRestrictionByUser
                ? DataIsolationPolicy.RestrictionByUser
                : DataIsolationPolicy.RestrictionByAgency;
        }
    }
}