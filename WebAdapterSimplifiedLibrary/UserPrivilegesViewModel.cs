namespace WebAdapterSimplifiedLibrary
{
    public class UserPrivilegesViewModel
    {
        public bool ManageUser { get; set; }
        public bool ViewManagementScreen { get; set; }
        public bool DataRestrictionByNothing { get; set; }
        public bool DataRestrictionByAgency { get; set; }
        public bool DataRestrictionByCreditor { get; set; }
        public bool DataRestrictionByTeam { get; set; }
        public bool DataRestrictionByUser { get; set; }
    }
}