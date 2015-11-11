<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>
<%@ Register TagPrefix="obshow" Namespace="OboutInc.Show" Assembly="obout_Show_Net" %>
<%@ Register assembly="MSCaptcha" namespace="MSCaptcha" tagprefix="cc1" %>

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
            width: 78px;
        }
        .style4
        {
            width: 78px;
        }
        .style5
        {
            text-align: center;
        }
        .style7
        {
            width: 78px;
            height: 25px;
        }
        .style8
        {
            height: 25px;
        }
        .style10
        {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 16px;
            color: #ffffff;
            padding-left: 10px;
            font-weight: bold;
            text-decoration: none;
            text-align: left;
        }
        .style15
        {
            width: 139px;
            font-weight: bold;
            text-align: left;
            height: 68px;
        }
        .style17
        {
            height: 68px;
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
            width: 204px;
            height: 52px;
        }
        .style21
        {
            height: 68px;
            width: 204px;
            text-align: center;
        }
        .style23
        {
            width: 204px;
            height: 37px;
        }
        .style31
        {
            height: 29px;
        }
        .style32
        {
            width: 204px;
            height: 29px;
        }
        .style33
        {
            width: 139px;
            font-weight: bold;
            height: 37px;
        }
        .style34
        {
            height: 29px;
            width: 139px;
            font-weight: bold;
        }
        .style35
        {
            height: 49px;
            width: 139px;
            font-weight: bold;
        }
        .style37
        {
            height: 52px;
            width: 139px;
            font-weight: bold;
        }
        .style38
        {
            height: 11px;
            width: 139px;
            font-weight: bold;
        }
        .style39
        {
            height: 11px;
        }
        .style40
        {
            height: 42px;
        }
        .style42
        {
            height: 28px;
        }
        .style43
        {
            height: 28px;
            font-weight: bold;
        }
        .style44
        {
            height: 56px;
            font-weight: bold;
        }
        .style45
        {
            height: 43px;
        }
        .style46
        {
            height: 56px;
        }
        .style47
        {
            height: 52px;
        }
        .style48
        {
            height: 49px;
        }
        .style49
        {
            height: 37px;
        }
        .style50
        {
            height: 49px;
            width: 204px;
        }
        .style51
        {
            height: 11px;
            width: 204px;
        }
        .style52
        {
            height: 28px;
            width: 204px;
        }
        .style53
        {
            height: 56px;
            width: 204px;
        }
        .style54
        {
            height: 43px;
            width: 204px;
        }
        .style55
        {
            text-align: center;
            width: 204px;
        }
        .style56
        {
            width: 204px;
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
                <asp:Image ID="Image1" ImageUrl="images2/steak-burger.jpg" runat="server" 
                    Height="290px" />  </td>
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
            <td width="107" align="center"><a href="Menus.aspx" class="btn_links" title="Menu">
                Menu</a></td>
            <td width="19"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            <td width="185" align="center"><a href="registration.aspx" class="btn_links" 
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
                    <td width="216" align="left" valign="top"><img src="images2/user-icon.png" alt="" width="206" height="155" /></td>
                    <td width="353" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td align="left"><span class="heading1"><strong>Sign up for new account</strong></span> <img src="images2/icon_36.gif" alt="" width="39" height="19"  /></td>
                      </tr>					  
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
					  <tr>
                        <td height="10"></td>
                      </tr>
                      <tr>
                        <td class="style19">Having an account will enable you to easily make orders. If you 
                            needed to change your information later on you can edit your account. The 
                            processs is easy and it wont take 2 minutes..</td>
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
                <td height="30" class="style10">Registration</td>
              </tr>
              <tr>
                <td height="16"></td>
              </tr>
              <tr>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0" 
                        style="height: 433px">
                  <tr>
                    <td class="style33">First Name:</td>
                    <td class="style23">
                       <asp:TextBox ID="fname" runat="server" Width="150px" ></asp:TextBox>
                        </td>
                    <td class="style49">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="fname" ErrorMessage="* First Name is required" 
                            EnableClientScript="False"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                  <td class="style34">Last Name:</td>
                  <td class="style32">
                         <asp:TextBox ID="lname" runat="server" Width="150px"></asp:TextBox>
                      </td>
                  <td class="style31">
                  </td>
                  </tr>
                   <tr>
                    <td class="style35">UserName:</td>
                    <td class="style50" >
                       
                        <asp:TextBox ID="uname" runat="server" Width="150px"></asp:TextBox>
                       </td>
                    <td class="style48">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="uname" ErrorMessage="* Username is required" 
                            EnableClientScript="False"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        </td>
                  </tr>
                   <tr>
                    <td class="style38">Password:</td>
                    <td class="style51" >
                       
                        
                      
                        <asp:TextBox ID="password0" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                       
                        
                      
                    </td>
                    <td class="style39">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="password0" ErrorMessage="* Password is required" 
                            EnableClientScript="False"></asp:RequiredFieldValidator>
                       </td>
                  </tr>
                   <tr>
                    <td class="style37">
                                                Confirm Password :</td>
                    <td class="style20">
                        <asp:TextBox ID="cpassword" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                        </td>
                    <td class="style47">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="password0" ControlToValidate="cpassword" 
                            ErrorMessage="* passwords doesn't match" EnableClientScript="False"></asp:CompareValidator>
                        </td>
                  </tr>
                   <tr>
                    <td class="style40">
                        <b>Handphone No:</b></td>
                    <td class="style56" >
                       
                        
                        <asp:TextBox ID="hp" runat="server" Width="150px" style="margin-top: 17px"></asp:TextBox>
                       
                        
                      <br />
                        eg.(01x-xxxxxxx)<br />
                    </td>
                    <td class="style40">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="hp" ErrorMessage="* Enter A valid number" 
                            ValidationExpression="(01)?\d{1}-\d{7}" EnableClientScript="False"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="hp" ErrorMessage="* Hp No is required " 
                            Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
                       </td>
                  </tr>
                  <tr>
                  <td class="style43">Email:</td>
                  <td class="style52">   <asp:TextBox ID="email" runat="server" Width="150px"></asp:TextBox>
                      </td>
                  <td class="style42">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="email" ErrorMessage="* Enter a valid Email Address" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            EnableClientScript="False"></asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="email" EnableClientScript="False" 
                            ErrorMessage="* Email address is required"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                  <td class="style44">Address:</td>
                  <td class="style53">
                        <asp:TextBox ID="address" runat="server" TextMode="MultiLine" Width="176px"></asp:TextBox>
                       </td>
                  <td class="style46">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="address" ErrorMessage="* Address is required" 
                            EnableClientScript="False"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                  <td class="style45"></td>
                  <td class="style54">
                        <cc1:CaptchaControl ID="ccJoin" runat="server" CaptchaBackgroundNoise="Medium" 
                            CaptchaLength="5" CaptchaHeight="60" CaptchaWidth="200" 
                            CaptchaMinTimeout="5" CaptchaMaxTimeout="240" 
                            FontColor="#33CC33"  />
                      </td>
                  <td class="style45"></td>
                  </tr>
                  <tr>
                  <td>
                  </td>
                  <td class="style55">
                      Enter the code shown above<br />
                      <asp:TextBox ID="TextBox10" runat="server" 
                            Width="198px" Height="22px"  
                            CausesValidation="True"></asp:TextBox>
                  </td>
                  <td>
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                  </td>
                  </tr>
                   <tr>
                    <td class="style15"><br />
                       </td>
                    <td class="style21">
                        <br />
                        <asp:Button ID="Button2" runat="server" Height="30px" 
                            
                            
                            style="font-weight: 700; background-color: #B42700; color: #FFFFFF; margin-left: 24px;" Text="Sign up " 
                            Width="120px" onclick="Button2_Click" />
                        <br/>
                       </td>
                    <td class="style17">
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
                    <td height="30" class="style5"><span class="heading3">Login             <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td align="left" class="style4" >UserName:</td>
                            <td>
<asp:TextBox ID="user" runat="server"  Width="133px" style="margin-top: 4px"></asp:TextBox>
                         </td> 
                      </tr>
					   <tr>
                        <td class="style3"></td>
                      </tr>
                      <tr>
                        <td align="left" class="style4" >Password:</td>
                        <td>
                            <asp:TextBox ID="password" runat="server" Width="134px"></asp:TextBox> </td>
                      </tr>
                      <tr>
                        <td class="style7"></td>
                        <td class="style8">
                            <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                      </tr>
                      <tr>
                        <td align="right" class="style4"></td>
                        <td> 
                            <asp:Button ID="Button1" runat="server" Text="login" 
                                
                                style="text-align: center; font-weight: 700; color: #FFFFFF; background-color: #B42700; margin-left: 39px;" 
                                Width="61px" onclick="Button1_Click" /></td>
                      </tr>
                    </table></td>
                  </tr>                  
				  <tr>
                    <td height="25">&nbsp;</td>
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
                            ID="Image3" runat="server" ImageUrl="images2/telephone_icon.gif" 
                            Height="23px" />&nbsp; 017-2956563
</td>
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
            <td width="858" align="center" class="ftr_text">Copyright © 2011 Ali Al-Habsi. All 
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
