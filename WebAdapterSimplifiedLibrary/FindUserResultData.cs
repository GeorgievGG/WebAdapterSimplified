namespace WebAdapterSimplifiedLibrary
{
    public class FindUserResultData
    {
        public bool IsExistingUserInDb { get; set; }

        public bool IsExistingUserInAd { get; set; }

        public SaveUserData UserData { get; set; }
    }
}
