using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;

/*namespace FinalProject
{
    public partial class frmReportes : Form
    {
        SqlConnection conn = new SqlConnection("Data Source=EVAN;Initial Catalog=FinalDBProject;Integrated Security=True");
        SqlCommand cmd;
        SqlDataReader dr;

        public frmReportes()
        {
            InitializeComponent();
            GrafCategorias();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        public void AddNewChart()
        {
            // Crear un nuevo Chart
            Chart newChart = new Chart();
            newChart.Size = new Size(300, 300); // Ajusta el tamaño según sea necesario

            // Configurar el ChartArea
            ChartArea chartArea = new ChartArea();
            newChart.ChartAreas.Add(chartArea);

            // Configurar la Serie
            Series series = new Series();
            series.ChartType = SeriesChartType.Column;
            newChart.Series.Add(series);

            // Agregar el nuevo Chart al formulario
            //newChart.Left = chartCategoria.Right + 10; // Colocar el nuevo Chart a la derecha del existente
            this.Controls.Add(newChart);

            // Poblar el gráfico con datos (aquí puedes personalizar los datos según sea necesario)
            cmd = new SqlCommand("GetTop5Categories", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            conn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                series.Points.AddXY(dr.GetString(1), dr.GetInt32(0));
            }
            dr.Close();
            conn.Close();
        }

        ArrayList Categoria = new ArrayList();
        ArrayList Cant = new ArrayList();


        private void GrafCategorias()
        {
            cmd = new SqlCommand("GetTop5Categories", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            conn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Cant.Add(dr.GetInt32(0));
                Categoria.Add(dr.GetString(1));
            }
            //chartCategoria.Series[0].Points.DataBindXY(Categoria, Cant);
            dr.Close();
            conn.Close();
        }
    }
}*/

namespace FinalProject
{
    public partial class frmReportes : Form
    {
        SqlConnection conn = new SqlConnection("Data Source=EVAN;Initial Catalog=FinalDBProject;Integrated Security=True");
        SqlCommand cmd;
        SqlDataReader dr;

        // Mantener una lista de gráficos agregados
        private List<Chart> charts = new List<Chart>();

        public frmReportes()
        {
            InitializeComponent();
            GrafCategorias();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        public void AddNewChart()
        {
            // Crear un nuevo Chart
            Chart newChart = new Chart();
            newChart.Size = new Size(300, 300); // Ajusta el tamaño según sea necesario

            // Configurar el ChartArea
            ChartArea chartArea = new ChartArea();
            newChart.ChartAreas.Add(chartArea);

            // Configurar la Serie
            Series series = new Series();
            series.ChartType = SeriesChartType.Column;
            newChart.Series.Add(series);

            // Calcular la posición del nuevo gráfico
            int nextChartPositionX = 10; // Margen inicial desde la izquierda
            if (charts.Count > 0)
            {
                // Colocar el nuevo Chart a la derecha del último gráfico agregado
                nextChartPositionX = charts.Last().Right + 10;
            }

            newChart.Location = new Point(nextChartPositionX, 10); // Posición en el formulario
            this.Controls.Add(newChart);
            charts.Add(newChart); // Añadir el nuevo Chart a la lista

            // Poblar el gráfico con datos (aquí puedes personalizar los datos según sea necesario)
            cmd = new SqlCommand("GetTop5Categories", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            conn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                series.Points.AddXY(dr.GetString(1), dr.GetInt32(0));
            }
            dr.Close();
            conn.Close();
        }

        ArrayList Categoria = new ArrayList();
        ArrayList Cant = new ArrayList();

        private void GrafCategorias()
        {
            cmd = new SqlCommand("GetTop5Categories", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            conn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Cant.Add(dr.GetInt32(0));
                Categoria.Add(dr.GetString(1));
            }
            //chartCategoria.Series[0].Points.DataBindXY(Categoria, Cant);
            dr.Close();
            conn.Close();
        }
    }
}

