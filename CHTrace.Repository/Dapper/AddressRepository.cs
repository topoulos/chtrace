using System;
using System.Collections.Generic;
using System.Text;
using CHTrace.Repository.Interfaces;
using CHTrace.Repository.Models;

namespace CHTrace.Repository.Dapper
{
    public class AddressRepository : IAddressRepository
    {
        public List<Address> GetAddresses(int amount, string sort)
        {
            throw new NotImplementedException();
        }

        public Address GetSingleAddress(int addressId)
        {
            throw new NotImplementedException();
        }

        public int InsertAddress(Address address)
        {
            throw new NotImplementedException();
        }

        public int DeleteAddress(int addressId)
        {
            throw new NotImplementedException();
        }

        public int UpdateAddress(Address address)
        {
            throw new NotImplementedException();
        }
    }
}
