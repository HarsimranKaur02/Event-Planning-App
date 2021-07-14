using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_ResetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void registerButton_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        string query = "update Register set Password ='" + passwordTextBox.Text + "' where Email='" + EmailTextBox.Text + "' ";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Changes Updated')</script>");
        con.Close();
        passwordTextBox.Text = "";
        confirmTextBox.Text = "";
        EmailTextBox.Text = "";
       
    }
}