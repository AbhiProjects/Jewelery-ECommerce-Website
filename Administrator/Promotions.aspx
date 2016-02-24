<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.master" AutoEventWireup="true" CodeFile="Promotions.aspx.cs" Inherits="Administrator_Promotions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: xx-large;
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
            <td align="center" class="style2" colspan="3" 
                style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold; font-style: normal">
                PROMOTIONS</td>
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
                <asp:GridView ID="Grid" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BackImageUrl="~/Administrator/Images/BackgroundImage.jpg" 
                    BorderColor="#333333" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                    Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#333333" 
                    ShowFooter="True" Width="621px" onrowcommand="Grid_RowCommand" 
                    onrowdeleting="Grid_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="Promo Code">
                            <FooterTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:TextBox ID="txtFottCol1" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:RequiredFieldValidator ID="requiredFottCol1" runat="server" 
                                                ControlToValidate="txtFottCol1" ErrorMessage="This Field Cannot Be Empty" 
                                                Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regularFottCol1" runat="server" 
                                                ControlToValidate="txtFottCol1" 
                                                ErrorMessage="This Field Can Contain Alphabets And Integers Only" 
                                                Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z0-9 ]+" 
                                                Display="Dynamic"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                </table>
                            </FooterTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:Label ID="lblItemCol1" runat="server" Text='<%# Eval("Code") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <FooterTemplate>
                                <table class="style1" align="center">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:TextBox ID="txtFottCol2" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:RequiredFieldValidator ID="requiredFottCol2" runat="server" 
                                                ControlToValidate="txtFottCol2" ErrorMessage="This Field Cannot Be Empty" 
                                                Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regularFottCol2" runat="server" 
                                                ControlToValidate="txtFottCol2" 
                                                ErrorMessage="This Field Can Contain Alphabets Only" Font-Bold="True" 
                                                ForeColor="Red" ValidationExpression="[a-zA-Z ]+" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                </table>
                            </FooterTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:Label ID="lblItemCol2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Offer">
                            <FooterTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:TextBox ID="txtFottCol3" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:RequiredFieldValidator ID="requiredFottCol3" runat="server" 
                                                ControlToValidate="txtFottCol3" ErrorMessage="This Field Cannot Be Empty" 
                                                Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regularFottCol3" runat="server" 
                                                ControlToValidate="txtFottCol3" 
                                                ErrorMessage="This Field Can Contain Alphabets And Integers Only" Font-Bold="True" 
                                                ForeColor="Red" ValidationExpression="[a-zA-Z0-9 ]+" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                </table>
                            </FooterTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:Label ID="lblItemCol3" runat="server" Text='<%# Eval("Offer") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <FooterTemplate>
                                <asp:ImageButton ID="btnAdd" runat="server" AlternateText="Add" 
                                    CommandName="Add" ImageUrl="~/Administrator/Images/ADD.png" 
                                    ToolTip="Add" />
                            </FooterTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:ImageButton ID="btnDelete" runat="server" AlternateText="Delete" 
                                                CommandName="Delete" ImageUrl="~/Administrator/Images/DELETE.png" 
                                                OnClientClick="return confirm('Are You Certain You Want To Delete This ShowRoom ?');" 
                                                ToolTip="Delete" />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <HeaderStyle Width="200px" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#F7F7F7" BorderColor="#333333" ForeColor="#333333" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Medium" ForeColor="White" Height="35px" />
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
                <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
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

