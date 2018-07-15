namespace CHTrace.Repository.Models
{
    public class Address
    {
        public int Id {get; set; }
        public string Name {get; set; }
        public string Attention {get; set; }
        public string AddressLine1 {get; set; }
        public string AddressLine2 {get; set; }
        public string City {get; set; }
        public string State {get; set; }
        public string Zipcode {get; set; }
        public string Phone {get; set; }
        public string Fax {get; set; }
        public int AddressTypeId {get; set; }
        public bool IsActive {get; set; }
    }
}
