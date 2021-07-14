using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Booking : System.Web.UI.Page
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
        DateTime pastday = e.Day.Date;
        DateTime date = DateTime.Now;
        int year = date.Year;
        int month = date.Month;
        int day = date.Day;
        DateTime today = new DateTime(year, month, day);
        if(pastday.CompareTo(today) < 0)
        {
            e.Cell.BackColor = System.Drawing.Color.LightGray;
            e.Day.IsSelectable = false;

        }
        if (e.Day.IsOtherMonth)
        {
            e.Day.IsSelectable = false;
            e.Cell.BackColor = System.Drawing.Color.LightGray;
        }
    }

    protected void ConfirmButton_Click(object sender, EventArgs e)
    {
        try
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlCommand com = new SqlCommand("getlastId", con);
            com.CommandType = CommandType.StoredProcedure;
            con.Open();
            com.Parameters.AddWithValue("@name", TextBox1.Text);
            com.Parameters.AddWithValue("@email", TextBox2.Text);
            com.Parameters.AddWithValue("@date", TextBox3.Text.ToString());
            com.Parameters.AddWithValue("@occassion", DropDownList2.SelectedItem.Value);
            com.Parameters.AddWithValue("@theme", TextBox5.Text);
            com.Parameters.AddWithValue("@venue", DropDownList1.SelectedItem.Value);
            com.Parameters.Add("@Id", SqlDbType.Int).Direction = ParameterDirection.Output;
            com.ExecuteNonQuery();
            if (Session["email"].ToString() != TextBox2.Text.ToString())
            {
                Response.Write("<script>alert('Enter registered email id. Book again!!')</script>");
            }
            else
            {
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
        catch (System.Data.SqlClient.SqlException)
        {
            Response.Write("<script>alert('Booking Is not available')</script>");
        }
    }
}