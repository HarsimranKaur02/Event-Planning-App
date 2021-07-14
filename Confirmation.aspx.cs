using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Confirmation : System.Web.UI.Page
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
        TextBox3.Text = Calendar1.SelectedDate.ToString("yyyy/MM/dd");
        Calendar1.Visible = false;
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.IsOtherMonth)
        {
            e.Day.IsSelectable = false;
            e.Cell.BackColor = System.Drawing.Color.Transparent;
        }
    }


    protected void ConfirmButton_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        SqlCommand com = new SqlCommand("getlastId", con);
        com.CommandType = CommandType.StoredProcedure;
        con.Open();
        com.Parameters.AddWithValue("@name", TextBox1.Text);
        com.Parameters.AddWithValue("@contact", TextBox2.Text);
        com.Parameters.AddWithValue("@date", TextBox3.Text.ToString());
        com.Parameters.AddWithValue("@occassion", DropDownList2.SelectedItem.Value);
        com.Parameters.AddWithValue("@theme", TextBox5.Text);
        com.Parameters.AddWithValue("@venue", DropDownList1.SelectedItem.Value);
        com.Parameters.Add("@Id", SqlDbType.Int).Direction = ParameterDirection.Output;
        com.ExecuteNonQuery();
        Response.Write("<script>alert('Booking Confirmed')</script>");
        string getId = com.Parameters["@Id"].Value.ToString();
        Label1.Visible = true;
        Label1.Text = getId;
        con.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox5.Text = "";

    }
    }