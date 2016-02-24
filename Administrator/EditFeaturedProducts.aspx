<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.master" AutoEventWireup="true" CodeFile="EditFeaturedProducts.aspx.cs" Inherits="Administrator_EditFeaturedProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" Runat="Server">
    <table class="style1" 
        style="background-image: url('Images/BackgroundImage.jpg')">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold; font-style: normal">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FEATURED PRODUCTS</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                <asp:GridView ID="GridFeaturedProducts" runat="server" AutoGenerateColumns="False" 
                    onrowdeleting="GridFeaturedProducts_RowDeleting" 
                    onrowcancelingedit="GridFeaturedProducts_RowCancelingEdit" 
                    onrowediting="GridFeaturedProducts_RowEditing" 
                    onrowupdating="GridFeaturedProducts_RowUpdating" BackColor="White" 
                    BackImageUrl="~/Administrator/Images/BackgroundImage.jpg" BorderColor="#333333" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" Font-Bold="True" 
                    Font-Names="Calibri" Font-Size="Large" ForeColor="#333333" ShowFooter="True" 
                    Width="685px">
                    <Columns>
                        <asp:TemplateField HeaderText="Featured Products Images">
                            <EditItemTemplate>
                                <asp:Image ID="imgEditCol41" runat="server" Height="150px" 
                                    imageurl='<%#Eval("Location") %>' Width="200px" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="imgItemCol41" runat="server" imageurl='<%#Eval("Location") %>' 
                                    Height="150px" Width="200px" />
                            </ItemTemplate>
                            <HeaderStyle Width="230px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:TextBox ID="txtEditCol42" runat="server" Text='<%#Eval("Name") %>'></asp:TextBox>
                                            <asp:Label ID="lblDuplicate" runat="server" Text='<%#Eval("Name") %>' 
                                                Visible="False"></asp:Label>
                                            <asp:Label ID="lblCheck" runat="server" Font-Bold="True" ForeColor="Red" 
                                                Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:RequiredFieldValidator ID="requiredEditCol42" runat="server" 
                                                ControlToValidate="txtEditCol42" ErrorMessage="This Field Cannot Be Left Empty" 
                                                Font-Bold="True" ForeColor="Red" ValidationGroup="Required" 
                                                Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regularEditCol42" runat="server" 
                                                ControlToValidate="txtEditCol42" Display="Dynamic" 
                                                ErrorMessage="This Field Can Contain Only Alphabets" Font-Bold="True" 
                                                ForeColor="Red" ValidationExpression="[a-zA-Z ]+" ValidationGroup="Required"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:Label ID="lblItemCol42" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:TextBox ID="txtEditCol43" runat="server" Text='<%#Eval("Price") %>'></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:RequiredFieldValidator ID="requiredEditCol43" runat="server" 
                                                ControlToValidate="txtEditCol43" ErrorMessage="This Field Cannot Be Left Empty" 
                                                Font-Bold="True" ForeColor="Red" ValidationGroup="Required" 
                                                Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regularEditCol43" runat="server" 
                                                ControlToValidate="txtEditCol43" Display="Dynamic" 
                                                ErrorMessage="This Field Can Contain Only Numbers And One Decimal Point" 
                                                Font-Bold="True" ForeColor="Red" ValidationExpression="^[0-9]+(\.[0-9]+)?" 
                                                ValidationGroup="Required"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:Label ID="lblItemCol43" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:ImageButton ID="btnUpdate44" runat="server" AlternateText="Update" 
                                                CommandName="Update" ImageUrl="~/Administrator/Images/UPDATE.png" 
                                                OnClientClick="return confirm('Do You Want To Save Changes ?');" 
                                                ToolTip="Update" ValidationGroup="Required" />
                                        </td>
                                        <td align="center" valign="middle">
                                            <asp:ImageButton ID="btnCancel44" runat="server" AlternateText="Cancel" 
                                                CommandName="Cancel" ImageUrl="~/Administrator/Images/CANCEL.png" 
                                                OnClientClick="return confirm('Are You Certain You Want To Cancel This Update ?');" 
                                                ToolTip="Cancel" />
                                        </td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:ImageButton ID="btnEdit44" runat="server" AlternateText="Edit" 
                                                CommandName="Edit" ImageUrl="~/Administrator/Images/EDIT.png" 
                                                ToolTip="Edit" />
                                        </td>
                                        <td align="center" valign="middle">
                                            <asp:ImageButton ID="btnDelete44" runat="server" AlternateText="Delete" 
                                                CommandName="Delete" ImageUrl="~/Administrator/Images/DELETE.png" 
                                                OnClientClick="return confirm('Are You Certain You Want To Delete This Image ?');" 
                                                ToolTip="Delete" />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <HeaderStyle Width="200px" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#333333" BorderColor="#333333" ForeColor="#333333" 
                        Height="45px" />
                    <HeaderStyle BackColor="#333333" BorderColor="#333333" Font-Bold="False" 
                        Font-Names="Calibri" Font-Size="Medium" ForeColor="White" Height="35px" 
                        Width="130px" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center">
                <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Names="Calibri" 
                    Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

