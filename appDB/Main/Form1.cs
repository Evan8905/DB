using System;
using System.Data.SqlClient;
using System.Windows.Forms;
using myData; // Asegúrate de añadir esta directiva using para poder usar la clase Conect
using System.ComponentModel;

namespace Main
{
    public partial class Principal : Form
    {
        public Principal()
        {
            InitializeComponent();
            TestConnection();
        }

        private void btnTest_Click(object sender, EventArgs e)
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

        private void horaFecha_Tick(object sender, EventArgs e)
        {
            lblHora.Text = DateTime.Now.ToLongTimeString();
            lblFecha.Text = DateTime.Now.ToLongDateString();
        }

        private Form frmFilter = new frmFiltros();
        private Form frmReport = new frmReportes();
        private Form frmDev = new frmDevs();



        private void openReportsChild(object formChild)
        {
            Form pnlReports = formChild as Form;
            if (pnlReports != null) // Asegúrate de que pnlSale no sea null
            {
                if (this.MainPanel.Controls.Count > 0)
                    this.MainPanel.Controls.RemoveAt(0);

                pnlReports.TopLevel = false;
                pnlReports.Dock = DockStyle.Fill;
                this.MainPanel.Controls.Add(pnlReports);
                this.MainPanel.Tag = pnlReports;
                pnlReports.Show();
            }
            else
            {
                MessageBox.Show("El formulario no es válido.");
            }
        }

        private void openFiltersChild(object formChild)
        {
            Form pnlFilters = formChild as Form;
            if (pnlFilters != null) // Asegúrate de que pnlSale no sea null
            {
                if (this.MainPanel.Controls.Count > 0)
                    this.MainPanel.Controls.RemoveAt(0);

                pnlFilters.TopLevel = false;
                pnlFilters.Dock = DockStyle.Fill;
                this.MainPanel.Controls.Add(pnlFilters);
                this.MainPanel.Tag = pnlFilters;
                pnlFilters.Show();
            }
            else
            {
                MessageBox.Show("El formulario no es válido.");
            }
        }

        private void openDevsChild(object formChild)
        {
            Form pnlDevs = formChild as Form;
            if (pnlDevs != null) // Asegúrate de que pnlSale no sea null
            {
                if (this.MainPanel.Controls.Count > 0)
                    this.MainPanel.Controls.RemoveAt(0);

                pnlDevs.TopLevel = false;
                pnlDevs.Dock = DockStyle.Fill;
                this.MainPanel.Controls.Add(pnlDevs);
                this.MainPanel.Tag = pnlDevs;
                pnlDevs.Show();
            }
            else
            {
                MessageBox.Show("El formulario no es válido.");
            }
        }

        private void btnFiltros_Click(object sender, EventArgs e)
        {
            openFiltersChild(this.frmFilter);

        }

        private void btnReportes_Click(object sender, EventArgs e)
        {
            openFiltersChild(this.frmReport);
        }

        private void Info_Click(object sender, EventArgs e)
        {
            openFiltersChild(this.frmDev);
        }
    }
}
