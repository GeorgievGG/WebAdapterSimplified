using System;

namespace WebAdapterSimplifiedLibrary
{
    public class BaseViewModel
    {
        public Guid Id { get; set; }

        public string Name { get; set; }

        public bool IsSelected { get; set; }

        public Guid? StatusId { get; set; }
    }
}