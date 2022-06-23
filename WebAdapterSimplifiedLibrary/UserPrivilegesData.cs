namespace WebAdapterSimplifiedLibrary
{
    public class UserPrivilegesData
    {
        public UserPrivilegesData()
        {
            ManageUser = new Privilege();
            ViewManagementScreen = new Privilege();
        }

        public Privilege ManageUser { get; set; }
        public Privilege ViewManagementScreen { get; set; }

    }
}
