using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ccJoin.ValidateCaptcha(TextBox10.Text);
        if (!ccJoin.UserValidated)
        {
            Label1.Text = "*wrong code !!";
        }
        else
        {
            Label1.Text = "";
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=B:\\FYP\\myfyp\\App_Data\\myonline.mdf;Integrated Security=True;User Instance=True");
            con.Open();

            String sqlString2 = "SELECT * FROM Customer WHERE( UserName = @username)";
            SqlCommand cmd2 = new SqlCommand();
            cmd2 = new SqlCommand(sqlString2, con);
            cmd2.Parameters.AddWithValue("@username", uname.Text);
            SqlDataReader dr;
            dr = cmd2.ExecuteReader();

            if (dr.HasRows == true)
            {
                Label2.Text = "This username isn't available !!";
            }
            else if (Page.IsValid == true)
            {
                dr.Close();

                String sqlString = "INSERT INTO Customer (FirstName, LastName, UserName, Password,  HandphoneNo, Email, Address) VALUES (@v1,@v2,@v3,@v4,@v6,@v7,@v8)";
                SqlCommand cmd = new SqlCommand();
                cmd = new SqlCommand(sqlString, con);
                cmd.Parameters.AddWithValue("@v1", fname.Text);
                cmd.Parameters.AddWithValue("@v2", lname.Text);
                cmd.Parameters.AddWithValue("@v3", uname.Text);
                cmd.Parameters.AddWithValue("@v4", password0.Text);
                
                cmd.Parameters.AddWithValue("@v6", hp.Text);
                cmd.Parameters.AddWithValue("@v7", email.Text);
                cmd.Parameters.AddWithValue("@v8", address.Text);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();

                string fileName = Server.MapPath("~/App_Data/TextFile.txt");
                string MailBody = System.IO.File.ReadAllText(fileName);
                MailBody = MailBody.Replace("##name##", fname.Text);
                MailBody = MailBody.Replace("##username##", uname.Text);
                MailBody = MailBody.Replace("##password##", password.Text);

                MailMessage myMessage = new MailMessage();
                myMessage.Subject = "Test Message";
                myMessage.Body = MailBody;
                myMessage.From = new MailAddress("lolz_880@hotmail.com");
                myMessage.To.Add(new MailAddress(email.Text.Trim()));
                SmtpClient mySmtpClient = new SmtpClient();
                mySmtpClient.Send(myMessage);

                Session["firstname"] = fname.Text;/*to store the firstname of user for welcome*/
                Session["usernames"] = uname.Text;/* to be used when the customer access his profile from sign up*/

                Response.Redirect("confirmreg.aspx?");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=B:\\FYP\\myfyp\\App_Data\\myonline.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * FROM Customer WHERE username = '" + user.Text + "' AND password = '" +
            password.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows == true)
        {
            Session["username"] = user.Text;

            Response.Redirect("loggedin.aspx?");

        }
        else
        {
            Label3.Text = "Invalid username or Password!!";
        }
    }
}