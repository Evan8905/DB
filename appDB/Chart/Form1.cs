using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using myData; // Asegúrate de añadir esta directiva using para poder usar la clase Conect


namespace Chart
{
    public partial class Chart : Form
    {
        public Chart()
        {
            InitializeComponent();
        }

        private void Chart_Load(object sender, EventArgs e)
        {

        }
        private void TestConnection()
        {
            // Crear una instancia de la clase Conect
            Conect dbConnection = new Conect();

            // Obtener la conexión
            using (SqlConnection connection = dbConnection.GetConnection())
            {
                try
                {
                    // Intentar abrir la conexión
                    connection.Open();
                    MessageBox.Show("Conexión exitosa!", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    // Mostrar mensaje de error si la conexión falla
                    MessageBox.Show($"Error al conectar: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
    }
}
