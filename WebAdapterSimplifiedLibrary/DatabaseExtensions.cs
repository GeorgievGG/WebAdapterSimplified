using StackExchange.Profiling;
using System;
using System.Data;
using System.Data.Common;
using System.Data.Entity;

namespace WebAdapterSimplifiedLibrary
{
    public static class DatabaseExtensions
    {
        public static DbConnection GetOpenConnection(this Database database)
        {
            try
            {
                var connection = database.Connection;

                //return the connection create by MiniProfiler
                var conn = new StackExchange.Profiling.Data.ProfiledDbConnection(connection, MiniProfiler.Current);
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }

                return conn;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
