namespace WebAdapterSimplifiedLibrary
{
    public interface IUserService
    {
        bool IsExistingUserInDb(string userName);
        bool IsExistingUserInDbDapper(string userName);
    }
}