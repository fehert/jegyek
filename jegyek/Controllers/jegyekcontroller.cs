using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using jegyek.Models;
using MySql.Data.MySqlClient;
using jegyek;
namespace jegyek.Controllers
//Fehér Tamás
{
    [Route("product")]
    [ApiController]
    public class jegyekcontroller : ControllerBase
    {
        connect con = new();
        [HttpGet]
        public List<jegy> Get()
        {
            List<jegy> products = new List<jegy>();
            con.Connection.Open();
            string sql = "SELECT * FROM jegyek";
            MySqlCommand cmd = new MySqlCommand(sql, con.Connection);
            MySqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            do
            {
                var result = new jegy
                {
                    Azon = reader.GetGuid(0),
                    Jegy = reader.GetInt32(1),
                    Leírés = reader.GetString(2),
                    Létrehozásideje = reader.GetDateTime(3),

                };
                products.Add(result);
            }

            while (reader.Read());
            con.Connection.Close();
            return products;
        }
        [HttpPost]
        public jegy Post(string Name, int Price)
        {
            con.Connection.Open();
            Guid Id = Guid.NewGuid();
            DateTime CreatedTime = DateTime.Now;
            string sql = $"INSERT INTO `products` (`Id`, `Name`, `Price`, `CreatedTime`) VALUES ('{Id}','{Name}',{Price},'{CreatedTime.ToString("yyyy-MM-dd HH:mm:ss")}')";
            MySqlCommand cmd = new MySqlCommand(sql, con.Connection);
            cmd.ExecuteNonQuery();
            con.Connection.Close();
            var result = new jegy
            {
                Id = Id,
                Name = Name,
                Price = Price,
                CreatedTime = DateTime.Now
            };
            return result;
        }
        [HttpPut]
        public jegy Put(Guid Id, string NewName, int NewPrice)
        {
            con.Connection.Open();
            DateTime CreatedTime = DateTime.Now;
            string sql = $"UPDATE `products` SET `Name`='{NewName}', `Price` = {NewPrice} WHERE `Id` = '{Id}'";
            MySqlCommand cmd = new MySqlCommand(sql, con.Connection);
            cmd.ExecuteNonQuery();
            con.Connection.Close();
            var result = new jegy
            {
                Id = Id,
                Name = NewName,
                Price = NewPrice,
                CreatedTime = DateTime.Now
            };
            return result;

        }
        [HttpDelete]
        public string Delete(Guid Id)
        {
            con.Connection.Open();
            DateTime CreatedTime = DateTime.Now;
            string sql = $"DELETE FROM `products` WHERE `Id` = '{Id}'";
            MySqlCommand cmd = new MySqlCommand(sql, con.Connection);
            cmd.ExecuteNonQuery();
            con.Connection.Close();
            return $"{Id} elem törölve.";
        }
    }

}