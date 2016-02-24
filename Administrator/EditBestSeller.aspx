<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.master" AutoEventWireup="true" CodeFile="EditBestSeller.aspx.cs" Inherits="Administrator_EditBestSeller" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 37px;
        }
        .style3
        {
            width: 432px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" Runat="Server">
    <table class="style1" 
        style="background-image: url('Images/BackgroundImage.jpg')">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold; font-style: normal">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                BEST SELLER</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td align="center">
                <asp:GridView ID="GridBestSeller" runat="server" AutoGenerateColumns="False" 
                    onrowdeleting="GridBestSeller_RowDeleting" 
                    onrowcancelingedit="GridBestSeller_RowCancelingEdit" 
                    onrowediting="GridBestSeller_RowEditing" 
                    onrowupdating="GridBestSeller_RowUpdating" BackColor="White" 
                    BackImageUrl="~/Administrator/Images/BackgroundImage.jpg" BorderColor="#333333" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" Font-Bold="False" 
                    Font-Names="Calibri" Font-Size="Large" ForeColor="Black" Height="470px" 
                    ShowFooter="True" Width="763px">
                    <Columns>
                        <asp:TemplateField HeaderText="Best Seller Images">
                            <EditItemTemplate>
                                <asp:Image ID="imgEditCol21" runat="server" Height="150px" 
                                    imageurl='<%#Eval("Location") %>' Width="200px" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="imgItemCol21" runat="server" imageurl='<%#Eval("Location") %>' 
                                    Height="150px" Width="200px" />
                            </ItemTemplate>
                            <HeaderStyle Width="200px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:TextBox ID="txtEditCol22" runat="server" Text='<%#Eval("Name") %>'></asp:TextBox>
                                            <asp:Label ID="lblDuplicate" runat="server" Text='<%#Eval("Name") %>' 
                                                Visible="False"></asp:Label>
                                            <asp:Label ID="lblCheck" runat="server" Font-Bold="True" ForeColor="Red" 
                                                Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <asp:RequiredFieldValidator ID="requiredEditCol22" runat="server" 
                                                ControlToValidate="txtEditCol22" ErrorMessage="This Field Cannot Be Left Empty" 
                                                Font-Bold="True" ForeColor="Red" ValidationGroup="Required" 
                                                Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regularEditCol22" runat="server" 
                                                ControlToValidate="txtEditCol22" Display="Dynamic" 
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
                                            <asp:Label ID="lblItemCol22" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
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
                                            <asp:TextBox ID="txtEditCol23" runat="server" Text='<%#Eval("Price") %>'></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <asp:RequiredFieldValidator ID="requiredEditCol23" runat="server" 
                                                ControlToValidate="txtEditCol23" ErrorMessage="This Field Cannot Be Left Empty" 
                                                Font-Bold="True" ForeColor="Red" ValidationGroup="Required" 
                                                Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regularEditCol23" runat="server" 
                                                ControlToValidate="txtEditCol23" Display="Dynamic" 
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
                                            <asp:Label ID="lblItemCol23" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" class="style3" valign="middle">
                                            <asp:ImageButton ID="btnUpdate24" runat="server" AlternateText="Update" 
                                                CommandName="Update" ImageUrl="~/Administrator/Images/UPDATE.png" 
                                                OnClientClick="return confirm('Do You Want To Save Changes ?');" 
                                                ToolTip="Update" ValidationGroup="Required" />
                                        </td>
                                        <td align="center" valign="middle">
                                            <asp:ImageButton ID="btnCancel24" runat="server" AlternateText="Cancel" 
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
                                            <asp:ImageButton ID="btnEdit24" runat="server" AlternateText="Edit" 
                                                CommandName="Edit" ImageUrl="~/Administrator/Images/EDIT.png" 
                                                ToolTip="Edit" />
                                        </td>
                                        <td align="center" valign="middle">
                                            <asp:ImageButton ID="btnDelete24" runat="server" AlternateText="Delete" 
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
                    <FooterStyle BackColor="#333333" ForeColor="#333333" Height="45px" />
                    <HeaderStyle BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" 
                        Font-Bold="False" Font-Names="Cambria" Font-Size="Medium" ForeColor="White" 
                        Height="35px" Width="120px" />
                    <PagerStyle BackColor="White" ForeColor="Black" />
                    <RowStyle Font-Bold="True" Font-Names="Calibri" Font-Size="Large" 
                        ForeColor="#333333" />
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
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td align="center">
                <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

