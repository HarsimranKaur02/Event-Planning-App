using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Cancellation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DeleteButton_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        string query = "delete from Book where Id='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        int result = cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Booking Cancelled')</script>");
        con.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}