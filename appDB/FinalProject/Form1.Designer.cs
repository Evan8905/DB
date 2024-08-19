namespace FinalProject
{
    partial class Main
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
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.leftSideMenu = new System.Windows.Forms.Panel();
            this.MainPanel = new System.Windows.Forms.Panel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.lblLogo = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.panel4 = new System.Windows.Forms.Panel();
            this.panel5 = new System.Windows.Forms.Panel();
            this.btnInfo = new System.Windows.Forms.Button();
            this.btnReports = new System.Windows.Forms.Button();
            this.btnFilters = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.chartCategorias = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.leftSideMenu.SuspendLayout();
            this.MainPanel.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel4.SuspendLayout();
            this.panel5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chartCategorias)).BeginInit();
            this.SuspendLayout();
            // 
            // leftSideMenu
            // 
            this.leftSideMenu.BackColor = System.Drawing.SystemColors.Desktop;
            this.leftSideMenu.Controls.Add(this.panel5);
            this.leftSideMenu.Controls.Add(this.panel4);
            this.leftSideMenu.Controls.Add(this.panel3);
            this.leftSideMenu.Controls.Add(this.panel2);
            this.leftSideMenu.Controls.Add(this.panel1);
            this.leftSideMenu.Dock = System.Windows.Forms.DockStyle.Left;
            this.leftSideMenu.Location = new System.Drawing.Point(0, 0);
            this.leftSideMenu.Name = "leftSideMenu";
            this.leftSideMenu.Size = new System.Drawing.Size(254, 549);
            this.leftSideMenu.TabIndex = 0;
            this.leftSideMenu.Paint += new System.Windows.Forms.PaintEventHandler(this.leftSideMenu_Paint);
            // 
            // MainPanel
            // 
            this.MainPanel.Controls.Add(this.chartCategorias);
            this.MainPanel.Dock = System.Windows.Forms.DockStyle.Fill;
            this.MainPanel.Location = new System.Drawing.Point(254, 0);
            this.MainPanel.Name = "MainPanel";
            this.MainPanel.Size = new System.Drawing.Size(854, 549);
            this.MainPanel.TabIndex = 1;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.lblLogo);
            this.panel1.Controls.Add(this.pictureBox1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(254, 97);
            this.panel1.TabIndex = 1;
            // 
            // lblLogo
            // 
            this.lblLogo.AutoSize = true;
            this.lblLogo.BackColor = System.Drawing.SystemColors.Desktop;
            this.lblLogo.Font = new System.Drawing.Font("Times New Roman", 24F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblLogo.ForeColor = System.Drawing.Color.White;
            this.lblLogo.Location = new System.Drawing.Point(83, 48);
            this.lblLogo.Name = "lblLogo";
            this.lblLogo.Size = new System.Drawing.Size(129, 36);
            this.lblLogo.TabIndex = 1;
            this.lblLogo.Text = "Reportes";
            // 
            // panel2
            // 
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(0, 97);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(254, 56);
            this.panel2.TabIndex = 3;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.btnFilters);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel3.Location = new System.Drawing.Point(0, 153);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(254, 56);
            this.panel3.TabIndex = 4;
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.btnReports);
            this.panel4.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel4.Location = new System.Drawing.Point(0, 209);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(254, 56);
            this.panel4.TabIndex = 5;
            // 
            // panel5
            // 
            this.panel5.Controls.Add(this.btnInfo);
            this.panel5.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel5.Location = new System.Drawing.Point(0, 439);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(254, 110);
            this.panel5.TabIndex = 8;
            // 
            // btnInfo
            // 
            this.btnInfo.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.btnInfo.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnInfo.ForeColor = System.Drawing.SystemColors.ControlText;
            this.btnInfo.Image = global::FinalProject.Properties.Resources.information;
            this.btnInfo.Location = new System.Drawing.Point(72, 3);
            this.btnInfo.Name = "btnInfo";
            this.btnInfo.Size = new System.Drawing.Size(90, 70);
            this.btnInfo.TabIndex = 0;
            this.btnInfo.UseVisualStyleBackColor = true;
            this.btnInfo.Click += new System.EventHandler(this.btnInfo_Click);
            // 
            // btnReports
            // 
            this.btnReports.Image = global::FinalProject.Properties.Resources.reportIcon;
            this.btnReports.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnReports.Location = new System.Drawing.Point(24, 9);
            this.btnReports.Name = "btnReports";
            this.btnReports.Size = new System.Drawing.Size(197, 44);
            this.btnReports.TabIndex = 1;
            this.btnReports.Text = "Reportes";
            this.btnReports.UseVisualStyleBackColor = true;
            this.btnReports.Click += new System.EventHandler(this.btnReports_Click);
            // 
            // btnFilters
            // 
            this.btnFilters.Image = global::FinalProject.Properties.Resources.filtering;
            this.btnFilters.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnFilters.Location = new System.Drawing.Point(24, 6);
            this.btnFilters.Name = "btnFilters";
            this.btnFilters.Size = new System.Drawing.Size(197, 44);
            this.btnFilters.TabIndex = 0;
            this.btnFilters.Text = "Filtros";
            this.btnFilters.UseVisualStyleBackColor = true;
            this.btnFilters.Click += new System.EventHandler(this.btnFilters_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::FinalProject.Properties.Resources.rLogo;
            this.pictureBox1.Location = new System.Drawing.Point(3, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(74, 72);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // chartCategorias
            // 
            chartArea1.Name = "ChartArea1";
            this.chartCategorias.ChartAreas.Add(chartArea1);
            legend1.Name = "Legend1";
            this.chartCategorias.Legends.Add(legend1);
            this.chartCategorias.Location = new System.Drawing.Point(28, 37);
            this.chartCategorias.Name = "chartCategorias";
            series1.ChartArea = "ChartArea1";
            series1.Legend = "Legend1";
            series1.Name = "Series1";
            this.chartCategorias.Series.Add(series1);
            this.chartCategorias.Size = new System.Drawing.Size(447, 382);
            this.chartCategorias.TabIndex = 0;
            this.chartCategorias.Text = "chart1";
            this.chartCategorias.Click += new System.EventHandler(this.chartCategorias_Click);
            // 
            // Main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1108, 549);
            this.Controls.Add(this.MainPanel);
            this.Controls.Add(this.leftSideMenu);
            this.Name = "Main";
            this.Text = "Main";
            this.leftSideMenu.ResumeLayout(false);
            this.MainPanel.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel4.ResumeLayout(false);
            this.panel5.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chartCategorias)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.Panel leftSideMenu;
        private System.Windows.Forms.Panel MainPanel;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label lblLogo;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Button btnReports;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Button btnFilters;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.Button btnInfo;
        private System.Windows.Forms.DataVisualization.Charting.Chart chartCategorias;
    }
}

