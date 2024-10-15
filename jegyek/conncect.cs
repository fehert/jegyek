
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace jegyek
{
    public class connect
    {
        public MySqlConnection Connection { get; set; }
        private string Host;
        private string Database;
        private string Username;
        private string Password;
        public string ConnectionString { get; set; }

        public connect()
        {
            Host = "localhost";
            Database = "jegy";
            Username = "root";
            Password = "";
            ConnectionString = "SERVER=" + Host + ";DATABASE=" + Database + ";UID=" + Username + ";PASSWORD=" + Password + ";SslMode=None";
            Connection = new MySqlConnection(ConnectionString);
        }
    }
}
