using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        emailTextBox.Enabled = false;
        if (!IsPostBack)
        {
            PopulateFields();
        }
    }

    private void PopulateFields()
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con1 = new SqlConnection(cs);
        DataTable dt = new DataTable();
        con1.Open();
        SqlDataReader myReader = null;
        SqlCommand myCommand = new SqlCommand("select * from Register where Email ='" + Session["email"] + "'", con1);
        myReader = myCommand.ExecuteReader();
        while (myReader.Read())
        {
            nameTextBox.Text = (myReader["Name"].ToString());
            emailTextBox.Text = (myReader["Email"].ToString());
            phoneTextBox.Text = (myReader["Phone"].ToString());
        }
        con1.Close();
    }

    protected void updateButton_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("UPDATE Register SET Password = @password, Name = @name, Phone = @phone where email='" + Session["email"] + "'", con);
        con.Open();
        cmd.Parameters.AddWithValue("@password", passwordTextBox.Text);
        cmd.Parameters.AddWithValue("@name", nameTextBox.Text);
        cmd.Parameters.AddWithValue("@phone", phoneTextBox.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Changes Updated')</script>");
        passwordTextBox.Text = "";
    }
}