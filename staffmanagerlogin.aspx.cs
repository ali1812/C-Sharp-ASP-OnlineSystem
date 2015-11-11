using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class staffmanagerlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool found = false;
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=B:\\FYP\\myfyp\\App_Data\\myonline.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM staff_account WHERE username = '" + TextBox1.Text + "' AND password = '" +
        TextBox2.Text + "'", con);

        SqlDataReader dr;
        dr = cmd.ExecuteReader();



        SqlCommand cmd2 = new SqlCommand("SELECT * FROM manager_account WHERE username = '" + TextBox1.Text + "' AND password = '" +
        TextBox2.Text + "'", con);


        if (dr.HasRows == true)
        {
            Session["userstaff"] = TextBox1.Text;
            Response.Redirect("staffloggedin.aspx?");
            found = true;
        }

        dr.Close();

        SqlDataReader dr2;
        dr2 = cmd2.ExecuteReader();

        if (dr2.HasRows == true)
        {
            Session["userman"] = TextBox1.Text;
            Response.Redirect("manlogged.aspx?");
            found = true;
        }

        if (found == false)
        {
            Label1.Text = "Invalid username or Password!!";
        }

    }
}
