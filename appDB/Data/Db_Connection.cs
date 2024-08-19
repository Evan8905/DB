using System;
using System.Data.SqlClient;

namespace myData
{
    public class Db_Connection
    {
        private string connectionString = "Data Source=EVAN;Initial Catalog=FinalDBProject;Integrated Security=True;Trust Server Certificate=True";

        public SqlConnection GetConnection()
        {
            SqlConnection cn = new SqlConnection(connectionString);
            return cn;
        }
    }
}
