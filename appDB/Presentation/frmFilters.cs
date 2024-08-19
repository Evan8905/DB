using System;
using System.Data.SqlClient;
using System.Runtime.Remoting.Contexts;
using System.Windows.Forms;
using myData;  // Asegúrate de que este namespace esté importado

namespace Presentation
{
    public partial class frmFilters : Form
    {
        public frmFilters()
        {
            InitializeComponent();
        }

        private Conect dbConnection = new Conect();  // Usa la clase Conect en lugar de Db_Connection

        // Método para probar la conexión
        private void TestConnection()
        {
            try
            {
                using (SqlConnection cn = dbConnection.GetConnection())
                {
                    cn.Open();
                    MessageBox.Show("Conexión exitosa a la base de datos.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error al intentar conectar a la base de datos: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void Filter()
        {
            using (SqlConnection cn = dbConnection.GetConnection())
            {
                cn.Open();
                // Aquí va el código para ejecutar consultas, comandos, etc.
            }
        }

        private void test_Click(object sender, EventArgs e)
        {
            Filter();
        }

        // Botón o evento para probar la conexión
        private void btnTestConnection_Click(object sender, EventArgs e)
        {
            TestConnection();
        }
    }
}
