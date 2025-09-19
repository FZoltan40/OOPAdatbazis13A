using OOPAdatbazis.Services;
using System;

namespace OOPAdatbazis
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Kérem az datbázis nevét: ");
            string dbName = Console.ReadLine();

            ILibrary dataBase = new Library();

            foreach (var item in dataBase.GetAllData(dbName))
            {
                var books = item.GetType().GetProperties();
                Console.WriteLine($"{books[0].Name}={books[0].GetValue(item)}, {books[1].Name}={books[1].GetValue(item)}");
            }

        }
    }
}
