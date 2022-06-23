using System;

namespace WebAdapterSimplifiedLibrary
{
    public interface IPrivilegeLogic
    {
        bool CheckPrivilege(Guid privilegeId, Guid userId);
    }
}