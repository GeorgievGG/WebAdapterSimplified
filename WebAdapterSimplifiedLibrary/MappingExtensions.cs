using AutoMapper;

namespace WebAdapterSimplifiedLibrary
{
    public static class MappingExtensions
    {
        public static TDestination MapTo<TSource, TDestination>(this TSource source)
        {
            return Mapper.Map<TSource, TDestination>(source);
        }

        public static FindUserResultViewModel ToViewModel(this FindUserResultData data)
        {
            return data.MapTo<FindUserResultData, FindUserResultViewModel>();
        }
    }
}
