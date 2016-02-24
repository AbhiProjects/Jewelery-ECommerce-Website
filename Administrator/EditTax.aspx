<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.master" AutoEventWireup="true" CodeFile="EditTax.aspx.cs" Inherits="Administrator_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 293px;
        }
        .style3
        {
            width: 605px;
        }
        .style4
        {
            width: 332px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" Runat="Server">
    <table class="style1" 
        style="background-image: url('Images/BackgroundImage.jpg')">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2" 
                style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold; font-style: normal">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TAXES</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                <asp:GridView ID="Grid" runat="server" AutoGenerateColumns="False" 
                    onrowcancelingedit="Grid_RowCancelingEdit" onrowdeleting="Grid_RowDeleting" 
                    onrowediting="Grid_RowEditing" onrowupdating="Grid_RowUpdating" 
                    BackColor="White" BackImageUrl="~/Administrator/Images/BackgroundImage.jpg" 
                    BorderColor="#333333" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                    Font-Bold="True" Font-Names="Calibri" Font-Size="Large" ForeColor="#333333" 
                    ShowFooter="True" Height="16px" Width="679px">
                    <Columns>
                        <asp:TemplateField HeaderText="Tax ID">
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:Label ID="lblEditCol1" runat="server" Text='<%#Eval("tax_id") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:Label ID="lblItemCol1" runat="server" Text='<%# Eval("tax_id") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <HeaderStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tax Name">
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:TextBox ID="txtEditCol2" runat="server" Text='<%#Eval("tax_name") %>'></asp:TextBox>
                                            <asp:Label ID="lblDuplicate" runat="server" Text='<%#Eval("tax_name") %>' 
                                                Visible="False"></asp:Label>
                                            <asp:Label ID="lblCheck" runat="server" Font-Bold="True" ForeColor="Red" 
                                                Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:RequiredFieldValidator ID="requiredEditCol2" runat="server" 
                                                ControlToValidate="txtEditCol2" ErrorMessage="This Field Cannot Be Left Empty" 
                                                Font-Bold="True" ForeColor="Red" ValidationGroup="Required" 
                                                Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regularEditCol2" runat="server" 
                                                ControlToValidate="txtEditCol2" Display="Dynamic" 
                                                ErrorMessage="This Field Can Contain Only Alphabets" Font-Bold="True" 
                                                ForeColor="Red" ValidationExpression="[a-zA-Z ]+" ValidationGroup="Required"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="middle">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:Label ID="lblItemCol2" runat="server" Text='<%#Eval("tax_name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <HeaderStyle Width="120px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Value [  %  ]">
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:TextBox ID="txtEditCol3" runat="server" Text='<%#Eval("tax_amount") %>'></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:RequiredFieldValidator ID="requiredEditCol3" runat="server" 
                                                ControlToValidate="txtEditCol3" ErrorMessage="This Field Cannot Be Left Empty" 
                                                Font-Bold="True" ForeColor="Red" ValidationGroup="Required" 
                                                Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regularEditCol3" runat="server" 
                                                ControlToValidate="txtEditCol3" Display="Dynamic" 
                                                ErrorMessage="This Field Can Contain Only Numbers And One Decimal Point" 
                                                Font-Bold="True" ForeColor="Red" ValidationExpression="^[0-9]+(\.[0-9]+)?" 
                                                ValidationGroup="Required"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:Label ID="lblItemCol3" runat="server" Text='<%#Eval("tax_amount") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <HeaderStyle Width="120px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:ImageButton ID="btnUpdate" runat="server" AlternateText="Update" 
                                                CommandName="Update" ImageUrl="~/Administrator/Images/UPDATE.png" 
                                                ToolTip="Update" ValidationGroup="Required" OnClientClick="return confirm('Do You Want To Save Changes ?');" />
                                        </td>
                                        <td align="center" valign="middle">
                                            <asp:ImageButton ID="btnCancel" runat="server" AlternateText="Cancel" 
                                                CommandName="Cancel" ImageUrl="~/Administrator/Images/CANCEL.png" 
                                                ToolTip="Cancel" OnClientClick="return confirm('Are You Certain You Want To Cancel This Update ?');" />
                                        </td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Edit" 
                                                CommandName="Edit" ImageUrl="~/Administrator/Images/EDIT.png" 
                                                ToolTip="Edit" />
                                        </td>
                                        <td align="center" valign="middle">
                                            <asp:ImageButton ID="btnDelete" runat="server" AlternateText="Delete" 
                                                CommandName="Delete" ImageUrl="~/Administrator/Images/DELETE.png" 
                                                ToolTip="Delete" OnClientClick="return confirm('Are You Certain You Want To Delete This Tax Item ?');" />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <HeaderStyle Width="60px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#333333" ForeColor="#333333" Height="45px" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Medium" ForeColor="White" Height="40px" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

