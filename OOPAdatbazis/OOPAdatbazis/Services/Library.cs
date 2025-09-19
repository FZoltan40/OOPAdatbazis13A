using MySql.Data.MySqlClient;
using System.Collections.Generic;

namespace OOPAdatbazis.Services
{
    internal class Library : ISqlStatements
    {
        public object AddNewItem(object newRecord)
        {
            throw new System.NotImplementedException();
        }

        public object DeleteItem(int id)
        {
            throw new System.NotImplementedException();
        }

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
                    id = dr.GetBodyDefinition(dr.GetName(0)),
                    title = dr.GetBodyDefinition(dr.GetName(1)),
                    author = dr.GetBodyDefinition(dr.GetName(2)),
                    releaseDate = dr.GetBodyDefinition(dr.GetName(3))
                };

                books.Add(book);
            }

            conn.Connection.Close();

            return books;
        }

        public object GetById(int id)
        {
            Connect conn = new Connect("library");

            conn.Connection.Open();

            string sql = "SELECT * FROM `books` WHERE id = @id";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);

            cmd.Parameters.AddWithValue("@id", id);

            MySqlDataReader dr = cmd.ExecuteReader();

            dr.Read();

            var record = new
            {
                id = dr.GetBodyDefinition(dr.GetName(0)),
                title = dr.GetBodyDefinition(dr.GetName(1)),
                author = dr.GetBodyDefinition(dr.GetName(2)),
                releaseDate = dr.GetBodyDefinition(dr.GetName(3))
            };

            conn.Connection.Close();

            return record;
        }

        public object UpdateItem(object modifiedItem)
        {
            throw new System.NotImplementedException();
        }
    }
}
