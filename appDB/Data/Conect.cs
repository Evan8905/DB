using System;
using System.Data.SqlClient;

namespace myData
{
    public class Conect  // Cambia 'internal' a 'public' si necesitas acceso desde otros namespaces
    {
        private string connectionString = "Data Source=EVAN;Initial Catalog=FinalDBProject;Integrated Security=True";

        public SqlConnection GetConnection()
        {
            SqlConnection cn = new SqlConnection(connectionString);
            return cn;
        }
    }
}
