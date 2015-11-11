using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bmi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        double weight;
        weight = Convert.ToDouble(weighttxt.Text);
        double height;
        height = Convert.ToDouble(heighttxt.Text);
        double bmi = weight / (height * height);
        bmi = Math.Round(bmi, 2);
        Label5.Text = Convert.ToString(bmi);
        if (bmi <= 18.5)
        {
            Label4.Text = " Underweight";
        }
        else if (bmi > 18.5 && bmi <= 24.9)
        {
            Label4.Text = " Normal weight";
        }
        else if (bmi > 24.9 && bmi <= 29.9)
        {
            Label4.Text = " Overweight";
        }
        else
        {
            Label4.Text = "Obseity";
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Session.Abandon();
        Response.Redirect("Default2.aspx?");
    }
}
