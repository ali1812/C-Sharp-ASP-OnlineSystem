using System;
using System.Collections;
using System.Collections.Specialized;
using System.Configuration;
using System.ComponentModel;
using System.IO;
using System.Data;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Caching;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.Mail;
using System.Net;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;



namespace shop
{
    public class site : Page
    {
   SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=B:\\FYP\\myfyp\\App_Data\\myonline.mdf;Integrated Security=True;User Instance=True");
           

        protected GridView gvBasket;
        protected GridView gvProducts;


        protected HtmlInputButton ibEmptyBasket;


        protected HtmlInputButton ibUpdateBasketQuantities;


        protected HtmlInputButton ibBasketCheckout;

        public site()
        {
            Page.Init += new System.EventHandler(Page_Init);
        }

        private void Page_Init(object sender, EventArgs e)
        {
            this.Load += new EventHandler(this.Page_Load);
        }

        private void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                populateProducts();
                updateShopBasket();
            }
             con.Open();
        }


        private DataTable createProductDT()
        {
            DataTable dtProducts = new DataTable();
            DataColumn productColumn = new DataColumn();

            productColumn.DataType = System.Type.GetType("System.Int32");
            productColumn.ColumnName = "id";
            productColumn.Unique = true;
            dtProducts.Columns.Add(productColumn);

            productColumn = new DataColumn();
            productColumn.DataType = System.Type.GetType("System.String");
            productColumn.ColumnName = "thumb";
            dtProducts.Columns.Add(productColumn);

            productColumn = new DataColumn();
            productColumn.DataType = System.Type.GetType("System.String");
            productColumn.ColumnName = "name";
            dtProducts.Columns.Add(productColumn);

            productColumn = new DataColumn();
            productColumn.DataType = System.Type.GetType("System.Double");
            productColumn.ColumnName = "price";
            dtProducts.Columns.Add(productColumn);

            productColumn = new DataColumn();
            productColumn.DataType = System.Type.GetType("System.Int32");
            productColumn.ColumnName = "quantity";
            dtProducts.Columns.Add(productColumn);

            // Make "id" the primary key
            DataColumn[] pkColumns = new DataColumn[1];
            pkColumns[0] = dtProducts.Columns["id"];
            dtProducts.PrimaryKey = pkColumns;

            return dtProducts;
        }


        private void populateProducts()
        {

            DataTable dtProducts = createProductDT();




            System.Data.DataRow aProduct = dtProducts.NewRow();
            SqlCommand cmd = new SqlCommand("SELECT * FROM menu", con);
           
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                aProduct = dtProducts.NewRow();
                aProduct["id"] = reader["ItemId"];
                aProduct["thumb"] = reader["ImagePath"];
                aProduct["name"] = reader["ItemName"];
                aProduct["price"] = reader["price_M"];
                dtProducts.Rows.Add(aProduct);
            }





            gvProducts.DataSource = dtProducts;
            gvProducts.DataBind();


            Session["dtProducts"] = dtProducts;
        }


        protected void gvProducts_PageIndexChanging(Object sender, GridViewPageEventArgs e)
        {
            gvProducts.PageIndex = e.NewPageIndex;
            populateProducts();
        }


        protected void gvProducts_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            switch (e.Row.RowType)
            {
                case DataControlRowType.DataRow:

                    // Name/Desc
                    ((Literal)e.Row.FindControl("litItemName")).Text = Convert.ToString(((DataRowView)e.Row.DataItem)["name"]);

                    // Price                           
                    ((Literal)e.Row.FindControl("litPrice")).Text = String.Format("{0:C2}", Convert.ToDouble(((DataRowView)e.Row.DataItem)["price"]));
                    break;
            }
        }


        protected void shopBuy_OnServerClick(object source, EventArgs e)
        {

            int index = ((GridViewRow)((HtmlInputButton)source).Parent.NamingContainer).RowIndex;


            addToBasket(Convert.ToInt32(gvProducts.DataKeys[index].Value));
        }


        private DataTable getProductsDt()
        {
            if (Session["dtProducts"] == null)
            {

                populateProducts();
            }

            return (DataTable)Session["dtProducts"];
        }


        private DataTable getBasketDt()
        {
            DataTable dtBasket;

            if (Session["dtBasket"] == null)
            {

                dtBasket = createProductDT();
            }
            else
            {

                dtBasket = (DataTable)Session["dtBasket"];
            }

            return dtBasket;
        }


        protected void gvBasket_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            switch (e.Row.RowType)
            {
                case DataControlRowType.DataRow:

                    // Name/Desc
                    ((Literal)e.Row.FindControl("litItemName")).Text = Convert.ToString(((DataRowView)e.Row.DataItem)["name"]);
                    string orderName = Convert.ToString(((DataRowView)e.Row.DataItem)["name"]);
                    // Quantity                           
                    string quantity = Convert.ToString(((DataRowView)e.Row.DataItem)["quantity"]);
                    ((HtmlInputText)e.Row.FindControl("itProductQuantity")).Value = quantity;

                    // Price     
                    string price;  
                    ((Literal)e.Row.FindControl("litPrice")).Text = String.Format("{0:C2}", Convert.ToDouble(((DataRowView)e.Row.DataItem)["price"]) * Convert.ToInt32(quantity));
                    break;
                   price =  String.Format("{0:C2}", Convert.ToDouble(((DataRowView)e.Row.DataItem)["price"]) * Convert.ToInt32(quantity));
                case DataControlRowType.Footer:
                    DataTable dtShop = getBasketDt();

                    double total = 0.00;
                    for (int i = 0; i < dtShop.Rows.Count; i++)
                    {
                        total += Convert.ToInt32(dtShop.Rows[i]["quantity"]) * Convert.ToDouble(dtShop.Rows[i]["price"]);
                    }

                    ((Literal)e.Row.FindControl("litTotalQuantity")).Text = Convert.ToString(dtShop.Compute("SUM(quantity)", ""));

                    ((Literal)e.Row.FindControl("litDeliveryPrice")).Text = String.Format("{0:C2}", Convert.ToDouble(calcDeliveryCost(total)));

                    ((Literal)e.Row.FindControl("litTotalPrice")).Text = String.Format("{0:C2}", Convert.ToDouble(calcDeliveryCost(total)) + total);
                    break;
            }
        }


        private string calcDeliveryCost(double total)
        {
            string deliveryCost = "0.00";

            if (total < 30.00)
            {
                deliveryCost = "3.95";
            }
            else if (total >= 30.00 && total < 70.00)
            {
                deliveryCost = "7.95";
            }
            else if (total >= 70.00 && total < 145.00)
            {
                deliveryCost = "10.95";
            }
            else if (total >= 145.00)
            {
                deliveryCost = "0.00";
            }

            return deliveryCost;
        }


        private void updateShopBasket()
        {
            gvBasket.DataSource = getBasketDt();
            gvBasket.DataBind();


            ibEmptyBasket.Visible = ibUpdateBasketQuantities.Visible = ibBasketCheckout.Visible = gvBasket.Rows.Count > 0;
        }


        protected void addToBasket(int productID)
        {
            DataTable dtBasket = getBasketDt();


            bool found = false;
            for (int i = 0; i < dtBasket.Rows.Count; i++)
            {
                if (Convert.ToInt32(dtBasket.Rows[i]["id"]) == productID)
                {

                    dtBasket.Rows[i]["quantity"] = Convert.ToInt32(dtBasket.Rows[i]["quantity"]) + 1;
                    found = true;


                    break;
                }
            }


            if (!found)
            {

                DataTable dtProducts = getProductsDt();
                DataRow drProduct = dtProducts.Rows.Find(productID);


                DataRow newRow = dtBasket.NewRow();
                newRow["id"] = drProduct["id"];
                newRow["name"] = drProduct["name"];
                newRow["price"] = drProduct["price"];
                newRow["quantity"] = 1;

                dtBasket.Rows.Add(newRow);
            }


            Session["dtBasket"] = dtBasket;


            updateShopBasket();
        }


        protected void shopUpdateBasketQuantities_OnServerClick(object source, EventArgs e)
        {
            DataTable dtBasket = getBasketDt();


            foreach (GridViewRow row in gvBasket.Rows)
            {
                int index = row.RowIndex;
                int productId = Convert.ToInt32(gvBasket.DataKeys[index].Value);


                DataRow drProduct = dtBasket.Rows.Find(productId);

                if (drProduct != null)
                {

                    HtmlInputText itQuant = (HtmlInputText)row.FindControl("itProductQuantity");


                    try
                    {
                        int quant = Convert.ToInt32(itQuant.Value);


                        if (quant > 0)
                        {
                            drProduct["quantity"] = quant;
                        }
                        else
                        {
                            drProduct.Delete();
                        }
                    }
                    catch
                    {

                    }
                }
            }

            if (dtBasket.Rows.Count > 0)
            {

                Session["dtBasket"] = dtBasket;
            }
            else
            {

                Session.Contents.Remove("dtBasket");
            }


            updateShopBasket();
        }


        protected void shopClearBasket_OnServerClick(object source, EventArgs e)
        {
            Session.Contents.Remove("dtBasket");
            updateShopBasket();
        }


        protected void shopBasketCheckout_OnServerClick(object source, EventArgs e)
        {
           
            string postData = "";
            string itemName = "";
            double orderCost = 0.0;
            postData += "currency_code=GBP";
            postData += "&cmd=_cart";
            postData += "&business=davidmillingtons@hotmail.com";
            postData += "&upload=1";
            postData += "&cancel_return=www.davidmillington.net";
            string qty = "";
            DataTable dtBasket = getBasketDt();

            double total = 0.00;

            for (int i = 0; i < dtBasket.Rows.Count; i++)
            {
               /* postData += "&item_name_" + (i + 1) + "=" + dtBasket.Rows[i]["name"];*/

                string st = (i + 1) + "=" + dtBasket.Rows[i]["name"];
                itemName = itemName + st + " ";
                string orderName = ""+ dtBasket.Rows[i]["name"];
                postData += "&quantity_" + (i + 1) + "=" + dtBasket.Rows[i]["quantity"];
                qty = "&quantity_" + (i + 1) + "=" + dtBasket.Rows[i]["quantity"];
                string quantity = ""+ dtBasket.Rows[i]["quantity"];
                itemName = /*itemName*/st  + qty + " ";
                postData += "&amount_" + (i + 1) + "=" + Convert.ToDouble(dtBasket.Rows[i]["price"]);
                total += (Convert.ToDouble(dtBasket.Rows[i]["price"]) * Convert.ToInt32(dtBasket.Rows[i]["quantity"]));
                double price = (Convert.ToDouble(dtBasket.Rows[i]["price"]) * Convert.ToInt32(dtBasket.Rows[i]["quantity"]));
                if (i == dtBasket.Rows.Count - 1)
                {
                    postData += "&shipping_" + (i + 1) + "=" + calcDeliveryCost(total);
                }
                else
                {
                    postData += "&shipping_" + (i + 1) + "=0.00";
                }

                postData += "&shipping2_" + (i + 1) + "=0.00";
                postData += "&handling_" + (i + 1) + "=0.00";
               /* String sqlString = "INSERT INTO orders ('',order_name,order_qty, order_cost,order_status,userName) VALUES (@v1,@v2,@v3,@v4,@v5)";
                SqlCommand cmd = new SqlCommand(sqlString, con);
                cmd.Parameters.AddWithValue("@v1", orderName);
                cmd.Parameters.AddWithValue("@v2", quantity);
                String user = (string)Session["username"];
                string stat = "New";
                cmd.Parameters.AddWithValue("@v3", price);
                cmd.Parameters.AddWithValue("@v4", stat);
                cmd.Parameters.AddWithValue("@v5", user);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                con.Close();*/
            }

            Session["data"] = dtBasket;
            postData += "&handling=" + calcDeliveryCost(total);

            byte[] data = Encoding.ASCII.GetBytes(postData);

            HttpWebRequest ppRequest = (HttpWebRequest)WebRequest.Create("https://www.paypal.com/cgi-bin/webscr"); ;
            ppRequest.Method = "POST";
            ppRequest.ContentType = "application/x-www-form-urlencoded";
            ppRequest.ContentLength = data.Length;


            Stream ppStream = ppRequest.GetRequestStream();
            ppStream.Write(data, 0, data.Length);
            ppStream.Close();


            HttpWebResponse ppResponse = (HttpWebResponse)ppRequest.GetResponse();
            StreamReader sr = new StreamReader(ppResponse.GetResponseStream());
            string strResult = sr.ReadToEnd();
            sr.Close();


            Response.Clear();
            Response.Write(strResult);
            Response.End();
        }

    }

}  
