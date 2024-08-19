namespace Presentation
{
    partial class Reportes
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
            this.pnMain = new System.Windows.Forms.Panel();
            this.pnMainContainer = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.pnTopNav = new System.Windows.Forms.Panel();
            this.pnleftSide = new System.Windows.Forms.Panel();
            this.pnFilters = new System.Windows.Forms.Panel();
            this.btnReports = new System.Windows.Forms.Button();
            this.pnReportsCTA = new System.Windows.Forms.Panel();
            this.btnFilters = new System.Windows.Forms.Button();
            this.panelEmptyTopMenu = new System.Windows.Forms.Panel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.pnMain.SuspendLayout();
            this.pnMainContainer.SuspendLayout();
            this.pnleftSide.SuspendLayout();
            this.pnFilters.SuspendLayout();
            this.pnReportsCTA.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // pnMain
            // 
            this.pnMain.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.pnMain.Controls.Add(this.pnMainContainer);
            this.pnMain.Controls.Add(this.pnTopNav);
            this.pnMain.Controls.Add(this.pnleftSide);
            this.pnMain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnMain.Location = new System.Drawing.Point(0, 0);
            this.pnMain.Margin = new System.Windows.Forms.Padding(4);
            this.pnMain.Name = "pnMain";
            this.pnMain.Size = new System.Drawing.Size(1741, 775);
            this.pnMain.TabIndex = 0;
            // 
            // pnMainContainer
            // 
            this.pnMainContainer.Controls.Add(this.label1);
            this.pnMainContainer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnMainContainer.Location = new System.Drawing.Point(233, 60);
            this.pnMainContainer.Margin = new System.Windows.Forms.Padding(4);
            this.pnMainContainer.Name = "pnMainContainer";
            this.pnMainContainer.Size = new System.Drawing.Size(1508, 715);
            this.pnMainContainer.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(644, 327);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(152, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Proyecto Base de datos";
            // 
            // pnTopNav
            // 
            this.pnTopNav.BackColor = System.Drawing.SystemColors.HighlightText;
            this.pnTopNav.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnTopNav.Location = new System.Drawing.Point(233, 0);
            this.pnTopNav.Margin = new System.Windows.Forms.Padding(4);
            this.pnTopNav.Name = "pnTopNav";
            this.pnTopNav.Size = new System.Drawing.Size(1508, 60);
            this.pnTopNav.TabIndex = 1;
            // 
            // pnleftSide
            // 
            this.pnleftSide.BackColor = System.Drawing.Color.Teal;
            this.pnleftSide.Controls.Add(this.pnFilters);
            this.pnleftSide.Controls.Add(this.pnReportsCTA);
            this.pnleftSide.Controls.Add(this.panelEmptyTopMenu);
            this.pnleftSide.Controls.Add(this.panel1);
            this.pnleftSide.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnleftSide.Location = new System.Drawing.Point(0, 0);
            this.pnleftSide.Margin = new System.Windows.Forms.Padding(4);
            this.pnleftSide.Name = "pnleftSide";
            this.pnleftSide.Size = new System.Drawing.Size(233, 775);
            this.pnleftSide.TabIndex = 0;
            // 
            // pnFilters
            // 
            this.pnFilters.Controls.Add(this.btnReports);
            this.pnFilters.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnFilters.Location = new System.Drawing.Point(0, 158);
            this.pnFilters.Name = "pnFilters";
            this.pnFilters.Size = new System.Drawing.Size(233, 60);
            this.pnFilters.TabIndex = 3;
            // 
            // btnReports
            // 
            this.btnReports.BackColor = System.Drawing.Color.Teal;
            this.btnReports.FlatAppearance.BorderSize = 0;
            this.btnReports.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnReports.Font = new System.Drawing.Font("Roboto Light", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnReports.ForeColor = System.Drawing.Color.White;
            this.btnReports.Image = global::Presentation.Properties.Resources.Reports;
            this.btnReports.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnReports.Location = new System.Drawing.Point(4, 4);
            this.btnReports.Margin = new System.Windows.Forms.Padding(4);
            this.btnReports.Name = "btnReports";
            this.btnReports.Size = new System.Drawing.Size(225, 52);
            this.btnReports.TabIndex = 1;
            this.btnReports.Text = "        Dashboard";
            this.btnReports.UseVisualStyleBackColor = false;
            this.btnReports.Click += new System.EventHandler(this.btnReports_Click);
            // 
            // pnReportsCTA
            // 
            this.pnReportsCTA.BackColor = System.Drawing.Color.Teal;
            this.pnReportsCTA.Controls.Add(this.btnFilters);
            this.pnReportsCTA.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnReportsCTA.Location = new System.Drawing.Point(0, 99);
            this.pnReportsCTA.Margin = new System.Windows.Forms.Padding(4);
            this.pnReportsCTA.Name = "pnReportsCTA";
            this.pnReportsCTA.Size = new System.Drawing.Size(233, 59);
            this.pnReportsCTA.TabIndex = 2;
            this.pnReportsCTA.Click += new System.EventHandler(this.pnReportsCTA_Click);
            // 
            // btnFilters
            // 
            this.btnFilters.BackColor = System.Drawing.Color.Teal;
            this.btnFilters.FlatAppearance.BorderSize = 0;
            this.btnFilters.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnFilters.Font = new System.Drawing.Font("Roboto Light", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnFilters.ForeColor = System.Drawing.Color.White;
            this.btnFilters.Image = global::Presentation.Properties.Resources.Reports;
            this.btnFilters.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnFilters.Location = new System.Drawing.Point(0, 3);
            this.btnFilters.Margin = new System.Windows.Forms.Padding(4);
            this.btnFilters.Name = "btnFilters";
            this.btnFilters.Size = new System.Drawing.Size(225, 52);
            this.btnFilters.TabIndex = 0;
            this.btnFilters.Text = "  Filtros";
            this.btnFilters.UseVisualStyleBackColor = false;
            this.btnFilters.Click += new System.EventHandler(this.btnFilters_Click);
            // 
            // panelEmptyTopMenu
            // 
            this.panelEmptyTopMenu.BackColor = System.Drawing.Color.Teal;
            this.panelEmptyTopMenu.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelEmptyTopMenu.Location = new System.Drawing.Point(0, 60);
            this.panelEmptyTopMenu.Margin = new System.Windows.Forms.Padding(4);
            this.panelEmptyTopMenu.Name = "panelEmptyTopMenu";
            this.panelEmptyTopMenu.Size = new System.Drawing.Size(233, 39);
            this.panelEmptyTopMenu.TabIndex = 1;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Teal;
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.pictureBox1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(233, 60);
            this.panel1.TabIndex = 0;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Sans Serif Collection", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(68, 11);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(153, 47);
            this.label2.TabIndex = 0;
            this.label2.Text = "Reportes";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::Presentation.Properties.Resources.dahboard32pxBlack;
            this.pictureBox1.Location = new System.Drawing.Point(16, 11);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(4);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(44, 42);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // Reportes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1741, 775);
            this.Controls.Add(this.pnMain);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "Reportes";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.pnMain.ResumeLayout(false);
            this.pnMainContainer.ResumeLayout(false);
            this.pnMainContainer.PerformLayout();
            this.pnleftSide.ResumeLayout(false);
            this.pnFilters.ResumeLayout(false);
            this.pnReportsCTA.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnMain;
        private System.Windows.Forms.Panel pnTopNav;
        private System.Windows.Forms.Panel pnleftSide;
        private System.Windows.Forms.Panel pnMainContainer;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Panel panelEmptyTopMenu;
        private System.Windows.Forms.Panel pnReportsCTA;
        private System.Windows.Forms.Button btnFilters;
        private System.Windows.Forms.Panel pnFilters;
        private System.Windows.Forms.Button btnReports;
    }
}

