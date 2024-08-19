using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;
using System.Collections;


namespace FinalProject
{
    public partial class Main : Form
    {
        SqlConnection conn = new SqlConnection("Data Source=EVAN;Initial Catalog=FinalDBProject;Integrated Security=True");
        SqlCommand cmd;
        SqlDataReader dr;


        public Main()
        {
            InitializeComponent();
            GrafCategorias();
        }

        private void leftSideMenu_Paint(object sender, PaintEventArgs e)
        {

        }

        ArrayList Categoria = new ArrayList();
        ArrayList Cant = new ArrayList();


        private void GrafCategorias() { 
            cmd = new SqlCommand("GetTop5Categories",conn);
            cmd.CommandType = CommandType.StoredProcedure;
            conn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Cant.Add(dr.GetInt32(0));
                Categoria.Add(dr.GetString(1));
            }
            chartCategorias.Series[0].Points.DataBindXY(Categoria, Cant);
            dr.Close(); 
            conn.Close();
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

        private void btnFilters_Click(object sender, EventArgs e)
        {
            openFiltersChild(this.frmFilter);
        }

        private void btnReports_Click(object sender, EventArgs e)
        {
            openFiltersChild(this.frmReport);
        }

        private void btnInfo_Click(object sender, EventArgs e)
        {
            openFiltersChild(this.frmDev);
        }

        private void chartCategorias_Click(object sender, EventArgs e)
        {

        }
    }
}
