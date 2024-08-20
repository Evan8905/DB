using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FinalProject
{
    /*public partial class frmFiltros : Form

        
    {
        public frmFiltros()
        {
            InitializeComponent();
        }

        private void btnNewReport_Click(object sender, EventArgs e)
        {
            frmReportes reportForm = new frmReportes();
    reportForm.Show();
        }
    }*/

    public partial class frmFiltros : Form
    {
        private frmReportes reportForm;

        public frmFiltros(frmReportes frmReportes)
        {
            InitializeComponent();
            reportForm = frmReportes;
        }

        private void btnNewReport_Click(object sender, EventArgs e)
        {
            // Llamar al método para agregar un nuevo Chart
            reportForm.AddNewChart();
        }
    }



}
