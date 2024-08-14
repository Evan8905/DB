using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Presentation
{
    public partial class Reportes : Form
    {
        public Reportes()
        {
            InitializeComponent();
        }

        private void pnReportsCTA_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Mostrando reportes", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }

        // Hay que instanciar el form para que funcione

        private Form frmMetric = new frmMetrics();

        private Form frmFilter = new frmFilters();

        private void openReportsChild(object formChild)
        {
            Form pnlReports = formChild as Form;
            if (pnlReports != null) // Asegúrate de que pnlSale no sea null
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
            if (pnlFilters != null) // Asegúrate de que pnlSale no sea null
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

