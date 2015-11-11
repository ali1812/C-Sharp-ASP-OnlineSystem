using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class loggedin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String user = (string)Session["username"];
        Label1.Text = user;
        Session["username2"] = Label1.Text;
         if (Label1.Text == "")
         {
             Response.Redirect("Default2.aspx?");
         }
 
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Session.Abandon();
        Response.Redirect("Default2.aspx?");

    }
}
