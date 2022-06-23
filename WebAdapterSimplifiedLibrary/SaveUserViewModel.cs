using System;

namespace WebAdapterSimplifiedLibrary
{
    public class SaveUserViewModel
    {
        public Guid? Id { get; set; }

        public string Name { get; set; }

        public bool IsActive { get; set; }

        public string UserName { get; set; }

        public Guid UserTypeId { get; set; }

        public string UserTypeName { get; set; }

        public decimal WorkHours { get; set; }

        public string PersonKey { get; set; }

        public bool EnabledTwoFactorAuthentication { get; set; }

        public BaseViewModel Agency { get; set; }
    }
}