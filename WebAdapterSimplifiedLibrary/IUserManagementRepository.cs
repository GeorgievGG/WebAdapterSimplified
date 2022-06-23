using System;

namespace WebAdapterSimplifiedLibrary
{
    public interface IUserManagementRepository
    {
        UserPrivilegeAll GetUserPrivileges(Guid userId);
    }
}