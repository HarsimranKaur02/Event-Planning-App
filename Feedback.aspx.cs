using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void FeedbackButton_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        string query = "insert into FeedBack values(' " + TextBox1.Text + " ' ,' " + TextBox2.Text + " ')";
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        int result = cmd.ExecuteNonQuery();
        con.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        if (result >= 1)
        {
            Response.Write("<script>alert('Data saved successfully.')</script>");
        }
        else
        {
            Response.Write("<script>alert('Data not saved.')</script>");
        }

    }
}