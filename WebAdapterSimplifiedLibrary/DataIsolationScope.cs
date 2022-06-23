using System;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Threading;

namespace WebAdapterSimplifiedLibrary
{
    public class DataIsolationScope : IDisposable
    {
        private sealed class Wrapper : MarshalByRefObject
        {
            public ImmutableStack<DataIsolationContext> Value { get; set; }
        }

        #region Fields

        private const string LogicalContextDataIsolationKey = "XXX";

        #endregion

        #region Properties

        private static ImmutableStack<DataIsolationContext> ContextImmutableStack
        {
            get
            {
                var wrapper = CallContext.LogicalGetData(LogicalContextDataIsolationKey) as Wrapper;

                return wrapper == null ? ImmutableStack.Create<DataIsolationContext>() : wrapper.Value;
            }
            set
            {
                CallContext.LogicalSetData(LogicalContextDataIsolationKey, new Wrapper { Value = value });
            }
        }

        public static DataIsolationContext CurrentContext => ContextImmutableStack.IsEmpty ? null : ContextImmutableStack.Peek();

        public static IEnumerable<string> ScopeContexts => ContextImmutableStack.Select(x => x.ToString()).ToList();

        public static DataIsolationContext SystemUserContext
            => new DataIsolationContext("xxx", DataIsolationPolicy.DataRestrictionByNothing);

        #endregion

        #region Constructors

        public DataIsolationScope(DataIsolationContext context)
        {
            ContextImmutableStack = ContextImmutableStack.Push(context);
        }

        #endregion

        #region Public Methods

        public static void RunInSystemUserScope(Action action)
        {
            using (var scope = new DataIsolationScope(SystemUserContext))
            {
                action();
            }
        }

        public static T RunInSystemUserScope<T>(Func<T> action)
        {
            using (var scope = new DataIsolationScope(SystemUserContext))
            {
                return action();
            }
        }

        public static void RunInUserScope(DataIsolationContext context, Action action)
        {
            using (var scope = new DataIsolationScope(context))
            {
                action();
            }
        }

        public static T RunInUserScope<T>(DataIsolationContext context, Func<T> action)
        {
            using (var scope = new DataIsolationScope(context))
            {
                return action();
            }
        }

        public static void RunInCurrentUserScope(Action action)
        {
            var dataIsolationContext = Thread.CurrentPrincipal.Identity.GetDataIsolationContext();

            using (var scope = new DataIsolationScope(dataIsolationContext))
            {
                action();
            }
        }

        public void Dispose()
        {
            ContextImmutableStack = ContextImmutableStack.Pop();
        }

        #endregion

        #region Private Methods

        #endregion
    }
}
