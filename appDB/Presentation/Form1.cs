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

        // Supongamos que pnReportsCTA es el nombre de un formulario, no un panel

        private Form frmMetric = new frmMetrics(); 

        private void btnReports_Click(object sender, EventArgs e)
        {
            openReportsChild(this.frmMetric);
        }

        private void openReportsChild(object formChild)
        {
            Form pnlSale = formChild as Form;
            if (pnlSale != null) // Asegúrate de que pnlSale no sea null
            {
                if (this.pnMainContainer.Controls.Count > 0)
                    this.pnMainContainer.Controls.RemoveAt(0);

                pnlSale.TopLevel = false;
                pnlSale.Dock = DockStyle.Fill;
                this.pnMainContainer.Controls.Add(pnlSale);
                this.pnMainContainer.Tag = pnlSale;
                pnlSale.Show();
            }
            else
            {
                MessageBox.Show("El formulario no es válido.");
            }
        }


    }
}
