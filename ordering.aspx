<?xml version="1.0" encoding="utf-8"?>
<%@ page inherits="shop.site" src="cs/site.aspx.cs" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/2000/REC-xhtml1-20000126/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Session.Abandon()
        Response.Redirect("Default2.aspx?")
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Restaurant</title>
    <link href="Restaurant1/html/css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" rev="stylesheet" href="css/framework.css" type="text/css" media="screen" charset="utf-8" />       
   

       <script language="javascript" type="text/javascript">
// <!CDATA[

           function ibBasketCheckout_onclick() {

           }

// ]]>
       </script>
    <style type="text/css">
        .style5
        {
            text-align: center;
        }
        .style9
        {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 16px;
            color: #ffffff;
            padding-left: 10px;
            font-weight: bold;
            text-decoration: none;
            text-align: center;
        }
        .style11
        {
            font-size: medium;
            font-weight: bold;
            width: 161px;
        }
        .style12
        {
            width: 161px;
        }
        .style13
        {
            width: 183px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<table width="900" border="0" cellspacing="0" cellpadding="0" align="center" class="bdy_bg">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="44" align="right" style="padding-right:10px;"><a href="index.htm" class="hdr_links" title="Home">
            Home</a>  <span class="hdr_div">|</span> 
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#FF6666" 
                onclick="LinkButton1_Click">logout</asp:LinkButton> </td>
      </tr>
      <tr>
        <td height="22" class="hdr-green_bg"></td>
      </tr>
      <tr>
        <td height="2"></td>
      </tr>
      <tr>
        <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="274" valign="top" height="290">
                <asp:Image ID="Image4" ImageUrl="images2/steak-burger.jpg" runat="server" 
                    Height="290px" /> </td>
            <td width="244" align="left" valign="top"><img src="images2/mcflurry2.jpg" alt="" width="244" height="290" /></td>
            <td align="left" valign="top"><img src="images2/bigmacbanner.jpg" alt="" width="382" height="290" /></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="2"></td>
      </tr>
      <tr class="btn_bg">
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0"class="btn_bg">
          <tr>
            <td width="109" height="49" align="center"><a href="Default2.aspx" 
                    class="btn_links" title="Home">
                Home</a></td>
            <td width="19"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            <td align="center" class="style13"><a href="Menus.aspx" class="btn_links" 
                    title="Menu">
                Menu </a></td>
            
            
            <td width="19" align="left"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            <td width="131" align="center"><a href="registration.aspx" class="btn_links" 
                    title="Services">
                Registration</a></td>
            <td width="19"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            
            
            <td width="150" align="center"><a href="contactus.aspx" class="btn_links" 
                    title="Contact Us">
                Contact Us</a></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td class="brown_bg" height="4"></td>
      </tr>
      <tr>
        <td height="20"></td>
      </tr>     
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10"></td>
        <td width="589" class="white_bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="3">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" 
                    style="height: 19px; margin-top: 0px;">
              <tr>
                <td width="10" align="left" valign="top"><img src="images2/curve_left_25.gif" alt="" width="10" height="10" /></td>
                <td width="569" height="10">
                    &nbsp;</td>
                <td width="10" align="right" valign="top"><img src="images2/curve_right_25.gif" alt="" width="10" height="10" /></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td width="10"></td>
            <td width="569"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="8"></td>
              </tr>
              <tr>
                <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="216" align="left" valign="top"><img src="images2/restaurant_img_19.jpg" alt="" width="206" height="155" /></td>
                    <td width="353" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td align="left" class="style12"><span class="heading1"><strong>Our Menu </strong></span>&nbsp;<img src="images2/icon_36.gif" alt="" width="39" height="19"  /></td>
                      </tr>					  
                      <tr>
                        <td class="style12"><span class="heading2"><br />
                            </span></td>
                      </tr>
					
                      <tr>
                        <td class="style11">
                            <p>
                                <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="False">Meals</asp:HyperLink>
                            </p>
                          </td>
                          <td>
                              <asp:Image ID="Image1" runat="server" Height="34px" 
                                  ImageUrl="~/App_Themes/Theme1/images2/meal.jpg" Width="33px" 
                                  style="margin-top: 0px" />
                          </td>
                      </tr>
                      <tr>
                        <td height="10" class="style11">
                            <p>
                                <asp:HyperLink ID="HyperLink5" runat="server" Font-Underline="False">Beverage</asp:HyperLink>
                            </p>
                          </td>
                          <td>
                              <asp:Image ID="Image2" runat="server" Height="34px" 
                                  ImageUrl="~/App_Themes/Theme1/images2/coke.jpg" Width="33px" />
                          </td>
                      </tr>
                      <tr>
                        <td align="right" class="style11" style="text-align: left">
                            <p>
                                <asp:HyperLink ID="HyperLink6" runat="server" Font-Underline="False">Dessert</asp:HyperLink>
                            </p>
                          </td>
                          <td>
                              <asp:Image ID="Image3" runat="server" Height="35px" 
                                  ImageUrl="~/App_Themes/Theme1/images2/flurryicon.jpg" Width="37px" />
                          </td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="22">&nbsp;</td>
              </tr>
              <tr class="green-head_bg">
                <td height="30" class="style9">Menu  <td height="16"></td>
              </tr>
              
              
            </table></td>
            <td width="10"></td>
          </tr>
          <tr>
            <td colspan="3"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="10" align="left" valign="bottom"><img src="images2/curve_left_btm_25.gif" alt="" width="10" height="10" /></td>
                <td width="569" height="10">  <fieldset class="products">     
                  <legend>Products</legend>
                  <asp:GridView id="gvProducts" 
                     AutoGenerateColumns="false"
                     EmptyDataText="~There are no products in this shop~" 
                     AllowPaging="True"
                     ShowHeader="False"
                     ShowFooter="False"
                     DataKeyNames="id"     
                     PageSize="10"
                     onPageIndexChanging="gvProducts_PageIndexChanging"
                     OnRowDataBound="gvProducts_RowDataBound"
                     GridLines="None"
                     CellPadding="10"
                     CssClass="shopgrid"
                     RowStyle-CssClass="shopgridrow"
                     AlternatingRowStyle-CssClass="shopgridrowalt"
                     PagerStyle-CssClass="shopgridpager"    
                     EmptyDataRowStyle-CssClass="shopgridempty"            
                     runat="server" Height="374px">                        
<RowStyle CssClass="shopgridrow"></RowStyle>

<EmptyDataRowStyle CssClass="shopgridempty"></EmptyDataRowStyle>
                     <Columns>                     
                        <asp:ImageField DataImageUrlField="thumb" alternatetext="Product Thumbnail" readonly="true" ControlStyle-Width="50px" ControlStyle-Height="50px" />                                                                                                  
                        <asp:TemplateField ItemStyle-Width="100px">
                           <ItemTemplate>                              
                              <h3><asp:Literal id="litItemName" runat="server" /></h3>
                           </ItemTemplate>

<ItemStyle Width="100px"></ItemStyle>
                        </asp:TemplateField>                             
                        <asp:TemplateField> 
                           <ItemTemplate> 
                              <asp:Literal id="litPrice" runat="server" />                                    
                           </ItemTemplate>
                        </asp:TemplateField> 
                        <asp:TemplateField> 
                           <ItemTemplate> 
                              <input type="submit" id="ibBuy" runat="server" value="Add to basket" OnServerClick="shopBuy_OnServerClick" />
                           </ItemTemplate>
                        </asp:TemplateField>                                 
                     </Columns>                                                                                          

<PagerStyle CssClass="shopgridpager"></PagerStyle>

<AlternatingRowStyle CssClass="shopgridrowalt"></AlternatingRowStyle>
                  </asp:GridView>

               </fieldset> </td>
                <td width="10" align="right" valign="bottom"><img src="images2/curve_right_btm_25.gif" alt="" width="10" height="10" /></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="10"></td>
        <td width="281" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="white_bg">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="10" align="left" valign="top"><img src="images2/curve_left_25.gif" alt="" width="10" height="10" /></td>
                  <td width="569" height="10"></td>
                  <td width="10" align="right" valign="top"><img src="images2/curve_right_25.gif" alt="" width="10" height="10" /></td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td height="430" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="10"></td>
                <td width="261"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr class="orange-head_bg">
                    <td height="30" class="style5"><span class="heading3">Shopping Cart</span></td>
                  </tr>
                  <tr>
                    <td height="17"> <fieldset class="basket">
                  <legend>Basket</legend>       
                  <asp:GridView id="gvBasket" 
                     AutoGenerateColumns="false"
                     EmptyDataText="~Basket is empty~" 
                     AllowPaging="False" 
                     ShowHeader="True"
                     ShowFooter="True"
                     DataKeyNames="id"      
                     OnRowDataBound="gvBasket_RowDataBound" 
                     GridLines="None"                     
                     CellPadding="10"
                     CssClass="shopgrid"
                     RowStyle-CssClass="shopgridrow"
                     AlternatingRowStyle-CssClass="shopgridrowalt"
                     HeaderStyle-CssClass="shopgridheader"
                     FooterStyle-CssClass="shopgridfooter"
                     EmptyDataRowStyle-CssClass="shopgridempty"
                     runat="server" Height="279px">   
<RowStyle CssClass="shopgridrow"></RowStyle>

<EmptyDataRowStyle CssClass="shopgridempty"></EmptyDataRowStyle>
                     <Columns>                                                                                                  
                        <asp:TemplateField  HeaderText="Item">
                           <ItemTemplate>
                              <h3><asp:Literal id="litItemName" runat="server" /></h3>
                           </ItemTemplate>
                           <FooterTemplate>
                               Delivery Charges                                       
                              <br /><hr />
                              <b>Total</b>
                           </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity" ItemStyle-Width="50px"> 
                           <ItemTemplate> 
                              <input type="text" id="itProductQuantity" runat="server" maxlength="3" style="width:100%;" />
                           </ItemTemplate>
                           <FooterTemplate>
                               1
                              <br /><hr />
                              <asp:Literal id="litTotalQuantity" runat="server" /> 
                           </FooterTemplate>                                                                                                    

<ItemStyle Width="50px"></ItemStyle>
                        </asp:TemplateField>                                
                        <asp:TemplateField HeaderText="Price" ItemStyle-Width="50px"> 
                           <ItemTemplate> 
                              <asp:Literal id="litPrice" runat="server" />                                    
                           </ItemTemplate>  
                           <FooterTemplate>
                              <asp:Literal id="litDeliveryPrice" runat="server" />  
                              <br /><hr />                                       
                              <asp:Literal id="litTotalPrice" runat="server" /> 
                           </FooterTemplate>                             

<ItemStyle Width="50px"></ItemStyle>
                        </asp:TemplateField>                               
                     </Columns>                                                                                          

<FooterStyle CssClass="shopgridfooter"></FooterStyle>

<HeaderStyle CssClass="shopgridheader"></HeaderStyle>

<AlternatingRowStyle CssClass="shopgridrowalt"></AlternatingRowStyle>
                  </asp:GridView>
                  <div class="basketcontrols">
                     <input type="submit" id="ibEmptyBasket" runat="server" value="Empty Basket" OnServerClick="shopClearBasket_OnServerClick" Visible="false" />                                    
                     <input type="submit" id="ibUpdateBasketQuantities" runat="server" value="Update Quantities" OnServerClick="shopUpdateBasketQuantities_OnServerClick" Visible="false" />
 
                     <input type="submit" id="ibBasketCheckout" runat="server" value="Checkout" 
                          OnServerClick="shopBasketCheckout_OnServerClick" Visible="false" 
                          onclick="return ibBasketCheckout_onclick()" />
                  </div>                                    
               </fieldset>  </td>
                  </tr>
                                
				  
                     
                      <tr>
                        <td height="10">&nbsp;</table></td>
                  </tr>
				  <tr>
                    <td align="right" height="15">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="left" valign="top">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="10"></td>
                  </tr>
                  <tr>
                    <td align="left" valign="top">&nbsp;</td>
                  </tr>
                </table></td>
                <td width="10"></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="10" align="left" valign="bottom"><img src="images2/curve_left_btm_25.gif" alt="" width="10" height="10" /></td>
                  <td width="569" height="10"></td>
                  <td width="10" align="right" valign="bottom"><img src="images2/curve_right_btm_25.gif" alt="" width="10" height="10" /></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="10"></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="3" height="18"></td>
      </tr>
      <tr>
        <td width="10"></td>
        <td width="880"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr class="ftr_bg">
            <td width="11"><img src="images2/ftr_left_42.gif" alt="" width="11" height="78" /></td>
            <td width="858" align="center" class="ftr_text">Copyright &#65533; 2011 Ali AL-Habsi. All 
                Rights Reserved.     </td>
            <td width="11" align="right"><img src="images2/ftr_right_45.gif" alt="" width="11" height="78" /></td>
          </tr>
        </table></td>
        <td width="10"></td>
      </tr>
      <tr>
        <td colspan="3" height="18"></td>
      </tr>
    </table></td>
  </tr>
</table>
    </form>
</body>
</html>
