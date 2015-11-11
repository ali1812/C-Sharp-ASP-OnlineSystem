using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class confirmpayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String creditno = (string)Session["cardno"];
        lblcardno.Text = creditno;
        double totalAmount = (double)Session["tot"];
        Label1.Text = totalAmount.ToString();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        String creditno = (string)Session["cardno"];
        String user = (string)Session["username2"];
        double totalAmount = (double)Session["tot"];
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=B:\\FYP\\myfyp\\App_Data\\myonline.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        String sqlString = "INSERT INTO po(cardno,username,date) VALUES (@v1,@v2,@v3)";
        SqlCommand cmd = new SqlCommand(sqlString, con);
        
        cmd.Parameters.AddWithValue("@v1", creditno);
        cmd.Parameters.AddWithValue("@v2", user);
        cmd.Parameters.AddWithValue("@v3", DateTime.Now);
        
        cmd.CommandType = CommandType.Text;
        cmd.ExecuteNonQuery();
        Response.Redirect("donepayment.aspx?");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ordering.aspx?");

    }
}
