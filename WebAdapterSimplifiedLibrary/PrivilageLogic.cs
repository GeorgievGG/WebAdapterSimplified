using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;

namespace WebAdapterSimplifiedLibrary
{
    public class PrivilegeLogic : IPrivilegeLogic
    {
        #region Fields

        private readonly ICacheService _cacheService;
        private readonly IUserManagementRepository _UserManagementRepository;

        #endregion

        #region Constructors

        public PrivilegeLogic(
            ICacheService cacheService,
            IUserManagementRepository UserManagementRepository)
        {
            _cacheService = cacheService;
            _UserManagementRepository = UserManagementRepository;
        }

        #endregion

        #region Public methods
        public bool CheckPrivilege(Guid privilegeId, Guid userId)
        {
            var userAllPrivileges = GetUserAllPrivileges(userId);
            var hasPrivilege = userAllPrivileges.Any(x => x.PrivilegeId == privilegeId && x.Value);

            return hasPrivilege;
        }

        #endregion

        #region Private Methods

        private IEnumerable<Privilege> GetUserAllPrivileges(Guid userId)
        {
            UserPrivilegesData userPrivileges;
            var cachedUserPrivileges = _cacheService.GetCacheItem<UserPrivilegesData>(userId, GlobalData.UserPrivilegeKey);
            if (cachedUserPrivileges == null)
            {
                userPrivileges = _UserManagementRepository.GetUserPrivileges(userId).UserPrivilege;
                _cacheService.SetCacheItem(userId, GlobalData.UserPrivilegeKey, userPrivileges);
            }
            else
            {
                userPrivileges = cachedUserPrivileges;
            }

            var userAllPrivileges = userPrivileges.GetType()
                .GetProperties(BindingFlags.Public | BindingFlags.Instance)
                .Where(p => p.CanRead && p.PropertyType == typeof(Privilege))
                .Select(p => (Privilege)p.GetValue(userPrivileges, null))
                .ToList();

            return userAllPrivileges;
        }

        #endregion
    }
}
