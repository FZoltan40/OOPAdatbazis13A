using System.Collections.Generic;

namespace OOPAdatbazis.Services
{
    internal interface ISqlStatements
    {
        List<object> GetAllData(string dbName);
    }
}
