<%@ Page Language="C#" AutoEventWireup="true" CodeFile="staffmanagerlogin.aspx.cs" Inherits="staffmanagerlogin" %>
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
            width: 75px;
        }
        .style4
        {
            width: 75px;
        }
        .style5
        {
            text-align: center;
            background-color: #000099;
        }
        .style7
        {
            width: 75px;
            height: 25px;
        }
        .style8
        {
            height: 25px;
        }
        .style11
        {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 16px;
            color: #ffffff;
            padding-left: 10px;
            font-weight: bold;
            text-decoration: none;
            background-color: #003399;
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
            Home</a>  <span class="hdr_div">|</span>  <a href="contactus.htm" class="hdr_links" title="Contact Us">
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
            
                <asp:Image ID="Image1" ImageUrl="images2/steak-burger.jpg" runat="server" 
                    Height="292px" />  </td>
            <td width="244" align="left" valign="top"><img src="images2/mcflurry2.jpg" alt="" 
                    width="244" style="height: 294px" /></td>
            <td align="left" valign="top"><img src="images2/bigmacbanner.jpg" alt="" 
                    width="382" style="height: 293px" /></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="2"></td>
      </tr>
      <tr class="btn_bg">
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0"class="btn_bg">
          <tr>
            <td width="109" height="49" align="center"><a href="index.htm" class="btn_links" title="Home">
                Home</a></td>
            <td width="19"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            <td width="107" align="center"><a href="menu.htm" class="btn_links" title="Menu">
                Menu</a></td>
            <td width="19"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            <td width="185" align="center"><a href="news.htm" class="btn_links" title="News &amp; Events">
                News &amp; Events</a></td>
            <td width="19" align="left"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            <td width="131" align="center"><a href="services.htm" class="btn_links" title="Services">
                Services</a></td>
            <td width="19"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            <td width="119" align="center"><a href="gallery.htm" class="btn_links" title="Gallery">
                Gallery</a></td>
            <td width="19"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            <td width="150" align="center"><a href="contactus.htm" class="btn_links" title="Contact Us">
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
                        <td align="left"><span class="heading1"><strong>Welcome </strong></span>&nbsp;<img src="images2/icon_36.gif" alt="" width="39" height="19"  /></td>
                      </tr>					  
                      <tr>
                        <td><span class="heading2">to our restaurant!</span></td>
                      </tr>
					  <tr>
                        <td height="10"></td>
                      </tr>
                      <tr>
                        <td class="text1">Please login to procced..</td>
                      </tr>
                      <tr>
                        <td height="10"></td>
                      </tr>
                      <tr>
                        <td align="right">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="22"></td>
              </tr>
              <tr class="green-head_bg">
                <td height="30" class="heading3">What is Hot today..</td>
              </tr>
              <tr>
                <td height="16"></td>
              </tr>
              <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0" 
                        style="height: 143px">
                  <tr>
                    <td width="10"></td>
                    <td width="176" align="center" valign="top"><obshow:Show id="Show2" runat="server" Height="240" 
                            ImagesFitAvailableSize="true" ImagesShowPath="slidingmenu" ManualChanger="true" 
                            ScrollingSpeed="9000" ShowType="Show" TransitionType="Fading" 
                            Width="172" FadingSpeed="10000" FadingStep="100">
              <Changer Type="Arrow" ArrowType="Side1" Position="Bottom" VerticalAlign="Middle"  HorizontalAlign="Center"></Changer>
                </obshow:Show></td>
                    <td width="10"></td>
                    <td width="176"><obshow:Show ID="Show3" runat="server" Height="240" 
                            ImagesFitAvailableSize="true" ImagesShowPath="slidingmenu2" ManualChanger="true" 
                            ScrollingSpeed="9000" ShowType="Show" TransitionType="Fading" 
                            Width="172" FadingSpeed="10000" FadingStep="100">
                            <Changer ArrowType="Side1" HorizontalAlign="Center" Position="Bottom" 
                                Type="Arrow" VerticalAlign="Middle">
                            </Changer>
                        </obshow:Show></td>
                    <td width="10"></td>
                    <td width="176"><obshow:Show ID="Show4" runat="server" Height="240" 
                            ImagesFitAvailableSize="true" ImagesShowPath="slidingmenu3" ManualChanger="true" 
                            ScrollingSpeed="9000" ShowType="Show" TransitionType="Fading" 
                            Width="172" FadingSpeed="10000" FadingStep="100">
                            <Changer ArrowType="Side1" HorizontalAlign="Center" Position="Bottom" 
                                Type="Arrow" VerticalAlign="Middle">
                            </Changer>
                        </obshow:Show></td>
                    <td width="10"></td>
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
            <td colspan="3"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="10" align="left" valign="bottom"><img src="images2/curve_left_btm_25.gif" alt="" width="10" height="10" /></td>
                <td width="569" height="10"></td>
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
                    <td height="30" class="style5"><span class="style11">Login</span></td>
                  </tr>
                  <tr>
                    <td height="17"></td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td align="left" class="style4" >UserName:</td>
                            <td>
<asp:TextBox ID="TextBox1" runat="server"  Width="134px" style="margin-top: 4px"></asp:TextBox>
                         </td> 
                      </tr>
					   <tr>
                        <td class="style3"></td>
                      </tr>
                      <tr>
                        <td align="left" class="style4" >Password:</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="134px" TextMode="Password"></asp:TextBox> </td>
                      </tr>
                      <tr>
                        <td class="style7"></td>
                        <td class="style8">
                            <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
                            </td>
                      </tr>
                      <tr>
                        <td align="right" class="style4"></td>
                        <td> 
                            <asp:Button ID="Button1" runat="server" Text="login" 
                                
                                style="font-weight: 700; color: #FFFFFF; background-color: #003399; margin-left: 41px;" 
                                Width="61px" onclick="Button1_Click" /></td>
                      </tr>
                    </table></td>
                  </tr>                  
				  <tr>
                    <td height="25"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      
                      
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
                Rights Reserved. </td>
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
