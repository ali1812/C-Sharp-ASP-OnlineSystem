<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>
<%@ Register TagPrefix="obshow" Namespace="OboutInc.Show" Assembly="obout_Show_Net" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script type="text/javascript" >
    function ValidateComments(sender, args) 
    {

        if (args.Value.length > 250)
            args.IsValid = false;
        else
            args.IsValid = true;
    }
</script> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>My Online Order</title>
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
        .style19
        {
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 11px;
            color: #000000;
            line-height: 17px;
            font-weight: bold;
            text-decoration: none;
        }
        .style29
        {
            height: 101px;
        }
        .style30
        {
            width: 183px;
        }
        .style31
        {
            width: 181px;
        }
        .style32
        {
            width: 180px;
        }
        .style33
        {
            width: 173px;
        }
        .style34
        {
            width: 168px;
        }
        .style35
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
                <asp:Image ID="Image1" runat="server" ImageUrl="images2/steak-burger.jpg" 
                    Height="290px" /> </td>
            <td width="244" align="left" valign="top"><img src="images2/mcflurry2.jpg" alt="" 
                    width="244" alt="" width="244" style="height: 291px" /></td>
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
            <td width="107" align="center"><a href="registration.aspx" class="btn_links" 
                    title="Menu">
                Menu</a></td>
            <td width="19"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            <td align="center" class="style35"><a href="news.htm" class="btn_links" title="News &amp; Events">
                Registration</a></td>
            
            
            
            
            <td width="19"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            <td width="150" align="center"><a href="contactus.aspx?" class="btn_links" title="Contact Us">
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
                    <td width="216" align="left" valign="top">
                        <img src="images2/contact_us1.jpg" alt="" 
                            height="155" style="width: 210px" /></td>
                    <td width="353" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td align="left"><span class="heading1"><strong>Contact Us Now</strong></span> <img src="images2/icon_36.gif" alt="" width="39" height="19"  /></td>
                      </tr>					  
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td class="style19">Here you can send a comment or enquire about anything you want , 
                            also you can rate our service..We will reply to your email make sure your email address is correct.</td>
                      </tr>
                      <tr>
                        <td height="10"><b>OR&nbsp; call us at:</b></td>
                      </tr>
                      </table>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image 
                            ID="Image2" runat="server" ImageUrl="images2/telephone_icon.gif" 
                            Height="23px" />
                        &nbsp;&nbsp;&nbsp;&nbsp; 017-2956563</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="22"></td>
              </tr>
              <tr class="green-head_bg">
                <td height="30" class="style10">Fill in the form</td>
              </tr>
              <tr>
                <td height="16"></td>
              </tr>
              <tr>
                <td>
                    <asp:Wizard ID="Wizard1" runat="server" BackColor="#FFFBD6" 
                        BorderColor="#FFDFAD" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                        Height="402px" Width="524px" ActiveStepIndex="0" 
                        onfinishbuttonclick="Wizard1_FinishButtonClick1">
                        <StepStyle VerticalAlign="Top" />
                        <WizardSteps>
                            <asp:WizardStep runat="server" Title="Contact info">
                                <table cellpadding="10" class="style30">
                                    <tr>
                                        <td>
                                            Your Name:</td>
                                        <td class="style32">
                                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="style33">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="txtName" ErrorMessage="Enter your name please">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Email:</td>
                                        <td class="style34">
                                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="style33">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="txtEmail" ErrorMessage="Enter your email address please">*</asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                ControlToValidate="txtEmail" ErrorMessage="Enter a valid email address" 
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style31">
                                            &nbsp;</td>
                                        <td class="style32" colspan="2">
                                            <asp:ValidationSummary ID="ValidationSummary3" runat="server" Width="168px" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="Comments">
                                
                                <table class="style23">
                                    <tr>
                                        <td class="style32">
                                            Comments:<br />
                                            (max 250 chars)</td>
                                        <td class="style27">
                                            <asp:TextBox ID="txtComments" runat="server" Height="60px" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                        <td class="style26">
                                            <asp:CustomValidator ID="CustomValidator1" runat="server" 
                                                ClientValidationFunction="ValidateComments" ControlToValidate="txtComments" 
                                                ErrorMessage="No More than 250 Chars please" 
                                                OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ControlToValidate="txtComments" ErrorMessage="Enter a comment please">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style32">
                                            <br />
                                            Rating:<br />
                                            (1-5)</td>
                                        <td class="style31">
                                            <asp:TextBox ID="txtRating" runat="server" Width="181px" ></asp:TextBox>
                                        </td>
                                        <td class="style31">
                                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                                ControlToValidate="txtRating" ErrorMessage="Choose a number between 1 and 5" 
                                                MaximumValue="5" MinimumValue="1">*</asp:RangeValidator>
                                            </td>
                                    </tr>
                                    <tr>
                                        <td class="style32">
                                            &nbsp;</td>
                                        <td class="style28" colspan="2">
                                            <asp:ValidationSummary ID="ValidationSummary2" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                                
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" StepType="Complete" Title="Complete">
                                <div class="style5">
                                    <b>
                                    <br />
                                    <br />
                                    Thank you for your feedback<br />
                                    we will reply to you as soon as posssible<br />
                                    <br />
                                    <br />
                                    <br />
                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" 
                                        style="color: #FFFFFF; font-weight: 700; background-color: #CC0000" 
                                        Text="Done" />
                                    <br />
                                    </b>
                                </div>
                            </asp:WizardStep>
                        </WizardSteps>
                        <SideBarButtonStyle ForeColor="White" />
                        <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" 
                            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                            ForeColor="#990000" Width="70px" />
                        <SideBarStyle BackColor="#990000" Font-Size="1.2em" VerticalAlign="Top" 
                            Width="130px" />
                        <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" 
                            BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" 
                            HorizontalAlign="Center" />
                    </asp:Wizard>
                  </td>
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
                    <td height="30" class="style5"><span class="heading3">Login              <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td align="left" class="style4" >UserName:</td>
                            <td>
<asp:TextBox ID="user" runat="server" Height="23px" Width="133px" style="margin-top: 4px"></asp:TextBox>
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
                    <td height="25"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      
                      
                      <tr>
                        <td align="left" class="text1">&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="10"><span class="style9">This is your first time here??</span><br />
                          </td>
                      </tr>
                      <tr>
                        <td align="right"><a href="registration.aspx?" class="readmore_links" title="Click here to view more">Click here for more information</a></td>
                      </tr>
                    </table></td>
                  </tr>
				  <tr>
                    <td height="15"></td>
                  </tr>
                  <tr>
                    <td align="left" valign="top" 
                          class="style29" style="border-color: #C0C0C0; border-style: inset;"><obshow:Show id="Show1" runat="server" 
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
&nbsp;Melaka, Ayer Keroh
Bukit Beruang, 
                        <br />
&nbsp;Taman Kerjasama

 <br />
&nbsp;&nbsp;<asp:Image 
                            ID="Image3" runat="server" ImageUrl="images2/telephone_icon.gif" 
                            Height="23px" />&nbsp; 017-2956563
</td>
                  </tr>
                </table></td>
                <td width="10"></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
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
            <td width="858" align="center" class="ftr_text">Copyright &copy; 2010 Restaurant. All Rights Reserved.<br />
          <a href="http://www.globaltemplates.com/free-website-templates" style="font-size:9px;color:#b1b1b1">Brought by </a><a href="http://www.globaltemplates.com/" style="font-size:9px;color::#b1b1b1"> Free Website Templates</a></td>
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
