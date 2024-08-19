using System;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data; // Asegúrate de que estás usando el namespace correcto para Conexion


namespace Presentation
{
    public partial class Reportes : Form
    {
        // Instancia de formularios secundarios
        private Form frmMetric = new frmMetrics();
        private Form frmFilter = new frmFilters();

        public Reportes()
        {
            InitializeComponent();
           // CheckDatabaseConnection(); // Llamada al método que verifica la conexión


        }
        /*private void CheckDatabaseConnection()
        {
             Asegúrate de que la conexión sea de tipo SqlConnection
            SqlConnection conexion = ObtenerConexion();
            if (conexion != null)
            {
                MessageBox.Show("Conexión exitosa");
                conexion.Close(); // Cierra la conexión cuando termines de usarla
            }
            else
            {
                MessageBox.Show("No se pudo establecer la conexión");
            }
        }*/

            private void pnReportsCTA_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Mostrando reportes", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }

        private void openReportsChild(object formChild)
        {
            Form pnlReports = formChild as Form;
            if (pnlReports != null)
            {
                if (this.pnMainContainer.Controls.Count > 0)
                    this.pnMainContainer.Controls.RemoveAt(0);

                pnlReports.TopLevel = false;
                pnlReports.Dock = DockStyle.Fill;
                this.pnMainContainer.Controls.Add(pnlReports);
                this.pnMainContainer.Tag = pnlReports;
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
            if (pnlFilters != null)
            {
                if (this.pnMainContainer.Controls.Count > 0)
                    this.pnMainContainer.Controls.RemoveAt(0);

                pnlFilters.TopLevel = false;
                pnlFilters.Dock = DockStyle.Fill;
                this.pnMainContainer.Controls.Add(pnlFilters);
                this.pnMainContainer.Tag = pnlFilters;
                pnlFilters.Show();
            }
            else
            {
                MessageBox.Show("El formulario no es válido.");
            }
        }

        private void btnReports_Click(object sender, EventArgs e)
        {
            openReportsChild(this.frmMetric);
        }

        private void btnFilters_Click(object sender, EventArgs e)
        {
            openFiltersChild(this.frmFilter);
        }
    }
}
