using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using jegyek.Models;
using MySql.Data.MySqlClient;
using jegyek;
using System.Reflection.PortableExecutable;
namespace jegyek.Controllers
//Fehér Tamás
{
    [Route("jegyek")]
    [ApiController]
    public class jegyekcontroller : ControllerBase
    {
        connect con = new();
        [HttpGet]
        public List<jegy> Get()
        {
            List<jegy> jegyek1 = new List<jegy>();
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
                    Leírás = reader.GetString(2),
                    Létrehozásideje = reader.GetDateTime(3),

                };
                jegyek1.Add(result);
            }

            while (reader.Read());
            con.Connection.Close();
            return jegyek1;
        }
        [HttpPost]
        public jegy Post(int Jegy,string Leírás)
        {
            con.Connection.Open();
            Guid Id = Guid.NewGuid();
            DateTime Létrehozásideje = DateTime.Now;
            string sql = $"INSERT INTO `jegyek` (`Azon`, `Jegy`, `Leírás`, `Létrehozásideje`) VALUES ('{Id}',{Jegy},'{Leírás}'','{Létrehozásideje.ToString("yyyy-MM-dd HH:mm:ss")}')";
            MySqlCommand cmd = new MySqlCommand(sql, con.Connection);
            cmd.ExecuteNonQuery();
            con.Connection.Close();
            var result = new jegy
            {
                Azon = Id,
                Jegy = Jegy,
                Leírás = Leírás,
                Létrehozásideje = Létrehozásideje,
            };
            return result;
        }
        [HttpGet("{id}")]
        public ActionResult<jegy> Get(Guid id)
        {
            con.Connection.Open();
            string sql = "SELECT * FROM jegyek WHERE Azon = @Azon";
            MySqlCommand cmd = new MySqlCommand(sql, con.Connection);
            cmd.Parameters.AddWithValue("@Azon", id);
            MySqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                var result = new jegy
                {
                    Azon = reader.GetGuid(0),
                    Jegy = reader.GetInt32(1),
                    Leírás = reader.GetString(2),
                    Létrehozásideje = reader.GetDateTime(3),
                };
                con.Connection.Close();
                return result;
            }

            con.Connection.Close();
            return NotFound();
        }

    }

}