using System;

namespace WebAdapterSimplifiedLibrary
{

    public class UserPrivilegeAll
    {
        public Guid UserId { get; set; }
        public UserPrivilegesData UserPrivilege { get; set; }
        public UserPrivilegesViewModel UserPrivilegesViewModel { get; set; }
    }
}