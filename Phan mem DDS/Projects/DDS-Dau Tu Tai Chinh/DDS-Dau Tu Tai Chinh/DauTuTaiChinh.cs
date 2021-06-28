using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DDS_Dau_Tu_Tai_Chinh
{
    public partial class fDauTuTaiChinh : Form
    {
        public fDauTuTaiChinh()
        {
            InitializeComponent();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
        

        private void btnCalu_Click(object sender, EventArgs e)
        {
            //Tao string va tao connextion string
            string connectionSTR = "Data Source=.;Initial Catalog=DDS;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionSTR);

            //Mo va dong connection
            connection.Open();
            //Nhap query

            string noi = "";
            switch (int.Parse(txtTime.Text))
            {
                case 3 :
                    noi = "";
                    break;
                case 6 :
                    noi = "6";
                    break;
                case 12 :
                    noi = "12";
                    break;
                default :
                    MessageBox.Show("Chi nhap gia tri : 3 /6 /12 thang !", "Thông báo", MessageBoxButtons.OK);
                    break;


            }
            string query = "sp_MAOHIEM" + noi;
            SqlCommand command = new SqlCommand(query, connection);

            float d1 = 0.4f; float d2 = 0.3f; float d3 = 0.3f;
            
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@DDKTPT", d1);
            command.Parameters.AddWithValue("@DDKTTT", d2);
            command.Parameters.AddWithValue("@DDLP", d3);
            command.Parameters.Add("@DUDOAN", SqlDbType.VarChar,50);
            

            command.Parameters["@DUDOAN"].Direction = ParameterDirection.Output;

            command.ExecuteNonQuery();

            string messeage = (string) command.Parameters["@DUDOAN"].Value;
            var d_pred = Convert.ToDecimal(messeage);
            decimal predict = d_pred/10000;
                
            
            string s_Money = txtMoney.Text;
            decimal money = 0;
            //if (s_Money == null)
        
            money = decimal.Parse(s_Money);// nhơ check gia tri khac rong moi convert nhe
            
            decimal profit = 0;
            if (money > 0 && money < 100000000)
            {
                
                     profit = money * (1+predict);
            }
            else
            {
                MessageBox.Show("Nhap sai !", "Thông báo", MessageBoxButtons.OK);
            }
            string str = profit.ToString(); 

            txtOutput.Text = str;
            connection.Close();
            
            
      
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void btn_Lacquan_Click(object sender, EventArgs e)
        {
            //Tao string va tao connextion string
            string connectionSTR = "Data Source=MSI;Initial Catalog=DDS;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionSTR);

            //Mo va dong connection
            connection.Open();
            //Nhap query

            string noi = "";
            switch (int.Parse(txtTime.Text))
            {
                case 3:
                    noi = "";
                    break;
                case 6:
                    noi = "6";
                    break;
                case 12:
                    noi = "12";
                    break;
                default:
                    MessageBox.Show("Chi nhap gia tri : 3 /6 /12 thang !", "Thông báo", MessageBoxButtons.OK);
                    break;


            }
            string query = "sp_MAXMAX" + noi;
            SqlCommand command = new SqlCommand(query, connection);

            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@LUACHON", SqlDbType.VarChar,50);
            command.Parameters.Add("@DAURA", SqlDbType.VarChar, 50);


            command.Parameters["@LUACHON"].Direction = ParameterDirection.Output;
            command.Parameters["@DAURA"].Direction = ParameterDirection.Output;

            command.ExecuteNonQuery();

            string messeage = (string)command.Parameters["@DAURA"].Value;
            var d_pred = Convert.ToDecimal(messeage);
            decimal predict = d_pred / 10000;

            txtLCLacQuan.Text = (string)command.Parameters["@LUACHON"].Value;


            string s_Money = txtMoney.Text;
            decimal money = 0;
            //if (s_Money == null)

            money = decimal.Parse(s_Money);// nhơ check gia tri khac rong moi convert nhe

            decimal profit = 0;
            if (money > 0 && money < 100000000)
            {

                profit = money * (1 + predict);
            }
            else
            {
                MessageBox.Show("Nhap sai !", "Thông báo", MessageBoxButtons.OK);
            }
            string str = profit.ToString();

            txtLacquan.Text = str;
            connection.Close();
        }

        private void btn_Biquan_Click(object sender, EventArgs e)
        {
            //Tao string va tao connextion string
            string connectionSTR = "Data Source=MSI;Initial Catalog=DDS;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionSTR);

            //Mo va dong connection
            connection.Open();
            //Nhap query

            string noi = "";
            switch (int.Parse(txtTime.Text))
            {
                case 3:
                    noi = "";
                    break;
                case 6:
                    noi = "6";
                    break;
                case 12:
                    noi = "12";
                    break;
                default:
                    MessageBox.Show("Chi nhap gia tri : 3 /6 /12 thang !", "Thông báo", MessageBoxButtons.OK);
                    break;


            }
            string query = "sp_MAXMIN" + noi;
            SqlCommand command = new SqlCommand(query, connection);

            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.Add("@LUACHON", SqlDbType.VarChar, 50);
            command.Parameters.Add("@DAURA", SqlDbType.VarChar, 50);


            command.Parameters["@LUACHON"].Direction = ParameterDirection.Output;
            command.Parameters["@DAURA"].Direction = ParameterDirection.Output;

            command.ExecuteNonQuery();

            string messeage = (string)command.Parameters["@DAURA"].Value;
            var d_pred = Convert.ToDecimal(messeage);
            decimal predict = d_pred / 10000;

            txt_LCBiquan.Text = (string)command.Parameters["@LUACHON"].Value;


            string s_Money = txtMoney.Text;
            decimal money = 0;
            //if (s_Money == null)

            money = decimal.Parse(s_Money);// nhơ check gia tri khac rong moi convert nhe

            decimal profit = 0;
            if (money > 0 && money < 100000000)
            {

                profit = money * (1 + predict);
            }
            else
            {
                MessageBox.Show("Nhap sai !", "Thông báo", MessageBoxButtons.OK);
            }
            string str = profit.ToString();

            txt_Biquan.Text = str;
            connection.Close();
        }

        private void btn_Chart_Click(object sender, EventArgs e)
        {
            fOutPut f = new fOutPut();
            f.Show();
            
        }

        private void label7_Click(object sender, EventArgs e)
        {

        }



        
    }
}
