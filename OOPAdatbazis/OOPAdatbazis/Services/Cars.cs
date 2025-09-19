using MySql.Data.MySqlClient;
using System.Collections.Generic;

namespace OOPAdatbazis.Services
{
    internal class Cars : ISqlStatements
    {
        public List<object> GetAllData(string dbName)
        {
            Connect conn = new Connect(dbName);

            List<object> cars = new List<object>();

            conn.Connection.Open();

            string sql = "SELECT * FROM `cars`";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);

            MySqlDataReader dr = cmd.ExecuteReader();

            dr.Read();

            while (dr.Read())
            {
                var car = new
                {
                    id = dr.GetInt32("id"),
                    brand = dr.GetString("brand"),
                    type = dr.GetString("type"),
                    mDate = dr.GetDateTime("mDate")
                };

                cars.Add(car);
            }
            conn.Connection.Close();

            return cars;
        }
    }
}
