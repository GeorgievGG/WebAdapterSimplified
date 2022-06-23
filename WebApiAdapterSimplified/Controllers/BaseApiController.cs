using System;
using System.Web.Http;
using WebAdapterSimplifiedLibrary;

namespace WebApiAdapterSimplified.Controllers
{
    [Authorize]
    public class BaseApiController : ApiController
    {
        protected BaseApiController()
        {
        }

        protected Guid UserId => RequestContext.Principal.Identity.GetUserIdAsGuid();

        protected DataIsolationContext DataIsolationContext => User.Identity.GetDataIsolationContext();

        public IHttpActionResult Forbidden()
        {
            return new ForbiddenResult();
        }
    }
}