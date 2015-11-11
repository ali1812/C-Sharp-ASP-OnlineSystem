<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" %>
<%@ Register TagPrefix="obshow" Namespace="OboutInc.Show" Assembly="obout_Show_Net" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Restaurant</title>
    <link href="Restaurant1/html/css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style2
        {
            background-color: #CC0000;
        }
        .style3
        {
            height: 7px;
            width: 169px;
        }
        .style4
        {
            width: 169px;
        }
        .style5
        {
            text-align: center;
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
        .style19
        {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 11px;
            color: #4f4e4d;
            line-height: 17px;
            font-weight: bold;
            text-decoration: none;
        }
        .style20
        {
            width: 300px;
            height: 87px;
        }
        .style25
        {
            width: 169px;
            font-weight: bold;
            text-align: left;
            height: 37px;
        }
        .style27
        {
            height: 37px;
        }
        .style28
        {
            height: 168px;
        }
        .style29
        {
            height: 36px;
        }
        .style31
        {
            height: 87px;
        }
        .style32
        {
            width: 300px;
        }
        .style33
        {
            width: 300px;
            text-align: right;
        }
        .style34
        {
            color: #FF0000;
        }
        .style35
        {
            width: 171px;
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
            Home</a>  <span class="hdr_div">|</span> <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#FF6666" 
                onclick="LinkButton1_Click">logout</asp:LinkButton>  </td>
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
                <table style="background-color:#CC0000; height: 290px;" height: 289px;" 
                    width="100%" border="0" 
                    cellspacing="0" cellpadding="0">
              <tr>
                <td height="35" class="style2"><asp:Image ID="Image5" ImageUrl="images2/steak-burger.jpg" runat="server" 
                    Height="290px" /></td>
              </tr>
             
              </table></td>
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
            <td align="center" class="style35"><a href="Menus.aspx" class="btn_links" title="Menu">
                Menu </a></td>
            <td width="19"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            <td width="185" align="center">
                <a href="registration.aspx" class="btn_links" title="News &amp; Events">
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
                    <td width="216" align="left" valign="top"><img src="images/bigmacLG.jpg" alt="" width="206" height="155" /></td>
                    <td width="353" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td align="left"><span class="heading1"><strong>Confirm your order</strong></span> <img src="images2/icon_36.gif" alt="" width="39" height="19"  /></td>
                      </tr>					  
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
					  <tr>
                        <td height="10"></td>
                      </tr>
                      <tr>
                        <td class="style19">Please double check your order. If you want to make changes to 
                            your order you can go back to the ordering page by pressing cancel</td>
                      </tr>
                      <tr>
                        <td height="10"></td>
                      </tr>
                      </table></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="22"></td>
              </tr>
              <tr class="green-head_bg">
                <td height="30" class="style10">Your Order</td>
              </tr>
              <tr>
                <td height="16"></td>
              </tr>
              <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0" 
                        style="height: 209px">
                  <tr>
                    <td style="vertical-align: text-top"><b>Your Order is:</b><br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                      </td>
                    <td class="style32" >
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                            GridLines="None" Width="293px">
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" HorizontalAlign="Center" />
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" HorizontalAlign="Center" />
                        </asp:GridView>
                      </td>
                    <td class="style29"></td>
                  </tr>
                  <tr>
                  <td class="style25">
                      Total cost:</td>
                  <td class="style33" ><span class="style34">RM</span> 
                      <asp:Label ID="Label5" runat="server" 
                          style="text-align: center; color: #FF0000;"></asp:Label>
                      </td>
                  <td class="style27">
                      </td>
                  </tr>
                   <tr>
                    <td class="style31" ></td>
                    <td class="style20">
                        <asp:Button ID="Button2" runat="server" Text="Confirm" 
                            style="font-weight: 700" onclick="Button2_Click"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="Cancel" 
                            style="font-weight: 700; margin-left: 63px" onclick="Button3_Click" />
                        </td>
                        <tr>
                        <td></td>
                        <td class="style32"></td>
                        <td></td>
                        </tr>
                    <td class="style28">
                        <br />
                        </td>
                  </tr>
                   
                 
                               
                                                     
                  
                  
                </table></td>
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
                    <td height="30" class="style5"><span class="heading3">What do you want to do?<tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0" 
                            style="border-width: thin; border-style: solid;">
                      <tr>
                        <td align="left" class="style4"  >
                            <ul>
                                <li>
                                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" 
                                        ForeColor="Black" NavigateUrl="~/ordering.aspx">Place an order</asp:HyperLink>
                                </li>
                            </ul>
                          </td>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="28px" 
                                    ImageUrl="~/App_Themes/Theme1/images2/burger.gif" Width="40px" 
                                    style="text-align: right; margin-left: 5px; " />
                                &nbsp;<br />
                          </td> 
                      </tr>
					   <tr>
                        <td class="style3">
                            <ul>
                                <li>
                                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="True" 
                                        ForeColor="Black" NavigateUrl="~/editprofile.aspx">Edit my profile</asp:HyperLink>
                                </li>
                            </ul>
                           </td>
                           <td>
                               <asp:Image ID="Image2" runat="server" Height="41px" 
                                   ImageUrl="~/App_Themes/Theme1/images2/profile.bmp" Width="36px" 
                                   style="margin-left: 7px" />
                               <br />
                           </td>
                      </tr>
                      <tr>
                        <td  class="style3">
                            <ul>
                                <li>
                                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="True">Calculate your BMI</asp:HyperLink></li>
                            </ul>
                          </td>
                        <td> 
                            <asp:Image ID="Image3" runat="server" 
                                ImageUrl="~/App_Themes/Theme1/images2/bmi.gif" style="margin-left: 12px" />
                            &nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>                  
				  <tr>
                    <td height="25">&nbsp;</td>
                  </tr>
				  <tr>
                    <td height="15"></td>
                  </tr>
                  <td  height="15" 
                          style="border-color: #C0C0C0; border-style:inset" ><obshow:Show id="Show1" runat="server" 
                            ImagesShowPath="slideshow" Width="268" 
                  ImagesFitAvailableSize="true"  Height="120" ShowType="show" TransitionType="Fading" 
                            FadingSpeed="7000" ScrollingSpeed="200" FadingStep="9">
              <Changer Type="Arrow" ArrowType="Side1" Position="Bottom" VerticalAlign="Middle"  HorizontalAlign="Center"></Changer>
                </obshow:Show></td>
                  <tr>
                    <td height="10"></td>
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
                            ID="Image4" runat="server" ImageUrl="images2/telephone_icon.gif" 
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
