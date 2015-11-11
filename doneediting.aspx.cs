using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class doneediting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String user = (string)Session["username2"];
        Label1.Text = user;
    }
}
