using System.Threading.Tasks;

namespace WebAdapterSimplifiedLibrary
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;

    public partial class Context : DbContext
    {
        public Context()
            : base($"name={GetContextName()}")
        {
        }

        private static string GetContextName()
        {
            try
            {
                var isolationContext = DataIsolationScope.CurrentContext;

                if (isolationContext == null)
                {
                    return "Context";
                }

                var contextName = isolationContext.Policy.Name == DataIsolationPolicy.DataRestrictionByNothing.Name
                                      ? "Context"
                                      : "ContextIsolation";

                return contextName;
            }
            catch (Exception)
            {
                return "Context";
            }
        }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    }
}
