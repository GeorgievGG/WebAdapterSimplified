using System;

namespace WebAdapterSimplifiedLibrary
{
    public interface ICacheService
    {
        #region GetCacheItem

        TItem GetCacheItem<TItem>(Guid key, string additionalUniqueId)
            where TItem : class;

        #endregion

        #region SetCacheItem

        void SetCacheItem<TItem>(Guid key, string additionalUniqueId, TItem item)
            where TItem : class;

        #endregion

        void Clear();
    }
}