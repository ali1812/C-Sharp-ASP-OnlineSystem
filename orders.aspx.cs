using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class orders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String user = (string)Session["userstaff"];
        Label1.Text = user;
        if (Label1.Text == "")
        {
            Response.Redirect("staffmanagerlogin.aspx?");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["userstaff"] = null;
        Session.Abandon();
        Response.Redirect("staffmanagerlogin.aspx?");
    }
}
