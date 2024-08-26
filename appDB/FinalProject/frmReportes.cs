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
            GrafCreditAmountPerClient();
            GrafCustomerCountByContractType();
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

        /*ArrayList Categoria = new ArrayList();
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
        }*/

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
            Reporte1.Series[0].Points.DataBindXY(Categoria, Cant);
            dr.Close();
            conn.Close();
        }

        ArrayList sk = new ArrayList();
        ArrayList applications = new ArrayList();
        ArrayList TotalCredits = new ArrayList();


        /*private void GrafCreditAmountPerClient()
        {
            cmd = new SqlCommand("GetCreditAmountPerClient", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            conn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                sk.Add(dr.GetInt32(0)); // SK_ID_CURR
                applications.Add(dr.GetInt32(1)); // Num_Previous_Applications
                TotalCredits.Add(dr.GetDecimal(2)); // Total_Credit_Amount (debe ser decimal)
            }
            Reporte2.Series[0].Points.DataBindXY(sk, applications, TotalCredits);
            dr.Close();
            conn.Close();
        }*/

        private void GrafCreditAmountPerClient()
        {
            cmd = new SqlCommand("GetCreditAmountPerClient", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            conn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                // Obtener SK_ID_CURR como string y convertir a entero si es necesario
                string sk_id_curr_str = dr.GetString(0);
                int sk_id_curr = 0;

                // Intentar convertir el string a un entero si es necesario
                if (int.TryParse(sk_id_curr_str, out sk_id_curr))
                {
                    sk.Add(sk_id_curr); // Añadir a la lista de enteros
                }
                else
                {
                    // Maneja el caso donde la conversión no es posible, por ejemplo:
                    sk.Add(0); // O maneja como sea adecuado para tu aplicación
                }

                applications.Add(dr.GetInt32(1)); // Num_Previous_Applications
                TotalCredits.Add(dr.GetDecimal(2)); // Total_Credit_Amount
            }
            //Reporte2.Series[0].Points.DataBindXY(sk, applications, TotalCredits);
            Reporte2.Series[0].Points.DataBindXY(sk, TotalCredits);

            dr.Close();
            conn.Close();
        }

        ArrayList tipoContrato = new ArrayList();
        ArrayList CantClientes = new ArrayList();

        /*private void GrafCustomerCountByContractType()
        {
            cmd = new SqlCommand("GetCustomerCountByContractType", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            conn.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                CantClientes.Add(dr.GetInt32(0));
                tipoContrato.Add(dr.GetString(1));
            }
            Reporte3.Series[0].Points.DataBindXY(tipoContrato, CantClientes);
            dr.Close();
            conn.Close();
        }*/
        private void GrafCustomerCountByContractType()
        {
            cmd = new SqlCommand("GetCustomerCountByContractType", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                conn.Open();
                dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    // Leer el primer valor como string (tipo de contrato)
                    if (!dr.IsDBNull(0))
                    {
                        tipoContrato.Add(dr.GetString(0));
                    }
                    else
                    {
                        tipoContrato.Add("Desconocido"); // Valor por defecto si es NULL
                    }

                    // Leer el segundo valor como int (número de clientes)
                    if (!dr.IsDBNull(1))
                    {
                        CantClientes.Add(dr.GetInt32(1));
                    }
                    else
                    {
                        CantClientes.Add(0); // Valor por defecto si es NULL
                    }
                }
            }
            catch (Exception ex)
            {
                // Manejo general de excepciones
                Console.WriteLine($"Error al ejecutar el procedimiento almacenado: {ex.Message}");
            }
            finally
            {
                // Asegurarse de cerrar el lector y la conexión
                if (dr != null && !dr.IsClosed)
                {
                    dr.Close();
                }
                if (conn != null && conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }

            // Verificar que las listas tienen el mismo tamaño antes de vincular al gráfico
            if (tipoContrato.Count == CantClientes.Count)
            {
                // Vincular los datos al gráfico
                Reporte3.Series[0].Points.DataBindXY(tipoContrato, CantClientes);
            }
            else
            {
                // Manejo del error en caso de desajuste en el tamaño de las listas
                Console.WriteLine("Error: El número de valores X y Y no coincide.");
            }
        }


        private void Reporte1_Click(object sender, EventArgs e)
        {

        }
    }
}

