namespace Main
{
    partial class Principal
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            components = new System.ComponentModel.Container();
            panel1 = new Panel();
            infoPanel = new Panel();
            Info = new Button();
            panel6 = new Panel();
            btnReportes = new Button();
            panel5 = new Panel();
            btnFiltros = new Button();
            panel4 = new Panel();
            panel3 = new Panel();
            label1 = new Label();
            pictureBox1 = new PictureBox();
            MainPanel = new Panel();
            lblFecha = new Label();
            lblHora = new Label();
            horaFecha = new System.Windows.Forms.Timer(components);
            panel1.SuspendLayout();
            infoPanel.SuspendLayout();
            panel6.SuspendLayout();
            panel5.SuspendLayout();
            panel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            MainPanel.SuspendLayout();
            SuspendLayout();
            // 
            // panel1
            // 
            panel1.BackColor = SystemColors.Desktop;
            panel1.Controls.Add(infoPanel);
            panel1.Controls.Add(panel6);
            panel1.Controls.Add(panel5);
            panel1.Controls.Add(panel4);
            panel1.Controls.Add(panel3);
            panel1.Dock = DockStyle.Left;
            panel1.Location = new Point(0, 0);
            panel1.Margin = new Padding(3, 2, 3, 2);
            panel1.Name = "panel1";
            panel1.Size = new Size(234, 489);
            panel1.TabIndex = 0;
            // 
            // infoPanel
            // 
            infoPanel.Controls.Add(Info);
            infoPanel.Cursor = Cursors.Hand;
            infoPanel.Dock = DockStyle.Bottom;
            infoPanel.Location = new Point(0, 398);
            infoPanel.Name = "infoPanel";
            infoPanel.Size = new Size(234, 91);
            infoPanel.TabIndex = 6;
            // 
            // Info
            // 
            Info.FlatStyle = FlatStyle.Flat;
            Info.ForeColor = SystemColors.Desktop;
            Info.Image = Properties.Resources.information;
            Info.Location = new Point(79, 17);
            Info.Name = "Info";
            Info.Size = new Size(75, 62);
            Info.TabIndex = 0;
            Info.UseVisualStyleBackColor = true;
            Info.Click += Info_Click;
            // 
            // panel6
            // 
            panel6.Controls.Add(btnReportes);
            panel6.Dock = DockStyle.Top;
            panel6.Location = new Point(0, 170);
            panel6.Margin = new Padding(3, 2, 3, 2);
            panel6.Name = "panel6";
            panel6.Size = new Size(234, 47);
            panel6.TabIndex = 4;
            // 
            // btnReportes
            // 
            btnReportes.Image = Properties.Resources.reportIcon;
            btnReportes.ImageAlign = ContentAlignment.MiddleLeft;
            btnReportes.Location = new Point(14, 4);
            btnReportes.Margin = new Padding(3, 2, 3, 2);
            btnReportes.Name = "btnReportes";
            btnReportes.Size = new Size(210, 38);
            btnReportes.TabIndex = 1;
            btnReportes.Text = "Reportes";
            btnReportes.UseVisualStyleBackColor = true;
            btnReportes.Click += btnReportes_Click;
            // 
            // panel5
            // 
            panel5.Controls.Add(btnFiltros);
            panel5.Dock = DockStyle.Top;
            panel5.Location = new Point(0, 123);
            panel5.Margin = new Padding(3, 2, 3, 2);
            panel5.Name = "panel5";
            panel5.Size = new Size(234, 47);
            panel5.TabIndex = 3;
            // 
            // btnFiltros
            // 
            btnFiltros.Image = Properties.Resources.filtering;
            btnFiltros.ImageAlign = ContentAlignment.MiddleLeft;
            btnFiltros.Location = new Point(14, 4);
            btnFiltros.Margin = new Padding(3, 2, 3, 2);
            btnFiltros.Name = "btnFiltros";
            btnFiltros.Size = new Size(210, 38);
            btnFiltros.TabIndex = 0;
            btnFiltros.Text = "Filtros";
            btnFiltros.UseVisualStyleBackColor = true;
            btnFiltros.Click += btnFiltros_Click;
            // 
            // panel4
            // 
            panel4.Dock = DockStyle.Top;
            panel4.Location = new Point(0, 76);
            panel4.Margin = new Padding(3, 2, 3, 2);
            panel4.Name = "panel4";
            panel4.Size = new Size(234, 47);
            panel4.TabIndex = 2;
            // 
            // panel3
            // 
            panel3.Controls.Add(label1);
            panel3.Controls.Add(pictureBox1);
            panel3.Dock = DockStyle.Top;
            panel3.Location = new Point(0, 0);
            panel3.Margin = new Padding(3, 2, 3, 2);
            panel3.Name = "panel3";
            panel3.Size = new Size(234, 76);
            panel3.TabIndex = 0;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.BackColor = SystemColors.ActiveCaptionText;
            label1.Font = new Font("Times New Roman", 24F, FontStyle.Bold | FontStyle.Italic, GraphicsUnit.Point, 0);
            label1.ForeColor = SystemColors.Control;
            label1.Location = new Point(79, 28);
            label1.Name = "label1";
            label1.Size = new Size(129, 36);
            label1.TabIndex = 1;
            label1.Text = "Reportes";
            // 
            // pictureBox1
            // 
            pictureBox1.Image = Properties.Resources.rLogo;
            pictureBox1.Location = new Point(10, 9);
            pictureBox1.Margin = new Padding(3, 2, 3, 2);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(63, 53);
            pictureBox1.TabIndex = 0;
            pictureBox1.TabStop = false;
            // 
            // MainPanel
            // 
            MainPanel.BackColor = SystemColors.ActiveBorder;
            MainPanel.Controls.Add(lblFecha);
            MainPanel.Controls.Add(lblHora);
            MainPanel.Dock = DockStyle.Fill;
            MainPanel.Location = new Point(234, 0);
            MainPanel.Margin = new Padding(3, 2, 3, 2);
            MainPanel.Name = "MainPanel";
            MainPanel.Size = new Size(1008, 489);
            MainPanel.TabIndex = 1;
            // 
            // lblFecha
            // 
            lblFecha.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            lblFecha.AutoSize = true;
            lblFecha.Font = new Font("Tahoma", 24F, FontStyle.Regular, GraphicsUnit.Point, 0);
            lblFecha.ForeColor = Color.Black;
            lblFecha.Location = new Point(594, 415);
            lblFecha.Name = "lblFecha";
            lblFecha.Size = new Size(100, 39);
            lblFecha.TabIndex = 1;
            lblFecha.Text = "label2";
            // 
            // lblHora
            // 
            lblHora.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            lblHora.AutoSize = true;
            lblHora.Font = new Font("Tahoma", 48F);
            lblHora.ForeColor = Color.Black;
            lblHora.Location = new Point(594, 338);
            lblHora.Name = "lblHora";
            lblHora.Size = new Size(201, 77);
            lblHora.TabIndex = 0;
            lblHora.Text = "label2";
            // 
            // horaFecha
            // 
            horaFecha.Enabled = true;
            horaFecha.Tick += horaFecha_Tick;
            // 
            // Principal
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1242, 489);
            Controls.Add(MainPanel);
            Controls.Add(panel1);
            Margin = new Padding(3, 2, 3, 2);
            Name = "Principal";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Principal";
            WindowState = FormWindowState.Maximized;
            panel1.ResumeLayout(false);
            infoPanel.ResumeLayout(false);
            panel6.ResumeLayout(false);
            panel5.ResumeLayout(false);
            panel3.ResumeLayout(false);
            panel3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            MainPanel.ResumeLayout(false);
            MainPanel.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private Panel panel1;
        private Panel panel3;
        private PictureBox pictureBox1;
        private Panel MainPanel;
        private Label label1;
        private Panel panel6;
        private Button btnReportes;
        private Panel panel5;
        private Button btnFiltros;
        private Panel panel4;
        private Label lblFecha;
        private Label lblHora;
        private System.Windows.Forms.Timer horaFecha;
        private Panel infoPanel;
        private Button Info;
    }
}
