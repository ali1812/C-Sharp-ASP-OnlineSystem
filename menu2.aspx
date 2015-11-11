<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menu2.aspx.cs" Inherits="menu2" %>

<%@ Register TagPrefix="obshow" Namespace="OboutInc.Show" Assembly="obout_Show_Net" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Restaurant</title>
    <link href="Restaurant1/html/css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style3
        {
            height: 7px;
            width: 73px;
            font-weight: bold;
        }
        .style5
        {
            text-align: center;
        }
        .style6
        {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 11px;
            color: #737926;
            font-weight: normal;
            text-decoration: underline;
            height: 10px;
        }
        .style9
        {
            color: #CC0000;
            font-weight: bold;
        }
        .style10
        {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 16px;
            color: #ffffff;
            padding-left: 10px;
            font-weight: bold;
            text-decoration: none;
            text-align: center;
        }
        .style25
        {
            width: 73px;
        }
        .style26
        {
            width: 159px;
        }
        .style27
        {
            width: 171px;
        }
        .style28
        {
            width: 7px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<table width="900" border="0" cellspacing="0" cellpadding="0" align="center" class="bdy_bg">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="44" align="right" style="padding-right:10px;"><a href="Default2.aspx" 
                class="hdr_links" title="Home">
            Home</a>  <span class="hdr_div">|</span>  <a href="contactus.aspx" 
                class="hdr_links" title="Contact Us">
            Contact Us</a></td>
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
                    Height="289px" />    </td>
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
            <td align="center" class="style27"><a href="Menus.aspx" class="btn_links" title="Menu">
                Menu </a></td>
            <td class="style28"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            <td align="center" class="style26"><a href="registration.aspx" class="btn_links" 
                    title="News &amp; Events">
                Registration</a></td>
            <td width="19" align="left"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            
            
            
            
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
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0" 
            style="height: 575px">
      <tr>
        <td width="10"></td>
        <td width="589" class="white_bg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="3"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="10" align="left" valign="top"><img src="images2/curve_left_25.gif" alt="" width="10" height="10" /></td>
                <td width="569" height="10"></td>
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
                        <td align="left" class="style12"><span class="heading1"><strong>Our Menu </strong></span>
                            &nbsp;<img src="images2/icon_36.gif" alt="" width="39" height="19"  /></td>
                      </tr>					  
                      <tr>
                        <td class="style12"><span class="heading2"><br />
                            </span></td>
                      </tr>
					
                      <tr>
                        <td class="style11">
                            <p>
                                <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="True" 
                                    ForeColor="Black" NavigateUrl="~/Menus.aspx">Meals</asp:HyperLink>
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
                                <asp:HyperLink ID="HyperLink5" runat="server" Font-Underline="True" 
                                    ForeColor="Black" NavigateUrl="~/menus2.aspx">Beverage</asp:HyperLink>
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
                                <asp:HyperLink ID="HyperLink6" runat="server" Font-Underline="True" 
                                    ForeColor="Black" NavigateUrl="~/Menu3.aspx">Dessert</asp:HyperLink>
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
                <td height="22"></td>
              </tr>
              <tr class="green-head_bg">
                <td height="30" class="style10">Menu</td>
              </tr>
              <tr>
                <td height="16"></td>
              </tr>
              <tr>
                <td>  
                    <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" Width="380px"
  RepeatColumns="3"
  RepeatDirection="Horizontal"
    HeaderStyle-BackColor="#707070"
    HeaderStyle-ForeColor="#FFFFFF"
    HeaderStyle-Font-Size="12pt"
    HeaderStyle-HorizontalAlign="Center"
    ItemStyle-Font-Size="10pt"
    ItemStyle-VerticalAlign="Top"
    FooterStyle-BackColor="#707070"
    FooterStyle-ForeColor="#FFFFFF"
    FooterStyle-Font-Size="9pt"
    FooterStyle-Font-Italic="True" 
                    style="color: #000000; background-color: #FFFFCC; margin-left: 43px; margin-right: 0px; text-align: center;" 
                    Height="266px">
<FooterStyle BackColor="#990000" Font-Size="9pt" ForeColor="White" Font-Bold="True"></FooterStyle>

                    <EditItemStyle BackColor="#FF6600" />
                    <AlternatingItemStyle BackColor="White" BorderStyle="Solid" />

<ItemStyle VerticalAlign="Top" Font-Size="10pt" HorizontalAlign="Left" BorderColor="#CC0000" 
                        BorderStyle="Solid" BackColor="#FFFBD6" ForeColor="#333333"></ItemStyle>
                    <SeparatorStyle BorderColor="#CC0000" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
<HeaderTemplate>
       Meals
  </HeaderTemplate>
                    <ItemTemplate>
                       <table  border="1" style="font-family:Comic Sans MS; text-align: center"><tr>
                       <td >  <asp:Image ID="ImagePathLabel" runat="server" 
                         ImageUrl='<%# Eval("ImagePath") %>' ImageAlign="Middle" Height="150px" />
                        </td> </tr>
                       <tr> <td style="background-color:#990000; color:White "> <b><asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' /> </b></td></tr>
                     <tr> <td align="left">
                         price: <b>RM
                        <asp:Label ID="price_MLabel" runat="server" 
                            Text='<%# Eval("price_M") %>' /></b> 
                           
                        </td></tr>
                       
                        
                        </table>
                    </ItemTemplate>

<HeaderStyle HorizontalAlign="Center" BackColor="#990000" Font-Size="12pt" ForeColor="White" 
                        BorderColor="#CC0000" Font-Bold="True"></HeaderStyle>
                    <FooterTemplate>
                        My Online Order
  </FooterTemplate>
 
                </asp:DataList>
             
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
                    
                    SelectCommand="SELECT [ItemName], [price_M],  [ImagePath] FROM [menu] WHERE ItemId BETWEEN 1010 AND 1018"></asp:SqlDataSource>
			</div></td>
              </tr>
              <tr>
                <td height="10"></td>
              </tr>
            </table></td>
            <td width="10"></td>
          </tr>
          <tr>
            <td colspan="3">&nbsp;</td>
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
                    <td height="30" class="style5"><span class="heading3">Login</span></td>
                  </tr>
                  <tr>
                    <td height="17"></td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td align="left" class="style25" >UserName:</td>
                            <td>
<asp:TextBox ID="user" runat="server"  Width="134px" style="margin-top: 4px"></asp:TextBox>
                         </td> 
                      </tr>
					   <tr>
                        <td class="style3"></td>
                      </tr>
                      <tr>
                        <td align="left" class="style25" >Password:</td>
                        <td>
                            <asp:TextBox ID="password" runat="server" Width="134px"></asp:TextBox> </td>
                      </tr>
                      <tr>
                        <td class="style25"></td>
                        <td class="style8">
                            <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
                            </td>
                      </tr>
                      <tr>
                        <td align="right" class="style25"></td>
                        <td> 
                            <asp:Button ID="Button1" runat="server" Text="login" 
                                
                                style="font-weight: 700; color: #FFFFFF; background-color: #b42700; margin-left: 41px;" 
                                Width="61px" onclick="Button1_Click" /></td>
                      </tr>
                    </table></td>
                  </tr>                  
				  <tr>
                    <td height="25"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td align="left" class="style6">
                            <br />
                          </td>
                      </tr>
                      <tr>
                        <td height="10"><span class="style9">This is your first time here??</td>
                      </tr>
                      <tr>
                        <td align="right"><a class="readmore_links" href="custreg2.aspx" title="Click here to view more">
                            Click here for more info</a></td>
                      </tr>
                      <tr>
                        <td height="10">&nbsp;</table></td>
                  </tr>
				  <tr>
                    <td  height="15" 
                          style="border-color: #C0C0C0; border-style:inset" ><obshow:Show id="Show1" runat="server" 
                            ImagesShowPath="slideshow" Width="268" 
                  ImagesFitAvailableSize="true"  Height="120" ShowType="show" TransitionType="Fading" 
                            FadingSpeed="7000" ScrollingSpeed="200" FadingStep="9">
              <Changer Type="Arrow" ArrowType="Side1" Position="Bottom" VerticalAlign="Middle"  HorizontalAlign="Center"></Changer>
                </obshow:Show></td>
                  </tr>
                  <tr>
                    <td align="left" valign="top">&nbsp;</td>
                  </tr>
                  
                  <tr>
                    <td align="left" valign="top" style="border-color: #C0C0C0; border-style: inset;"><a href="contactus.aspx?"><img src="images2/contact.jpg" alt="" width="268" height="100" border="0" /></a>
                     <br />
                        <br />
                        &nbsp;My Online Order.
                        <br />
                        &nbsp;Melaka, Ayer Keroh Bukit Beruang, 
                        <br />
                        &nbsp;Taman Kerjasama &nbsp;<br />
                        &nbsp;&nbsp;<asp:Image 
                            ID="Image5" runat="server" ImageUrl="images2/telephone_icon.gif" 
                            Height="23px" />&nbsp; 017-2956563
</td>
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
            <td width="858" align="center" class="ftr_text">Copyright © 2011 Ali AL-Habsi. All 
                Rights Reserved.<br />
              </td>
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
