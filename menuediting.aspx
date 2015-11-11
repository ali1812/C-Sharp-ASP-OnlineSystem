<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menuediting.aspx.cs" Inherits="menuediting" %>
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
        <td height="20">`<asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
          </td>
      </tr>     
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0" 
            style="height: 1012px">
      <tr>
        <td width="10"></td>
        <td width="589" class="white_bg">
            <div style="height: 1037px; width: 502px; margin-left: 25px; margin-top: 0px; background-color: #FFFFFF;">
             <asp:ListView ID="ListView1" runat="server" DataKeyNames="ItemId" 
                            DataSourceID="SqlDataSource1" GroupItemCount="4" 
                            InsertItemPosition="LastItem" 
                            style="text-align: center; margin-bottom: 0px;"  >
                            <EmptyItemTemplate>
                                <td id="Td1" runat="server" />
                                </EmptyItemTemplate>
                                <ItemTemplate>
                                    <td id="Td2" runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <table>
                                    <tr>
                                    <td> 
                                        <asp:Image ID="Image3" runat="server"  ImageUrl='<%# Eval("ImagePath") %>' Width="132px" Height="132px" /></td>
                                        </tr>
                                        <tr>
                                        <td style="font-weight: bold; font-family: 'Times New Roman', Times, serif" >
                                       
                                        <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                                        </td>
                                        </tr>
                                        
                                        <tr>
                                        <td style="font-weight: bold; font-family: 'Times New Roman', Times, serif">
                                        Item Id:
                                        <asp:Label ID="ItemIdLabel" runat="server" Text='<%# Eval("ItemId") %>' />
                                        </td>
                                     </tr>
                                     <tr>
                                     <td style="font-weight: bold; font-family: 'Times New Roman', Times, serif">
                                        price:
                                        <asp:Label ID="price_MLabel" runat="server" Text='<%# Eval("price_M") %>' />
                                        </td>
                                        </tr>
                                        
                                        <tr>
                                        <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                            Text="Delete" />
                                        
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                      </td>
                                        </tr>
                                        </table>
                                    </td>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <td id="Td3" runat="server" style="background-color:#FFF8DC;">
                                       <table>
                                    <tr>
                                    <td> 
                                        <asp:Image ID="Image3" runat="server"  ImageUrl='<%# Eval("ImagePath") %>' Width="132px" Height="132px"/></td>
                                        </tr>
                                        <tr>
                                        <td style="font-weight: bold; font-family: 'Times New Roman', Times, serif" >
                                       
                                        <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                                        </td>
                                        </tr>
                                        <tr>
                                        <td style="font-weight: bold; font-family: 'Times New Roman', Times, serif">
                                        Item Id:
                                        <asp:Label ID="ItemIdLabel" runat="server" Text='<%# Eval("ItemId") %>' />
                                        </td>
                                     </tr>
                                     <tr>
                                     <td style="font-weight: bold; font-family: 'Times New Roman', Times, serif">
                                        price:
                                        <asp:Label ID="price_MLabel" runat="server" Text='<%# Eval("price_M") %>' />
                                        </td>
                                        </tr>
                                        
                                        
                                        <tr><td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                            Text="Delete" />
                                        
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                        </td>
                                       </tr>
                                        </table>
                                    </td>
                                </AlternatingItemTemplate>
                                <EmptyDataTemplate>
                                    <table id="Table1" runat="server" 
                                        style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                        <tr>
                                            <td>
                                                No data was returned.</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                   
                                    <td id="Td4" runat="server" style="">
                                    <table>
                                    <tr>
                                    <td>
                                        price:
                                        </td>
                                       </tr>
                                       <tr>
                                       <td>
                                        <asp:TextBox ID="price_MTextBox" runat="server" Text='<%# Bind("price_M") %>' Width="120px" />
                                        </td>
                                       </tr>
                                       <tr>
                                       <td>
                                        ItemId:
                                        </td>
                                        </tr>
                                        <tr>
                                        <td>
                                        <asp:TextBox ID="ItemIdTextBox" runat="server" Text='<%# Bind("ItemId") %>' Width="120px" />
                                        </td>
                                     </tr>
                                     <tr>
                                     <td>
                                        ItemName:
                                        </td>
                                        </tr>
                                        <tr><td>
                                        <asp:TextBox ID="ItemNameTextBox" runat="server" 
                                            Text='<%# Bind("ItemName") %>' Width="120px" />
                                            </td>
                                    </tr>
                                    <tr><td>
                                        ImagePath:
                                        </td>
                                        </tr>
                                        <tr> <td>
                                        <asp:TextBox ID="ImagePathTextBox" runat="server" 
                                            Text='<%# Bind("ImagePath") %>' Width="120px" />
                                            </td>
                                   </tr>
                                   <tr> <td>
                                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                            Text="Insert" />
                                    
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                            Text="Clear" />
                                            </td>
                                        </tr>
                                        </table>
                                    </td>
                                </InsertItemTemplate>
                                <LayoutTemplate>
                                    <table id="Table2" runat="server">
                                        <tr id="Tr1" runat="server">
                                            <td id="Td5" runat="server">
                                                <table ID="groupPlaceholderContainer" runat="server" border="1" 
                                                    style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                    <tr ID="groupPlaceholder" runat="server">
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr id="Tr2" runat="server">
                                            <td id="Td6" runat="server" 
                                                style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                                <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                                    <Fields>
                                                   
                                                        <asp:NumericPagerField />
                                                       
                                                    </Fields>
                                                </asp:DataPager>
                                            </td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                                <EditItemTemplate>
                                    <td id="Td7" runat="server" style="background-color:#008A8C;color: #FFFFFF;">
                                        ItemId:
                                        <asp:Label ID="ItemIdLabel1" runat="server" Text='<%# Eval("ItemId") %>' />
                                        <br />
                                        price:
                                        <asp:TextBox ID="price_MTextBox" runat="server" Text='<%# Bind("price_M") %>' />
                                        <br />
                                        
                                        ItemName:
                                        <asp:TextBox ID="ItemNameTextBox" runat="server" 
                                            Text='<%# Bind("ItemName") %>' />
                                        <br />
                                        ImagePath:
                                        <asp:TextBox ID="ImagePathTextBox" runat="server" 
                                            Text='<%# Bind("ImagePath") %>' />
                                        <br />
                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                            Text="Update" />
                                        <br />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                            Text="Cancel" />
                                        <br />
                                    </td>
                                </EditItemTemplate>
                                <GroupTemplate>
                                    <tr ID="itemPlaceholderContainer" runat="server">
                                        <td ID="itemPlaceholder" runat="server">
                                        </td>
                                    </tr>
                                </GroupTemplate>
                                <SelectedItemTemplate>
                                    <td id="Td8" runat="server" 
                                        style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                        price:
                                        <asp:Label ID="price_MLabel" runat="server" Text='<%# Eval("price_M") %>' />
                                        <br />
                                        ItemId:
                                        <asp:Label ID="ItemIdLabel" runat="server" Text='<%# Eval("ItemId") %>' />
                                        <br />
                                        ItemName:
                                        <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                                        <br />
                                        ImagePath:
                                        <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Eval("ImagePath") %>' />
                                        <br />
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                                            Text="Delete" />
                                        <br />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                        <br />
                                    </td>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [menu] WHERE [ItemId] = @original_ItemId AND [price_M] = @original_price_M AND [ItemName] = @original_ItemName AND [ImagePath] = @original_ImagePath" 
                                InsertCommand="INSERT INTO [menu] ([price_M], [ItemId], [ItemName], [ImagePath]) VALUES (@price_M, @ItemId, @ItemName, @ImagePath)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [price_M], [ItemId], [ItemName], [ImagePath] FROM [menu]" 
                                UpdateCommand="UPDATE [menu] SET [price_M] = @price_M, [ItemName] = @ItemName, [ImagePath] = @ImagePath WHERE [ItemId] = @original_ItemId AND [price_M] = @original_price_M AND [ItemName] = @original_ItemName AND [ImagePath] = @original_ImagePath">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_ItemId" Type="Int32" />
                                    <asp:Parameter Name="original_price_M" Type="Decimal" />
                                    <asp:Parameter Name="original_ItemName" Type="String" />
                                    <asp:Parameter Name="original_ImagePath" Type="String" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="price_M" Type="Decimal" />
                                    <asp:Parameter Name="ItemName" Type="String" />
                                    <asp:Parameter Name="ImagePath" Type="String" />
                                    <asp:Parameter Name="original_ItemId" Type="Int32" />
                                    <asp:Parameter Name="original_price_M" Type="Decimal" />
                                    <asp:Parameter Name="original_ItemName" Type="String" />
                                    <asp:Parameter Name="original_ImagePath" Type="String" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="price_M" Type="Decimal" />
                                    <asp:Parameter Name="ItemId" Type="Int32" />
                                    <asp:Parameter Name="ItemName" Type="String" />
                                    <asp:Parameter Name="ImagePath" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
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
&nbsp;Melaka, Ayer Keroh
Bukit Beruang, 
                        <br />
&nbsp;Taman Kerjasama

 <br />
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
