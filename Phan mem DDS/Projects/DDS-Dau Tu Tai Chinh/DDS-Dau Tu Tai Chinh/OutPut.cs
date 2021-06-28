using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace DDS_Dau_Tu_Tai_Chinh
{
    public partial class fOutPut : Form
    {
        public fOutPut()
        {
            InitializeComponent();
        }

        private void chart1_Click(object sender, EventArgs e)
        {

        }

        private void fOutPut_Load(object sender, EventArgs e)
        {
            //Tao string va tao connextion string
            string connectionSTR = "Data Source=.;Initial Catalog=DDS;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionSTR);
            //Mo va dong connection

            connection.Open();
            //Nhap query

            string query = "SELECT * FROM dbo.PT_nam ";
            SqlCommand command = new SqlCommand(query, connection);

            //Tao Adapter de chuyen doi du lieu tu database
            SqlDataAdapter adapter = new SqlDataAdapter(command);

            

            DataTable data = new DataTable();
            adapter.Fill(data);
            chrLaiNganHang.DataSource = data;
            chrLaiNganHang.ChartAreas["ChartArea1"].AxisX.Title = "Nam";
            chrLaiNganHang.ChartAreas["ChartArea1"].AxisY.Title = "Toc do phat trien";

            chrLaiNganHang.Series["Tốc độ phát triển (%)"].XValueMember = "Nam";
            chrLaiNganHang.Series["Tốc độ phát triển (%)"].YValueMembers = "Toc do phat trien";
            connection.Close();

            connection.Open();
            //Nhap query

            string query1 = "SELECT * FROM dbo.PT_quy ";
            SqlCommand command1 = new SqlCommand(query1, connection);

            //Tao Adapter de chuyen doi du lieu tu database
            SqlDataAdapter adapter1 = new SqlDataAdapter(command1);



            DataTable data1 = new DataTable();
            adapter1.Fill(data1);
            chrPTquy.DataSource = data1;
            chrPTquy.ChartAreas["ChartArea2"].AxisX.Title = "Quy";
            chrPTquy.ChartAreas["ChartArea2"].AxisY.Title = "Toc do phat trien";

            chrPTquy.Series["Tốc độ phát triển quý(%)"].XValueMember = "Quy";
            chrPTquy.Series["Tốc độ phát triển quý(%)"].YValueMembers = "Toc do phat trien";
            connection.Close();

        }

        private void chart1_Click_1(object sender, EventArgs e)
        {

        }
    }
}
