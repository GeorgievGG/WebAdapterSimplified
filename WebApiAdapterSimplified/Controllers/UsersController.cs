using System.Web.Http;
using WebAdapterSimplifiedLibrary;

namespace WebApiAdapterSimplified.Controllers
{
    [RoutePrefix(ManagementRoutes.RoutePrefixCoreManagementUsers)]
    public class UsersController : BaseApiController
    {
        private const string UsersAdName = "XXX";

        private readonly IPrivilegeLogic _privilegeLogic;
        private readonly IUserService _UserService;

        public UsersController(
            IPrivilegeLogic privilegeLogic,
            IUserService UserService)
        {
            _privilegeLogic = privilegeLogic;
            _UserService = UserService;
        }

        [HttpGet]
        [Route(ManagementRoutes.RoutePrefixCoreManagementUsersFindUser)]
        public IHttpActionResult FindUser(string userName)
        {
            if (!(_privilegeLogic.CheckPrivilege(UserPrivilegeIds.ViewManagementScreen, UserId) &&
                  _privilegeLogic.CheckPrivilege(UserPrivilegeIds.ManageUser, UserId)))
            {
                return Forbidden();
            }

            var result = new FindUserResultData();
            result.IsExistingUserInDb = _UserService.IsExistingUserInDb(userName);

            return Ok(result.ToViewModel());
        }

        [HttpGet]
        [Route(ManagementRoutes.RoutePrefixCoreManagementUsersFindUserDapper)]
        public IHttpActionResult FindUserDapper(string userName)
        {
            if (!(_privilegeLogic.CheckPrivilege(UserPrivilegeIds.ViewManagementScreen, UserId) &&
                  _privilegeLogic.CheckPrivilege(UserPrivilegeIds.ManageUser, UserId)))
            {
                return Forbidden();
            }

            var result = new FindUserResultData();
            result.IsExistingUserInDb = _UserService.IsExistingUserInDbDapper(userName);

            return Ok(result.ToViewModel());
        }
    }
}
