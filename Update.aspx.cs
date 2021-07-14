using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
        Calendar1.Attributes.Add("style", "position:absolute");
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox3.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
        Calendar1.Visible = false;
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.IsOtherMonth)
        {
            e.Day.IsSelectable = false;
            e.Cell.BackColor = System.Drawing.Color.SkyBlue;
        }
    }

    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        try
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            string query = "update Book set name='" + TextBox1.Text + "',email='" + TextBox2.Text + "',date='" + TextBox3.Text + "',occassion ='" + DropDownList2.SelectedItem.Value + "',theme='" + TextBox5.Text + "',venue='" + DropDownList1.SelectedItem.Value + "' where Id='" + TextBox4.Text + "' ";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Changes Updated')</script>");
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
        catch (System.Data.SqlClient.SqlException)
        {
            Response.Write("<script>alert('Booking Is not available')</script>");
        }
    }
}