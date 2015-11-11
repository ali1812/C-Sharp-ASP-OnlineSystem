<%@ Page Language="C#" AutoEventWireup="true" CodeFile="orders.aspx.cs" Inherits="orders" %>
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
        .style14
        {
            width: 18px;
        }
        .style15
        {
            width: 149px;
        }
        .style16
        {
            width: 175px;
        }
        .style17
        {
            width: 146px;
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
            <td height="49" align="center" class="style16"><a href="Default2.aspx" 
                    class="btn_links" title="Home">
                Home</a></td>
            <td width="19"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            <td align="center" class="style17">
                <a href="Menus.aspx" class="btn_links" 
                    title="Menu">
                Menu </a></td>
            <td width="19"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            <td align="center" class="style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="registration.aspx" class="btn_links" 
                    title="News &amp; Events">
                Registration</a></td>
            <td align="left" class="style14"><img src="images2/menu_div_15.gif" alt="" width="19" height="22" /></td>
            
            
            
            
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
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0" 
            style="height: 555px">
      <tr>
        <td width="10"></td>
        <td width="589" class="white_bg">
            <div style="height: 482px; width: 535px; margin-left: 25px; margin-top: 0px">
                <div style="height: 25px; background-color: #000066">h<span class="style11"> <b>
                    Hello
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    </b></span><div style="height: 453px; width: 534px; margin-top: 7px; background-color: #CCCCFF">
                        
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Order_Id" 
                            DataSourceID="SqlDataSource1" style="text-align: center">
                            <ItemTemplate>
                                <tr style="margin: 5px; padding: 5px; background-color:#DCDCDC; color: #000000; text-align: center;">
                                    <td>
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                    </td>
                                    <td>
                                        <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="order_nameLabel" runat="server" 
                                            Text='<%# Eval("order_name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="order_qtyLabel" runat="server" Text='<%# Eval("order_qty") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="order_costLabel" runat="server" 
                                            Text='<%# Eval("order_cost") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="order_statusLabel" runat="server" 
                                            Text='<%# Eval("order_status") %>' />
                                    </td>
                                   
                                </tr>
                            </ItemTemplate>
                            <AlternatingItemTemplate>
                                <tr style="padding: 5px; margin: 5px; background-color:#FFF8DC; text-align: center;">
                                    <td>
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                    </td>
                                    <td>
                                        <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="order_nameLabel" runat="server" 
                                            Text='<%# Eval("order_name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="order_qtyLabel" runat="server" Text='<%# Eval("order_qty") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="order_costLabel" runat="server" 
                                            Text='<%# Eval("order_cost") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="order_statusLabel" runat="server" 
                                            Text='<%# Eval("order_status") %>' />
                                    </td>
                                    
                                </tr>
                            </AlternatingItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" 
                                    style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                    <tr>
                                        <td>
                                            No data was returned.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <tr style="">
                                    <td>
                                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                            Text="Insert" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                            Text="Clear" />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="userNameTextBox" runat="server" 
                                            Text='<%# Bind("userName") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="order_nameTextBox" runat="server" 
                                            Text='<%# Bind("order_name") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="order_qtyTextBox" runat="server" 
                                            Text='<%# Bind("order_qty") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="order_costTextBox" runat="server" 
                                            Text='<%# Bind("order_cost") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="order_statusTextBox" runat="server" 
                                            Text='<%# Bind("order_status") %>' />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </InsertItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                    <th runat="server">
                                                    </th>
                                                    <th runat="server">
                                                        User</th>
                                                    <th runat="server">
                                                        Details</th>
                                                    <th runat="server">
                                                        Qty</th>
                                                    <th runat="server">
                                                        Cost</th>
                                                    <th runat="server">
                                                        date</th>
                                                    <th runat="server">
                                                        Status</th>
                                                   </tr>
                                                <tr ID="itemPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" 
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
                                        <asp:Label ID="userNameTextBox" runat="server" 
                                            Text='<%# Bind("userName") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="order_nameTextBox" runat="server" 
                                            Text='<%# Bind("order_name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="order_qtyTextBox" runat="server" 
                                            Text='<%# Bind("order_qty") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="order_costTextBox" runat="server" 
                                            Text='<%# Bind("order_cost") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="order_statusTextBox" runat="server" 
                                            Text='<%# Bind("order_status") %>' />
                                    </td>
                                   
                                </tr>
                            </EditItemTemplate>
                            <SelectedItemTemplate>
                                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                    <td>
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                    </td>
                                    <td>
                                        <asp:Label ID="UserLabel" runat="server" Text='<%# Eval("userName") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="DetailsLabel" runat="server" 
                                            Text='<%# Eval("order_name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("order_qty") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="order_costLabel" runat="server" 
                                            Text='<%# Eval("order_cost") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="StatusLabel" runat="server" 
                                            Text='<%# Eval("order_status") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Order_IdLabel" runat="server" Text='<%# Eval("Order_Id") %>' />
                                    </td>
                                </tr>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            DeleteCommand="DELETE FROM [orders] WHERE [Order_Id] = @original_Order_Id AND [userName] = @original_userName AND [order_name] = @original_order_name AND [order_qty] = @original_order_qty AND [order_cost] = @original_order_cost AND [date] = @original_date AND [order_status] = @original_order_status" 
                            InsertCommand="INSERT INTO [orders] ([userName], [order_name], [order_qty], [order_cost], [date], [order_status]) VALUES (@userName, @order_name, @order_qty, @order_cost, @date, @order_status)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT [userName], [order_name], [order_qty], [order_cost], [date], [order_status], [Order_Id] FROM [orders]" 
                            UpdateCommand="UPDATE orders SET order_status = @order_status WHERE (Order_Id = @original_Order_Id) AND (userName = @original_userName) AND (order_name = @original_order_name) AND (order_qty = @original_order_qty) AND (order_cost = @original_order_cost) AND (date = @original_date) AND (order_status = @original_order_status)">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Order_Id" Type="Int32" />
                                <asp:Parameter Name="original_userName" Type="String" />
                                <asp:Parameter Name="original_order_name" Type="String" />
                                <asp:Parameter Name="original_order_qty" Type="String" />
                                <asp:Parameter Name="original_order_cost" Type="Decimal" />
                                <asp:Parameter DbType="Date" Name="original_date" />
                                <asp:Parameter Name="original_order_status" Type="String" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="order_status" Type="String" />
                                <asp:Parameter Name="original_Order_Id" />
                                <asp:Parameter Name="original_userName" />
                                <asp:Parameter Name="original_order_name" />
                                <asp:Parameter Name="original_order_qty" />
                                <asp:Parameter Name="original_order_cost" />
                                <asp:Parameter Name="original_date" />
                                <asp:Parameter Name="original_order_status" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="userName" Type="String" />
                                <asp:Parameter Name="order_name" Type="String" />
                                <asp:Parameter Name="order_qty" Type="String" />
                                <asp:Parameter Name="order_cost" Type="Decimal" />
                                <asp:Parameter DbType="Date" Name="date" />
                                <asp:Parameter Name="order_status" Type="String" />
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
                    <td align="right" height="15">&nbsp;</td>
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
