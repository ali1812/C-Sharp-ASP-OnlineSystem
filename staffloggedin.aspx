<%@ Page Language="C#" AutoEventWireup="true" CodeFile="staffloggedin.aspx.cs" Inherits="staffloggedin" %>
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
            width: 176px;
            text-align: left;
        }
        .style4
        {
            width: 176px;
        }
        .style5
        {
            text-align: center;
            background-color: #003399;
        }
        .style10
        {
            height: 7px;
            width: 176px;
            text-align: left;
            font-weight: bold;
        }
        .style11
        {
            color: #FFFFFF;
        }
        .style12
        {
            font-size: large;
        }
        .style13
        {
            font-size: x-large;
            font-weight: bold;
        }
        .style14
        {
            width: 24px;
        }
        .style15
        {
            width: 31px;
        }
        .style17
        {
            font-size: x-large;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #003399;
        }
        .style18
        {
            width: 94px;
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
                <asp:Image ID="Image3" ImageUrl="images2/steak-burger.jpg" runat="server" 
                    Height="289px" /> </td>
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
            <td align="center" class="style18"><a href="registration.aspx" class="btn_links" 
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
        <td height="20">`</td>
      </tr>     
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10"></td>
        <td width="589" class="white_bg">
            <div style="height: 430px; width: 535px; margin-left: 25px; margin-top: 0px">
                <div style="height: 25px; background-color: #000066">h<span class="style11"> <b>
                    <span class="style12">Hello </span>
                    <asp:Label ID="Label1" runat="server" CssClass="style12"></asp:Label>
                    </b></span>
                    <div style="height: 407px; width: 534px; margin-top: 7px; background-color: #CCCCFF">
                        <br />
                        <table style="width: 248px; height: 282px; margin-top: 0px; margin-bottom: 0px;">
                        <tr><td class="style14"></td>
                        <td class="style17">
                                                        My Profile</td>
                        <td class="style15">
                        </td>
                        </tr>
                        <tr>
                        <td class="style14"></td>
                        <td>
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                            CellPadding="4" DataKeyNames="username" DataSourceID="SqlDataSource1" 
                            ForeColor="#333333" GridLines="None" Height="99px" Width="247px" 
                            style="margin-top: 0px">
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                            <RowStyle BackColor="#EFF3FB" />
                            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <Fields>
                                <asp:ImageField DataImageUrlField="PersonalImage" ControlStyle-Width = "80px" ControlStyle-Height="80px" >
                                </asp:ImageField>
                                <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                                    SortExpression="FirstName" />
                                <asp:BoundField DataField="LastName" HeaderText="LastName" 
                                    SortExpression="LastName" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" 
                                    SortExpression="Gender" />
                                <asp:BoundField DataField="Nationality" HeaderText="Nationality" 
                                    SortExpression="Nationality" />
                                <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" 
                                    SortExpression="username" />
                                <asp:BoundField DataField="password" HeaderText="password" 
                                    SortExpression="password" />
                                
                                <asp:CommandField ShowEditButton="True" />
                            </Fields>
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:DetailsView>
                        </td>
                        <td class="style15">&nbsp;</td>
                        </tr>
                        <tr>
                        <td>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td class="style15">
                        </td>
                        </tr>
                        </table>
                        <span class="style13"><br />
                        </span>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                             UpdateCommand="UPDATE [staff_account] SET [FirstName] = @FirstName, [LastName] = @LastName, [Gender] = @Gender, [Nationality] = @Nationality, [password] = @password, [PersonalImage] = @PersonalImage WHERE [username] = @original_username AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Nationality] = @original_Nationality) OR ([Nationality] IS NULL AND @original_Nationality IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([PersonalImage] = @original_PersonalImage) OR ([PersonalImage] IS NULL AND @original_PersonalImage IS NULL))"
                            
                            SelectCommand="SELECT * FROM [staff_account] WHERE ([username] = @username)" 
                            DeleteCommand="DELETE FROM [staff_account] WHERE [username] = @original_username AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Nationality] = @original_Nationality) OR ([Nationality] IS NULL AND @original_Nationality IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([PersonalImage] = @original_PersonalImage) OR ([PersonalImage] IS NULL AND @original_PersonalImage IS NULL))" 
                            InsertCommand="INSERT INTO [staff_account] ([FirstName], [LastName], [Gender], [Nationality], [username], [password], [PersonalImage]) VALUES (@FirstName, @LastName, @Gender, @Nationality, @username, @password, @PersonalImage)" 
                            OldValuesParameterFormatString="original_{0}" >
                            <SelectParameters>   
                            <asp:SessionParameter Name="username" SessionField="userstaff" Type="String" />   
                            </SelectParameters>  
                              
                            <DeleteParameters>
                                <asp:Parameter Name="original_username" Type="String" />
                                <asp:Parameter Name="original_FirstName" Type="String" />
                                <asp:Parameter Name="original_LastName" Type="String" />
                                <asp:Parameter Name="original_Gender" Type="String" />
                                <asp:Parameter Name="original_Nationality" Type="String" />
                                <asp:Parameter Name="original_password" Type="String" />
                                <asp:Parameter Name="original_PersonalImage" Type="String" />
                            </DeleteParameters>
                              
                            <UpdateParameters>
                                <asp:Parameter Name="FirstName" Type="String" />
                                <asp:Parameter Name="LastName" Type="String" />
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="Nationality" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="PersonalImage" Type="String" />
                                <asp:Parameter Name="original_username" Type="String" />
                                <asp:Parameter Name="original_FirstName" Type="String" />
                                <asp:Parameter Name="original_LastName" Type="String" />
                                <asp:Parameter Name="original_Gender" Type="String" />
                                <asp:Parameter Name="original_Nationality" Type="String" />
                                <asp:Parameter Name="original_password" Type="String" />
                                <asp:Parameter Name="original_PersonalImage" Type="String" />
                            </UpdateParameters>
                           
                            <InsertParameters>
                                <asp:Parameter Name="FirstName" Type="String" />
                                <asp:Parameter Name="LastName" Type="String" />
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="Nationality" Type="String" />
                                <asp:Parameter Name="username" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="PersonalImage" Type="String" />
                            </InsertParameters>
                           
                        </asp:SqlDataSource>
                      
                    </div>
                </div>
            </div>
        </td>
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
                    <td height="30" class="style5"><span class="heading3">Options</span></td>
                  </tr>
                  <tr>
                    <td height="17"></td>
                  </tr>
                  <tr>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0" 
                            style="border-width: thin; border-style: solid;">
                      <tr>
                        <td align="left" class="style4"  >
                            <ul>
                                <li>
                                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="True" 
                                        ForeColor="Black" NavigateUrl="~/menuediting.aspx">Edit Menu</asp:HyperLink>
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
                                        ForeColor="Black" NavigateUrl="~/orders.aspx">View Orders</asp:HyperLink>
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
                        <td align="right" class="style10">
                            &nbsp;</td>
                        <td> 
                            &nbsp;</td>
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
                            ID="Image4" runat="server" ImageUrl="images2/telephone_icon.gif" 
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
