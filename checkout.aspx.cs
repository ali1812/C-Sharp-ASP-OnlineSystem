using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class checkout : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        String user = (String)Session["username2"];

        String itemName = (String) Session["item"];
        String stat = "New";
        double totalAmount = (double) Session["tot"];

        
        DataTable dt = new DataTable ();
         dt   =  (DataTable )Session["data"];
         DataTable dtProducts = new DataTable();
         DataColumn productColumn = new DataColumn();

         productColumn = new DataColumn();
         productColumn.DataType = System.Type.GetType("System.Int32");
         productColumn.ColumnName = "quantity";
         dtProducts.Columns.Add(productColumn);
        
         productColumn = new DataColumn();
         productColumn.DataType = System.Type.GetType("System.String");
         productColumn.ColumnName = "name";
         dtProducts.Columns.Add(productColumn);

         productColumn = new DataColumn();
         productColumn.DataType = System.Type.GetType("System.Double");
         productColumn.ColumnName = "price";
         dtProducts.Columns.Add(productColumn);

         
        Label5.Text = totalAmount.ToString();
        System.Data.DataRow aProduct = dtProducts.NewRow();
        double total = 0.0;

        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=B:\\FYP\\myfyp\\App_Data\\myonline.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        for (int i = 0; i < dt.Rows.Count; i++)
        {

            String st = (i + 1) + "=" + dt.Rows[i]["name"];
            itemName = itemName + st + " ";
            String orderName = "" + dt.Rows[i]["name"];
    
           
            String quantity = "" + dt.Rows[i]["quantity"];
      
 
            total += (Convert.ToDouble(dt.Rows[i]["price"]) * Convert.ToInt32(dt.Rows[i]["quantity"]));
            double price = (Convert.ToDouble(dt.Rows[i]["price"]) * Convert.ToInt32(dt.Rows[i]["quantity"]));
            String date = DateTime.Now.ToString();
            String sqlString = "INSERT INTO orders (order_name,order_qty, order_cost,order_status,userName,date) VALUES (@v1,@v2,@v3,@v4,@v5,@v6)";
            SqlCommand cmd = new SqlCommand(sqlString, con);
            cmd.Parameters.AddWithValue("@v1", orderName);
            cmd.Parameters.AddWithValue("@v2", quantity);

            
            cmd.Parameters.AddWithValue("@v3", price);
            cmd.Parameters.AddWithValue("@v4", stat);
            cmd.Parameters.AddWithValue("@v5", user);
            cmd.Parameters.AddWithValue("@v6", date);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            aProduct = dtProducts.NewRow();

            aProduct["name"] = orderName;
            aProduct["price"] = price;
            aProduct["quantity"] = quantity;
            dtProducts.Rows.Add(aProduct);
         
        }
        GridView1.DataSource = dtProducts;
        GridView1.DataBind(); 
      

    }

  /*  protected void Button2_Click(object sender, EventArgs e)
    {
        string itemName = (string)Session["item"];
        double totalAmount = (double)Session["tot"];
        string user = (string)Session["userName"];
        string stat = (string)Session["status"];
        
         String sqlString = "INSERT INTO orders (order_details, order_cost,order_status,UserName) VALUES (@v1,@v2,@v3,@v4)";
         SqlCommand cmd = new SqlCommand();
                  
                 
                  cmd = new SqlCommand(sqlString, con);
                  cmd.Parameters.AddWithValue("@v1", itemName);
                  cmd.Parameters.AddWithValue("@v2", totalAmount);
                  cmd.Parameters.AddWithValue("@v3", stat);
                  cmd.Parameters.AddWithValue("@v4", user);
                  cmd.CommandType = CommandType.Text;
                  cmd.ExecuteNonQuery();
            
    }*/

    protected void Button3_Click(object sender, EventArgs e)
    {
        String user = (string)Session["username"];
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=B:\\FYP\\myfyp\\App_Data\\myonline.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        String sqlString = " DELETE * FROM orders WHERE  userName = @v1 AND date = @v2";
        SqlCommand cmd = new SqlCommand();
        cmd = new SqlCommand(sqlString, con);
        cmd.Parameters.AddWithValue("@v1",user);
        cmd.Parameters.AddWithValue("@v2",DateTime.Now);

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Session.Abandon();
        Response.Redirect("Default2.aspx?");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["myorder"] = GridView1;
        Response.Redirect("payment.aspx?");
    }
}
