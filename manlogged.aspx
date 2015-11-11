<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manlogged.aspx.cs" Inherits="manlogged" %>
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
            height: 631px;
        }
        .style15
        {
            background-color: #ffffff;
            height: 631px;
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
                onclick="LinkButton1_Click">logout</asp:LinkButton> 
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
                    Height="289px" />  </td>
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
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10" class="style14"></td>
        <td width="589" class="style15">
            <div style="height: 430px; width: 535px; margin-left: 25px; margin-top: 0px">
                <div style="height: 25px; background-color: #000066; width: 546px;">h<span class="style11"> <b>
                    <span class="style12">Hello </span>
                    <asp:Label ID="Label1" runat="server" CssClass="style12"></asp:Label>
                    </b></span>
                    <div style="height: 436px; width: 545px; margin-top: 7px; background-color: #CCCCFF">
                        <br />
                        <span class="style13">Staff List<br />
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="username" 
                            DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                            <ItemTemplate>
                                <tr  style="background-color:#DCDCDC;color: #000000; font-size: smaller; text-align:center" >
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                            Text="D" Width="28px" />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="E" Width="28px" />
                                    </td>
                                    <td>
                                        <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <AlternatingItemTemplate>
                                <tr style="background-color:#FFF8DC; font-size:smaller; text-align:center">
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                            Text="D" Width="28px" />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="E" Width="28px"/>
                                    </td>
                                    <td>
                                        <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="password" runat="server" Text='<%# Eval("password") %>' />
                                    </td>
                                </tr>
                            </AlternatingItemTemplate>
                            <EmptyDataTemplate>
                                <table id="Table1" runat="server" 
                                    style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px; font-size:small;">
                                    <tr>
                                        <td>
                                            No data was returned.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <tr style=" font-size:small;">
                                    <td>
                                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                            Text="Insert" Width="49px" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                            Text="Clear" Width="49px" />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="FirstNameTextBox" runat="server" 
                                            Text='<%# Bind("FirstName") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="usernameTextBox" runat="server" 
                                            Text='<%# Bind("username") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="passwordTextBox" runat="server" 
                                            Text='<%# Bind("password") %>' />
                                    </td>
                                </tr>
                            </InsertItemTemplate>
                            <LayoutTemplate>
                                <table id="Table2" runat="server" style=" font-size:small;">
                                    <tr id="Tr1" runat="server">
                                        <td id="Td1" runat="server">
                                            <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr id="Tr2" runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                    <th id="Th1" runat="server">
                                                    </th>
                                                    <th id="Th2" runat="server">
                                                        FirstName</th>
                                                    <th id="Th3" runat="server">
                                                        username</th>
                                                    <th id="Th4" runat="server">
                                                        password</th>
                                                </tr>
                                                <tr ID="itemPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr id="Tr3" runat="server">
                                        <td id="Td2" runat="server" 
                                            style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                            <asp:DataPager ID="DataPager1" runat="server">
                                                <Fields>
                                                 
                                                    <asp:NumericPagerField />
                                                    
                                                        
                                                </Fields>
                                            </asp:DataPager>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <EditItemTemplate>
                                <tr style="background-color:#008A8C;color: #FFFFFF;">
                                    <td>
                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                            Text="Update" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                            Text="Cancel" />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="FirstNameTextBox" runat="server" 
                                            Text='<%# Bind("FirstName") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="usernameLabel1" runat="server" Text='<%# Eval("username") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="passwordTextBox" runat="server" 
                                            Text='<%# Bind("password") %>' />
                                    </td>
                                </tr>
                            </EditItemTemplate>
                            <SelectedItemTemplate>
                                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                            Text="Delete" />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                    </td>
                                    <td>
                                        <asp:Label ID="FirstName" runat="server" Text='<%# Eval("FirstName") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                                    </td>
                                </tr>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            DeleteCommand="DELETE FROM [staff_account] WHERE [username] = @original_username AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL))" 
                            InsertCommand="INSERT INTO [staff_account] ([FirstName], [username], [password]) VALUES (@FirstName, @username, @password)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT [FirstName], [username], [password] FROM [staff_account]" 
                            
                            UpdateCommand="UPDATE [staff_account] SET [FirstName] = @FirstName, [password] = @password WHERE [username] = @original_username AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_username" Type="String" />
                                <asp:Parameter Name="original_FirstName" Type="String" />
                                <asp:Parameter Name="original_password" Type="String" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="FirstName" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="original_username" Type="String" />
                                <asp:Parameter Name="original_FirstName" Type="String" />
                                <asp:Parameter Name="original_password" Type="String" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="FirstName" Type="String" />
                                <asp:Parameter Name="username" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        </span>
                      
                    </div>
                </div>
            </div>
        </td>
        <td width="10" class="style14"></td>
        <td width="281" valign="top" class="style14"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="white_bg">
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
                                        ForeColor="Black" NavigateUrl="~/manlogged.aspx">Edit Staff</asp:HyperLink>
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
                                        ForeColor="Black" NavigateUrl="~/sales.aspx">Sales</asp:HyperLink>
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
        <td width="10" class="style14"></td>
      </tr>
    </table></td>
  </tr>

</table>
    </form>
</body>
</html>