using System;

namespace WebAdapterSimplifiedLibrary
{
    public class SaveUserData : BaseData
    {
        public bool IsActive { get; set; }

        public string UserName { get; set; }

        public Guid UserTypeId { get; set; }

        public string UserTypeName { get; set; }

        public decimal WorkHours { get; set; }

        public string PersonKey { get; set; }

        public bool EnabledTwoFactorAuthentication { get; set; }

        public string AuthenticationEncryptedKey { get; set; }

        public BaseData Agency { get; set; }
    }
}
