using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Security.Principal;

namespace WebAdapterSimplifiedLibrary
{
    public static class IdentityExtensions
    {
        public static DataIsolationContext GetDataIsolationContext(this IIdentity identity)
        {
            var claims = ((ClaimsIdentity)identity).Claims.ToList();

            var context = new DataIsolationContext(claims.Single(c => c.Type == CustomClaimType.Username).Value, GetDataIsolationPolicy(claims));

            return context;
        }

        private static DataIsolationPolicy GetDataIsolationPolicy(IEnumerable<Claim> claims)
        {
            var userRights = claims.Single(c => c.Type == CustomClaimType.UserAccessRights);

            var settings = new JsonSerializerSettings
            {
                ContractResolver = new CamelCasePropertyNamesContractResolver()
            };

            var model = JsonConvert.DeserializeObject<UserPrivilegesViewModel>(userRights.Value, settings);
            var policy = PrivilegesToDataIsolationPolicyHelper.GetDataIsolationPolicy(model);

            return policy;
        }

        public static Guid GetUserIdAsGuid(this IIdentity identity)
        {
            return new Guid(GetUserIdFromClaim(identity));
        }

        private static string GetUserIdFromClaim(IIdentity identity)
        {
            var claimsIdentity = identity as ClaimsIdentity;

            try
            {
                return claimsIdentity.Claims.Single(c => c.Type == CustomClaimType.UserId).Value;
            }
            catch (Exception)
            {
                throw new Exception("GetUserIdFromClaim()");
            }
        }
    }
}
