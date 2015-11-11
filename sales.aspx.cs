using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String user = (string)Session["userman"];
       Label1.Text = user;
        if (Label1.Text == "")
        {
            Response.Redirect("staffmanagerlogin.aspx?");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["userman"] = null;
        Session.Abandon();
        Response.Redirect("staffmanagerlogin.aspx?");
    }
}
