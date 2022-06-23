using System.Net;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Http;

namespace WebApiAdapterSimplified
{
    public class ForbiddenResult : IHttpActionResult
    {
        public Task<HttpResponseMessage> ExecuteAsync(CancellationToken cancellationToken)
        {
            var response = new HttpResponseMessage { StatusCode = HttpStatusCode.Forbidden };

            return Task.FromResult(response);
        }
    }
}