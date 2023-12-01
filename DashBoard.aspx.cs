using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DSAT_Training
{
    public partial class DashBoard : System.Web.UI.Page
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
        //SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-H7GBFD5\SQLEXPRESS; Initial catalog= crud; integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                EmployeeDetails();
            }
        }

        void EmployeeDetails()
        {
            SqlConnection conn = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand("EmployeeDeatils", conn);
            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Gridview1.DataSource = dt;
            Gridview1.DataBind();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string Firstname = txtFirstname.Text;
            string Lastname = txtLastname.Text;
            string Email = txtEmail.Text;
            Int64 Phonenumber = Int64.Parse(txtPhonenumber.Text);
            string Password = txtPassword.Text;

            SqlConnection conn = new SqlConnection(constring);
            conn.Open();
            SqlCommand cmd = new SqlCommand("InsertUsers '" + Firstname + "','" + Lastname + "','" + Email + "','" + Phonenumber + "','" + Password + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            string Meassge = "Employee Details Instered Successfully";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('"+ Meassge + "');", true);
            //Response.Write("<script type=\"text/javascript\">alret('Employee Details Instered Successfully')</script>");
            EmployeeDetails();


            txtFirstname.Text = " ";
            txtLastname.Text = " ";
            txtEmail.Text = " ";
            txtPhonenumber.Text = " ";
            txtPassword.Text = " ";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string Firstname = txtFirstname.Text;
            string Lastname = txtLastname.Text;
            string Email = txtEmail.Text;
            Int64 Phonenumber = Int64.Parse(txtPhonenumber.Text);
            string Password = txtPassword.Text;
            SqlConnection conn = new SqlConnection(constring);
            conn.Open();
            SqlCommand cmd = new SqlCommand("UpdateUsers '" + Firstname + "','" + Lastname + "','" + Email + "','" + Phonenumber + "','" + Password + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            EmployeeDetails();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string Firstname = txtFirstname.Text;
            SqlConnection conn = new SqlConnection(constring);
            conn.Open();
            SqlCommand cmd = new SqlCommand("SearchUsers '" + Firstname + "' ",conn);
            SqlDataReader dr1 = cmd.ExecuteReader();
            if (dr1.Read())
            {
                txtLastname.Text = dr1.GetValue(1).ToString();
                txtEmail.Text = dr1.GetValue(2).ToString();
                txtPhonenumber.Text = dr1.GetValue(3).ToString();
                txtPassword.Text = dr1.GetValue(4).ToString();
            }
            else
            {
                throw new ArithmeticException("No Data Found..!");
            }
            conn.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string Firstname = txtFirstname.Text;
            SqlConnection conn = new SqlConnection(constring);
            conn.Open();
            SqlCommand cmd = new SqlCommand("DeleteUsers '" + Firstname + "'",conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            EmployeeDetails();
        }
    }
}