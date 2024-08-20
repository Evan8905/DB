namespace FinalProject
{
    partial class frmFiltros
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
            this.btnNewReport = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnNewReport
            // 
            this.btnNewReport.Location = new System.Drawing.Point(887, 43);
            this.btnNewReport.Name = "btnNewReport";
            this.btnNewReport.Size = new System.Drawing.Size(118, 34);
            this.btnNewReport.TabIndex = 0;
            this.btnNewReport.Text = "Nuevo Reporte";
            this.btnNewReport.UseVisualStyleBackColor = true;
            this.btnNewReport.Click += new System.EventHandler(this.btnNewReport_Click);
            // 
            // frmFiltros
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1078, 619);
            this.Controls.Add(this.btnNewReport);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "frmFiltros";
            this.Text = "frmFiltros";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnNewReport;
    }
}