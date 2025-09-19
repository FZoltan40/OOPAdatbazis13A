using System.Collections.Generic;

namespace OOPAdatbazis.Services
{
    internal interface ILibrary
    {
        List<object> GetAllData(string dbName);
    }
}
