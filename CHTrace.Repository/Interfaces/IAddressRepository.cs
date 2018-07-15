using System;
using System.Collections.Generic;
using System.Text;
using CHTrace.Repository.Models;

namespace CHTrace.Repository.Interfaces
{
    internal interface IAddressRepository
    {
        List<Address> GetAddresses(int amount, string sort);

        Address GetSingleAddress(int addressId);

        int InsertAddress(Address address);

        int DeleteAddress(int addressId);

        int UpdateAddress(Address address);
    }
}
