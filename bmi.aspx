<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bmi.aspx.cs" Inherits="bmi" %>
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
            width: 203px;
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
        .style12
        {
            width: 169px;
            font-weight: bold;
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
        .style22
        {
            width: 169px;
            font-weight: bold;
            text-align: center;
            height: 49px;
        }
        .style23
        {
            width: 152px;
            height: 49px;
        }
        .style24
        {
            height: 49px;
        }
        .style25
        {
            width: 169px;
            font-weight: bold;
            text-align: center;
            height: 64px;
        }
        .style26
        {
            width: 152px;
            height: 64px;
        }
        .style27
        {
            height: 64px;
        }
        .style28
        {
            width: 169px;
            font-weight: bold;
            text-align: center;
            height: 50px;
        }
        .style30
        {
            height: 50px;
        }
        .style31
        {
            width: 152px;
        }
        .style32
        {
            text-align: center;
            width: 152px;
        }
        .style34
        {
            width: 203px;
        }
        .style37
        {
            text-decoration: none;
        }
        .style38
        {
            color: #000000;
        }
        .style39
        {
            width: 166px;
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
            Home</a>  <span class="hdr_div">|</span>  <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#FF6666" 
                onclick="LinkButton1_Click">logout</asp:LinkButton></td>
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
                    Height="289px" /></td>
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
            <td align="center" class="style39"><a href="Menus.aspx" class="btn_links" title="Menu">
                Menu </a></td>
            <td width="19"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            <td width="185" align="center"><a href="registration.aspx" class="btn_links" 
                    title="News &amp; Events">
                Registration </a></td>
            
            
            
            
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
                    <td width="216" align="left" valign="top"><img src="images2/calculating-bmi.jpg" alt="" width="206" height="155" /></td>
                    <td width="353" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td align="left"><span class="heading1"><strong>What is BMI ??</strong></span> <img src="images2/icon_36.gif" alt="" width="39" height="19"  /></td>
                      </tr>					  
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
					  <tr>
                        <td height="10"></td>
                      </tr>
                      <tr>
                        <td class="style19"><span class="mContent"><span class="yellowFade"><span>
                            <span class="style38" style="POSITION: relative">BMI</span></span></span><span 
                                class="style38"> is the common </span><a class="style37" 
                                href="http://www.wisegeek.com/what-is-an-acronym.htm"><span class="style38">
                            acronym</span></a><span class="style38"> given to </span><a class="style37" 
                                href="http://www.wisegeek.com/what-is-the-body-mass-index.htm">
                            <span class="style38">Body Mass Index</span></a><span class="style38">, a number 
                            calculated from your weight and height that roughly correlates to the percentage 
                            of your total weight that comes from fat, as opposed to muscle, bone or organ. 
                            The higher a person's <span class="yellowFade"><span>
                            <span class="FadeWordContainer" style="POSITION: relative">BMI</span></span></span>, 
                            the higher the percentage of fat in their body.</span></span></td>
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
                <td height="30" class="style10">Calculate your BMI</td>
              </tr>
              <tr>
                <td height="16"></td>
              </tr>
              <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0" 
                        style="height: 247px">
                  <tr>
                    <td class="style25">
                        <br />
                        Enter your weight:<br />
                        (Kg)</td>
                    <td class="style26"><asp:TextBox ID="weighttxt" runat="server" Width="150px" 
                            style="margin-top: 0px" ></asp:TextBox></td>
                    <td class="style27">&nbsp;</td>
                  </tr>
                  <tr>
                  <td class="style22">
                      <br />
                      Enter your height:<br />
                      (meter)</td>
                  <td class="style23">
                     <asp:TextBox ID="heighttxt" runat="server" Width="150px" ></asp:TextBox> </td>
                  <td class="style24">
                  </td>
                  </tr>
                   <tr>
                    <td class="style28"></td>
                    <td class="style31" >
                        <asp:Button ID="Button2" runat="server"  
                            Text="Calculate BMI" Width="112px" 
                            style="text-align: center; margin-left: 17px" onclick="Button2_Click" />
                        <br />
                       </td>
                    <td class="style30">
                        <br />
                        </td>
                  </tr>
                   <tr>
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style32">
                       
                        
                      
                        <b>Your BMI:</b><br />
                                                &nbsp;<asp:Label ID="Label5" runat="server"></asp:Label>
                        &nbsp;&nbsp;
                        <br />
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                       
                        
                      
                    </td>
                    <td>
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
                    <td height="30" class="style5"><span class="heading3">What do you want to do? </span>             <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0" 
                            style="border-width: thin; border-style: solid;">
                            <tr><td></td><td></td></tr>
                      <tr>
                        <td align="left" class="style34"  >
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
                        <td>
                            <ul>
                                <li>
                                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" 
                                        Font-Underline="True" ForeColor="Black">Calculate your BMI</asp:HyperLink>
                                </li>
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
                    <td height="25"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      
                      
                      <tr>
                        <td align="left" class="text1">&nbsp;</td>
                      </tr>
                      
                      
                    </table></td>
                  </tr>
				  <tr>
                    <td height="15"></td>
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
            <td width="858" align="center" class="ftr_text">Copyright &copy; 2011 Ali AL-Habsi. All Rights Reserved.<br />
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
