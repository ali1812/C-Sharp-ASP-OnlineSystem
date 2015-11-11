using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class editprofile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=B:\\FYP\\myfyp\\App_Data\\myonline.mdf;Integrated Security=True;User Instance=True");

    string oldPsw = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        String user = (string)Session["username"];
        Label1.Text = user;
        if (Label1.Text == "")
        {
            Response.Redirect("Default2.aspx?");

        }
        else
        {
            con.Open();
            string userlogin = (string)Session["username"]; /*to get the username from login page*/
            string usersignup = (string)Session["usernames"];/*to get the username from signup page*/
            string tempName = "";
            if (userlogin != "")
                tempName = userlogin;
            else if (usersignup != "")
                tempName = usersignup;
            SqlCommand cmd3 = new SqlCommand(" SELECT * FROM Customer WHERE UserName = '" + tempName + "'", con);

            SqlDataReader dr2;
            dr2 = cmd3.ExecuteReader();
            while (dr2.Read())
            {
                handphone.Text = dr2["HandphoneNo"].ToString();
                address.Text = dr2["Address"].ToString();
                oldPsw = dr2["Password"].ToString();

            }
            dr2.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string userlogin = (string)Session["username"]; /*to get the username from login page*/
        string usersignup = (string)Session["usernames"];/*to get the username from signup page*/
        string tempName = "";
        if (userlogin != "")
            tempName = userlogin;
        else if (usersignup != "")
            tempName = usersignup;
        if (opassword.Text == oldPsw && Page.IsValid == true)
        {
            String sqlString2 = "UPDATE Customer SET Password = @password, HandphoneNo = @hp, Address =@Address WHERE UserName = @tempName";
            SqlCommand cmd2 = new SqlCommand();
            cmd2 = new SqlCommand(sqlString2, con);
            cmd2.Parameters.AddWithValue("@tempName", tempName);
            cmd2.Parameters.AddWithValue("@password", npassword.Text);
            cmd2.Parameters.AddWithValue("@hp", handphone.Text);
            cmd2.Parameters.AddWithValue("@Address", address.Text);
            cmd2.CommandType = CommandType.Text;
            cmd2.ExecuteNonQuery();
            Response.Redirect("Default2.aspx?");
        }
        else
            Label1.Text = "Wrong password !!";/* to check if the current  password is correct or not */
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Session.Abandon();
        Response.Redirect("Default2.aspx?");
    }
}
