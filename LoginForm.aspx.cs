using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_LoginForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginButton_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();

        string s1 = "";

        SqlCommand cmd = new SqlCommand("select * from Register where Email='" + emailTextBox.Text + "' and Password='" + passwordTextBox.Text + "'", con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            s1 = dr[0].ToString();

        }
        if (s1 == "")
        {
            emailTextBox.Text = "";
            passwordTextBox.Text = "";

            Response.Write("<script>alert('Incorrect username or password.')</script>");

        }
        else
        {
            Session["s1"] = emailTextBox.Text;
            Session["email"] = emailTextBox.Text;
            Response.Redirect("../Login/Booking.aspx");

        }
        con.Close();
    }
}
