using System;

namespace WebAdapterSimplifiedLibrary
{
    public class BaseData
    {
        public BaseData()
        {
        }

        public BaseData(Guid id)
        {
            Id = id;
        }

        public BaseData(Guid id, string name) : this(id)
        {
            Name = name;
        }

        public Guid Id { get; set; }

        public string Name { get; set; }

        public bool IsSelected { get; set; }

        public Guid? StatusId { get; set; }
    }
}
