using MySql.Data.MySqlClient;
using System.Collections.Generic;

namespace OOPAdatbazis.Services
{
    internal class Library : ILibrary
    {

        public List<object> GetAllData(string dbName)
        {
            Connect conn = new Connect(dbName);

            List<object> books = new List<object>();

            conn.Connection.Open();

            string sql = "SELECT * FROM `books` ";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);

            MySqlDataReader dr = cmd.ExecuteReader();

            dr.Read();

            while (dr.Read())
            {
                var book = new
                {
                    id = dr.GetInt32("id"),
                    title = dr.GetString("title"),
                    author = dr.GetString("author"),
                    releaseDate = dr.GetDateTime("releaseDate")
                };

                books.Add(book);
            }

            conn.Connection.Close();

            return books;
        }
    }
}
