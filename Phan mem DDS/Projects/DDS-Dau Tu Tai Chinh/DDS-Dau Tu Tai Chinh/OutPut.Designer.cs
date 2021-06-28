namespace DDS_Dau_Tu_Tai_Chinh
{
    partial class fOutPut
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
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea3 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend3 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series3 = new System.Windows.Forms.DataVisualization.Charting.Series();
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea4 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend4 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series4 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.panel1 = new System.Windows.Forms.Panel();
            this.chrLaiNganHang = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.chrPTquy = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chrLaiNganHang)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chrPTquy)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.chrPTquy);
            this.panel1.Controls.Add(this.chrLaiNganHang);
            this.panel1.Location = new System.Drawing.Point(12, 12);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(681, 603);
            this.panel1.TabIndex = 0;
            // 
            // chrLaiNganHang
            // 
            chartArea3.Name = "ChartArea1";
            this.chrLaiNganHang.ChartAreas.Add(chartArea3);
            legend3.Name = "Legend1";
            this.chrLaiNganHang.Legends.Add(legend3);
            this.chrLaiNganHang.Location = new System.Drawing.Point(3, 3);
            this.chrLaiNganHang.Name = "chrLaiNganHang";
            series3.ChartArea = "ChartArea1";
            series3.Legend = "Legend1";
            series3.Name = "Tốc độ phát triển (%)";
            this.chrLaiNganHang.Series.Add(series3);
            this.chrLaiNganHang.Size = new System.Drawing.Size(675, 275);
            this.chrLaiNganHang.TabIndex = 0;
            this.chrLaiNganHang.Text = "Lai Ngan Hang";
            this.chrLaiNganHang.Click += new System.EventHandler(this.chart1_Click);
            // 
            // chrPTquy
            // 
            chartArea4.Name = "ChartArea2";
            this.chrPTquy.ChartAreas.Add(chartArea4);
            legend4.Name = "Legend1";
            this.chrPTquy.Legends.Add(legend4);
            this.chrPTquy.Location = new System.Drawing.Point(3, 309);
            this.chrPTquy.Name = "chrPTquy";
            series4.ChartArea = "ChartArea2";
            series4.Legend = "Legend1";
            series4.Name = "Tốc độ phát triển quý(%)";
            this.chrPTquy.Series.Add(series4);
            this.chrPTquy.Size = new System.Drawing.Size(675, 269);
            this.chrPTquy.TabIndex = 1;
            this.chrPTquy.Text = "chart1";
            this.chrPTquy.Click += new System.EventHandler(this.chart1_Click_1);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(235, 285);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(221, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Tốc độ phát triển từ 2008- 2019 năm tại Việt Nam ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(235, 581);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(183, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Tốc độ phát triển theo quý năm 2020";
            // 
            // fOutPut
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(705, 627);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Name = "fOutPut";
            this.Text = "OutPut";
            this.Load += new System.EventHandler(this.fOutPut_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chrLaiNganHang)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chrPTquy)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataVisualization.Charting.Chart chrLaiNganHang;
        private System.Windows.Forms.DataVisualization.Charting.Chart chrPTquy;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;

    }
}