using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void registerButton_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        string query = "insert into [dbo].[Register] (Name,Email,Phone,Password) values(@Name,@Email,@Phone,@Password)";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@Name", nameTextBox.Text);
        cmd.Parameters.AddWithValue("@Email", emailTextBox.Text);
        cmd.Parameters.AddWithValue("@Phone", phoneTextBox.Text);
        cmd.Parameters.AddWithValue("@Password", passwordTextBox.Text);


        con.Open();
        Session["name"] = nameTextBox.Text;
        int result = cmd.ExecuteNonQuery();
        if (result >= 1)
        {
            Response.Write("<script>alert('Registration Successful')</script>");
        }
        else
        {
            Response.Write("<script>alert('Registration Unsuccessful...Please try again.')</script>");
        }
        con.Close();
        nameTextBox.Text = "";
        emailTextBox.Text = "";
        phoneTextBox.Text = "";
        passwordTextBox.Text = "";
    }
}