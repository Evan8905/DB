﻿namespace FinalProject
{
    partial class frmReportes
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea2 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend2 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series2 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea3 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend3 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series3 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea4 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend4 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series4 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea5 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend5 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series5 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.Reporte4 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.Reporte1 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.Reporte2 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.Reporte5 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.Reporte3 = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.Reporte4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Reporte1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Reporte2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Reporte5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Reporte3)).BeginInit();
            this.SuspendLayout();
            // 
            // Reporte4
            // 
            this.Reporte4.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            chartArea1.Name = "ChartArea1";
            this.Reporte4.ChartAreas.Add(chartArea1);
            legend1.Name = "Legend1";
            this.Reporte4.Legends.Add(legend1);
            this.Reporte4.Location = new System.Drawing.Point(914, 361);
            this.Reporte4.Name = "Reporte4";
            series1.ChartArea = "ChartArea1";
            series1.Legend = "Legend1";
            series1.Name = "Series1";
            this.Reporte4.Series.Add(series1);
            this.Reporte4.Size = new System.Drawing.Size(299, 241);
            this.Reporte4.TabIndex = 1;
            this.Reporte4.Text = "chart1";
            // 
            // Reporte1
            // 
            chartArea2.Name = "ChartArea1";
            this.Reporte1.ChartAreas.Add(chartArea2);
            legend2.Name = "Legend1";
            this.Reporte1.Legends.Add(legend2);
            this.Reporte1.Location = new System.Drawing.Point(12, 47);
            this.Reporte1.Name = "Reporte1";
            series2.ChartArea = "ChartArea1";
            series2.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Doughnut;
            series2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            series2.IsValueShownAsLabel = true;
            series2.Legend = "Legend1";
            series2.Name = "Categorias";
            this.Reporte1.Series.Add(series2);
            this.Reporte1.Size = new System.Drawing.Size(398, 268);
            this.Reporte1.TabIndex = 2;
            this.Reporte1.Text = "chart2";
            this.Reporte1.Click += new System.EventHandler(this.Reporte1_Click);
            // 
            // Reporte2
            // 
            this.Reporte2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            chartArea3.Name = "ChartArea1";
            this.Reporte2.ChartAreas.Add(chartArea3);
            legend3.Name = "Legend1";
            this.Reporte2.Legends.Add(legend3);
            this.Reporte2.Location = new System.Drawing.Point(521, 47);
            this.Reporte2.Name = "Reporte2";
            series3.ChartArea = "ChartArea1";
            series3.Legend = "Legend1";
            series3.Name = "Series1";
            this.Reporte2.Series.Add(series3);
            this.Reporte2.Size = new System.Drawing.Size(637, 282);
            this.Reporte2.TabIndex = 3;
            this.Reporte2.Text = "chart3";
            // 
            // Reporte5
            // 
            this.Reporte5.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            chartArea4.Name = "ChartArea1";
            this.Reporte5.ChartAreas.Add(chartArea4);
            legend4.Name = "Legend1";
            this.Reporte5.Legends.Add(legend4);
            this.Reporte5.Location = new System.Drawing.Point(506, 361);
            this.Reporte5.Name = "Reporte5";
            series4.ChartArea = "ChartArea1";
            series4.Legend = "Legend1";
            series4.Name = "Series1";
            this.Reporte5.Series.Add(series4);
            this.Reporte5.Size = new System.Drawing.Size(299, 241);
            this.Reporte5.TabIndex = 4;
            this.Reporte5.Text = "chart4";
            // 
            // Reporte3
            // 
            this.Reporte3.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            chartArea5.Name = "ChartArea1";
            this.Reporte3.ChartAreas.Add(chartArea5);
            legend5.Name = "Legend1";
            this.Reporte3.Legends.Add(legend5);
            this.Reporte3.Location = new System.Drawing.Point(12, 350);
            this.Reporte3.Name = "Reporte3";
            series5.ChartArea = "ChartArea1";
            series5.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.StackedBar;
            series5.IsValueShownAsLabel = true;
            series5.Legend = "Legend1";
            series5.Name = "Series1";
            this.Reporte3.Series.Add(series5);
            this.Reporte3.Size = new System.Drawing.Size(395, 272);
            this.Reporte3.TabIndex = 5;
            this.Reporte3.Text = "chart5";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Roboto", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(12, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(141, 18);
            this.label1.TabIndex = 6;
            this.label1.Text = "Top 5 de Categorías";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Roboto", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(12, 329);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(196, 18);
            this.label2.TabIndex = 7;
            this.label2.Text = "Clientes por tipo de contrato";
            // 
            // frmReportes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1247, 634);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Reporte3);
            this.Controls.Add(this.Reporte5);
            this.Controls.Add(this.Reporte2);
            this.Controls.Add(this.Reporte1);
            this.Controls.Add(this.Reporte4);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.Name = "frmReportes";
            this.Text = "frmReportes";
            ((System.ComponentModel.ISupportInitialize)(this.Reporte4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Reporte1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Reporte2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Reporte5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Reporte3)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.DataVisualization.Charting.Chart Reporte4;
        private System.Windows.Forms.DataVisualization.Charting.Chart Reporte1;
        private System.Windows.Forms.DataVisualization.Charting.Chart Reporte2;
        private System.Windows.Forms.DataVisualization.Charting.Chart Reporte5;
        private System.Windows.Forms.DataVisualization.Charting.Chart Reporte3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
    }
}