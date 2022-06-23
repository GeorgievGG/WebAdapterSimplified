namespace WebAdapterSimplifiedLibrary
{
    public class FindUserResultViewModel
    {
        public bool IsExistingUserInDb { get; set; }

        public bool IsExistingUserInAd { get; set; }

        public SaveUserViewModel UserData { get; set; }
    }
}