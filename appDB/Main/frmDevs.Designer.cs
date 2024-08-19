namespace Main
{
    partial class frmDevs
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
            panel1 = new Panel();
            lblTitle = new Label();
            label1 = new Label();
            pictureBox1 = new PictureBox();
            panel2 = new Panel();
            pictureBox2 = new PictureBox();
            label2 = new Label();
            label3 = new Label();
            pictureBox3 = new PictureBox();
            label4 = new Label();
            pictureBox4 = new PictureBox();
            panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox3).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox4).BeginInit();
            SuspendLayout();
            // 
            // panel1
            // 
            panel1.Controls.Add(panel2);
            panel1.Controls.Add(pictureBox1);
            panel1.Controls.Add(lblTitle);
            panel1.Dock = DockStyle.Fill;
            panel1.Location = new Point(0, 0);
            panel1.Name = "panel1";
            panel1.Size = new Size(1070, 581);
            panel1.TabIndex = 1;
            // 
            // lblTitle
            // 
            lblTitle.AutoSize = true;
            lblTitle.Location = new Point(220, 30);
            lblTitle.Name = "lblTitle";
            lblTitle.Size = new Size(132, 15);
            lblTitle.TabIndex = 1;
            lblTitle.Text = "Proyecto Base de datos ";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(75, 30);
            label1.Name = "label1";
            label1.Size = new Size(97, 15);
            label1.TabIndex = 2;
            label1.Text = "Desarrollado por ";
            // 
            // pictureBox1
            // 
            pictureBox1.Image = Properties.Resources.users;
            pictureBox1.Location = new Point(220, 64);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(514, 484);
            pictureBox1.TabIndex = 3;
            pictureBox1.TabStop = false;
            // 
            // panel2
            // 
            panel2.Controls.Add(label4);
            panel2.Controls.Add(pictureBox4);
            panel2.Controls.Add(label3);
            panel2.Controls.Add(pictureBox3);
            panel2.Controls.Add(label2);
            panel2.Controls.Add(pictureBox2);
            panel2.Controls.Add(label1);
            panel2.Dock = DockStyle.Right;
            panel2.Location = new Point(805, 0);
            panel2.Name = "panel2";
            panel2.Size = new Size(265, 581);
            panel2.TabIndex = 4;
            // 
            // pictureBox2
            // 
            pictureBox2.Image = Properties.Resources.programmer;
            pictureBox2.Location = new Point(35, 83);
            pictureBox2.Name = "pictureBox2";
            pictureBox2.Size = new Size(32, 33);
            pictureBox2.TabIndex = 3;
            pictureBox2.TabStop = false;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(75, 101);
            label2.Name = "label2";
            label2.Size = new Size(70, 15);
            label2.TabIndex = 4;
            label2.Text = "Evan Duarte";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(76, 214);
            label3.Name = "label3";
            label3.Size = new Size(96, 15);
            label3.TabIndex = 6;
            label3.Text = "Xavier Fernandez";
            label3.Click += label3_Click;
            // 
            // pictureBox3
            // 
            pictureBox3.Image = Properties.Resources.programmer;
            pictureBox3.Location = new Point(36, 196);
            pictureBox3.Name = "pictureBox3";
            pictureBox3.Size = new Size(32, 33);
            pictureBox3.TabIndex = 5;
            pictureBox3.TabStop = false;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(75, 158);
            label4.Name = "label4";
            label4.Size = new Size(90, 15);
            label4.TabIndex = 8;
            label4.Text = "Brandon Badilla";
            // 
            // pictureBox4
            // 
            pictureBox4.Image = Properties.Resources.programmer;
            pictureBox4.Location = new Point(35, 140);
            pictureBox4.Name = "pictureBox4";
            pictureBox4.Size = new Size(32, 33);
            pictureBox4.TabIndex = 7;
            pictureBox4.TabStop = false;
            // 
            // frmDevs
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1070, 581);
            Controls.Add(panel1);
            FormBorderStyle = FormBorderStyle.None;
            Name = "frmDevs";
            Text = "frmDevs";
            panel1.ResumeLayout(false);
            panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            panel2.ResumeLayout(false);
            panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox3).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox4).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private Panel panel1;
        private PictureBox pictureBox1;
        private Label label1;
        private Label lblTitle;
        private Panel panel2;
        private Label label3;
        private PictureBox pictureBox3;
        private Label label2;
        private PictureBox pictureBox2;
        private Label label4;
        private PictureBox pictureBox4;
    }
}