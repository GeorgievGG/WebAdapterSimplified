using StackExchange.Profiling.Helpers.Dapper;
using System.Linq;

namespace WebAdapterSimplifiedLibrary
{
    public class UserService : IUserService
    {
        #region Fields

        private readonly IDbContextScopeFactory _dbContextScopeFactory;

        #endregion

        #region Constructors

        public UserService(IDbContextScopeFactory dbContextScopeFactory)
        {
            _dbContextScopeFactory = dbContextScopeFactory;
        }

        #endregion

        #region Public Methods
        
        public bool IsExistingUserInDb(string userName)
        {
            using (var dbContextScope = _dbContextScopeFactory.CreateReadOnly())
            {
                var db = dbContextScope.DbContexts.Get<Context>();

                string sqlCommand = "select count(*) as value from myapp_users where User_name = '" + userName + "'";
                var data = db.Database.ExecuteSqlCommand(sqlCommand);

                var result = data;

                return result > 0;
            }
        }

        public bool IsExistingUserInDbDapper(string userName)
        {
            using (var dbContextScope = _dbContextScopeFactory.CreateReadOnly())
            {
                var db = dbContextScope.DbContexts.Get<Context>();

                var connection = db.Database.GetOpenConnection();
                var data = connection.Query($"select count(*) as value from myapp_users where User_name = '{userName}'");
                var result = (int)data.First().VALUE;
                return result > 0;
            }
        }

		#endregion
    }
}