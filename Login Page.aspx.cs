using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Principal;
using System.Web.Services.Description;

namespace DSAT_Training
{
    public partial class Login_Page : System.Web.UI.Page
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
        //SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-H7GBFD5\SQLEXPRESS; Initial catalog=crud; integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string Username = txtusername.Text;
            string Password = txtpassword.Text;

            SqlConnection conn = new SqlConnection(conString);
            SqlCommand cmd = new SqlCommand("login_sp '"+ Username+"','"+Password+"'", conn);
            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cmd.ExecuteReader();
            conn.Close();

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("DashBoard.aspx");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Incorrect Username/Password')</script>");
            }
        }
    }
}