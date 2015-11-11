using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (txtComments.Text.Length > 250)
        {
            args.IsValid = false;
        }
        else
            args.IsValid = true;
    }
    protected void Wizard1_FinishButtonClick1(object sender, WizardNavigationEventArgs e)

    {
        string fileName = Server.MapPath("~/App_Data/comments.txt");
        string MailBody = System.IO.File.ReadAllText(fileName);
        MailBody = MailBody.Replace("##Name##", txtName.Text);
        MailBody = MailBody.Replace("##Email##", txtEmail.Text);
        MailBody = MailBody.Replace("##Rating##", txtRating.Text);
        MailBody = MailBody.Replace("##Comments##", txtComments.Text);

        MailMessage myMessage = new MailMessage();
        myMessage.Subject = "Enquiry";
        myMessage.Body = MailBody;
        myMessage.From = new MailAddress(txtEmail.Text.Trim());
        myMessage.To.Add(new MailAddress("myonlineorder6@gmail.com"));
        SmtpClient mySmtpClient = new SmtpClient();
        mySmtpClient.Send(myMessage);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx?");

    }
}
