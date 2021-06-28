using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DDS_Dau_Tu_Tai_Chinh
{
    public partial class fLogin : Form
    {
        public fLogin()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {
            
        }

        private void btnStart_Click(object sender, EventArgs e)
        {
            fDauTuTaiChinh f = new fDauTuTaiChinh();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void brnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        

        
    }
}
