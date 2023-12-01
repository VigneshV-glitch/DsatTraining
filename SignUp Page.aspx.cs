using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DSAT_Training
{
    public partial class SignUp_Page : System.Web.UI.Page
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string Firstname = txtFirstname.Text;
            string Lastname = txtLastname.Text;
            string Email = txtEmail.Text;
            Int64 Phonenumber = Int64.Parse(txtPhoneNumber.Text);
            string Password = txtPassword.Text;

            SqlConnection conn = new SqlConnection(constring);
            conn.Open();
            SqlCommand cmd = new SqlCommand("InsertUsers '" + Firstname + "','"+ Lastname + "','"+ Email + "','"+ Phonenumber + "','"+ Password + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            //Response.Write("<script type=\"text/javascript\">alert('GO TO Login_Page')</script>");
            Response.Redirect("DashBoard.aspx");
        }
    }
}