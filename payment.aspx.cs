using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class payment : System.Web.UI.Page
{
    public String user;
    protected void Page_Load(object sender, EventArgs e)
    {
        user = (string)Session["username2"];
    }


    protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
    {
        try
        {
            DateTime dt1 = DateTime.Parse(txtDate.Text.ToString());
            DateTime dt2 = DateTime.Now;
            int result = DateTime.Compare(dt1, dt2);

            if (result <= 0)
            {
                args.IsValid = false;

            }
            else
            {
                args.IsValid = true;
            }
        }
        catch (Exception ex)
        {
            Label1.Text = "enter a valid date";
        }
    }

    

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Session.Abandon();
        Response.Redirect("Default2.aspx?");
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
      
        Session["cardno"] = txtCreditNo.Text;
        

        Response.Redirect("confirmpayment.aspx?");
    }
}

