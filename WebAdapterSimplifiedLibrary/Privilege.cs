using System;

namespace WebAdapterSimplifiedLibrary
{
    public class Privilege
    {
        public Privilege()
        {
            PrivilegeId = Guid.Empty;
        }
        public Guid PrivilegeId { get; set; }
        public bool Value { get; set; }
    }
}
