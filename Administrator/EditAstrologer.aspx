<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.master" AutoEventWireup="true" CodeFile="EditAstrologer.aspx.cs" Inherits="Administrator_EditAstrologer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 31px;
        }
        .style3
        {
            width: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" Runat="Server">
    <table class="style1" 
        style="background-image: url('Images/BackgroundImage.jpg')">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold; font-style: normal">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ASTROLOGER</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td align="center">
                <asp:GridView ID="Grid" runat="server" AutoGenerateColumns="False" 
                    onrowcancelingedit="Grid_RowCancelingEdit" onrowdeleting="Grid_RowDeleting" 
                    onrowediting="Grid_RowEditing" onrowupdating="Grid_RowUpdating" BorderColor="#333333" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="1" 
                    Font-Names="Cambria" Font-Size="Large" ForeColor="Black" Height="50px" 
                    ShowFooter="True" Width="908px" 
                    onselectedindexchanged="Grid_SelectedIndexChanged" BackColor="White" 
                    BackImageUrl="~/Administrator/Images/BackgroundImage.jpg">
                    <AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns>
                        <asp:TemplateField HeaderText="Name">
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:Label ID="lblEditCol1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:Label ID="lblItemCol1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Location">
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:TextBox ID="txtEditCol2" runat="server" TabIndex="4" 
                                                Text='<%#Eval("Location") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="requiredEditCol2" runat="server" 
                                                ControlToValidate="txtEditCol2" Display="Dynamic" 
                                                ErrorMessage="This Field Cannot Be Left Empty" Font-Bold="True" ForeColor="Red" 
                                                ValidationGroup="Required"></asp:RequiredFieldValidator>
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
                                            <asp:Label ID="lblItemCol2" runat="server" Text='<%# Eval("Location") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <HeaderStyle Width="120px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Days">
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:TextBox ID="txtEditCol3" runat="server" TabIndex="1" 
                                                Text='<%#Eval("Days") %>'></asp:TextBox>
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
                                                ErrorMessage="This Field Can Contain Only Alphabets And Hyphen" 
                                                Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z- ]+" 
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
                                            <asp:Label ID="lblItemCol3" runat="server" 
                                                Text='<%# Eval("Days") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Time">
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:TextBox ID="txtEditCol4" runat="server" TabIndex="1" 
                                                Text='<%#Eval("Time") %>'></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:RequiredFieldValidator ID="requiredEditCol4" runat="server" 
                                                ControlToValidate="txtEditCol4" ErrorMessage="This Field Cannot Be Left Empty" 
                                                Font-Bold="True" ForeColor="Red" ValidationGroup="Required" 
                                                Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regularEditCol4" runat="server" 
                                                ControlToValidate="txtEditCol4" Display="Dynamic" 
                                                ErrorMessage="This Field Can Contain Time In 12Hrs Format" Font-Bold="True" 
                                                ForeColor="Red" 
                                                ValidationExpression="([0][0-9])|([1][0-2]):[0-5][0-9][:b]*(AM|PM|am|pm|Am|Pm)" 
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
                                            <asp:Label ID="lblItemCol4" runat="server" 
                                                Text='<%# Eval("Time") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile Number">
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblNumber" runat="server" Text="+91"></asp:Label>
                                        </td>
                                        <td align="center" valign="middle">
                                            <asp:TextBox ID="txtEditCol5" runat="server" TabIndex="5" 
                                                Text='<%#Eval("Phone") %>' MaxLength="10"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center" valign="middle">
                                            <asp:RequiredFieldValidator ID="requiredEditCol5" runat="server" 
                                                ControlToValidate="txtEditCol5" ErrorMessage="This Field Cannot Be Left Empty" 
                                                Font-Bold="True" ForeColor="Red" ValidationGroup="Required" 
                                                Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regularEditCol5" runat="server" 
                                                ControlToValidate="txtEditCol5" Display="Dynamic" 
                                                ErrorMessage="This Field Can Contain Only 10 Digits" Font-Bold="True" 
                                                ForeColor="Red" ValidationExpression="[0-9]{10}" ValidationGroup="Required"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td class="style2">
                                            <asp:Label ID="lblNumber" runat="server" Text="+91"></asp:Label>
                                        </td>
                                        <td align="center" valign="middle">
                                            <asp:Label ID="lblItemCol5" runat="server" Text='<%#Eval("Phone") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <HeaderStyle Width="110px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fees">
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:TextBox ID="txtEditCol6" runat="server" Text='<%#Eval("Fees") %>'></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:RequiredFieldValidator ID="requiredEditCol6" runat="server" 
                                                ControlToValidate="txtEditCol6" ErrorMessage="This Field Cannot Be Left Empty" 
                                                Font-Bold="True" ForeColor="Red" ValidationGroup="Required" 
                                                Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regularEditCol6" runat="server" 
                                                ControlToValidate="txtEditCol6" Display="Dynamic" 
                                                ErrorMessage="Please Enter A Valid Fees Amount" Font-Bold="True" 
                                                ForeColor="Red" ValidationExpression="^[0-9]+(\.[0-9]+)?" 
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
                                            <asp:Label ID="lblItemCol6" runat="server" Text='<%# Eval("Fees") %>'></asp:Label>
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
                                            <asp:ImageButton ID="btnUpdate" runat="server" AlternateText="Update" 
                                                CommandName="Update" ImageUrl="~/Administrator/Images/UPDATE.png" 
                                                OnClientClick="return confirm('Do You Want To Save Changes ?');" 
                                                ToolTip="Update" ValidationGroup="Required" />
                                        </td>
                                        <td align="center" valign="middle">
                                            <asp:ImageButton ID="btnCancel" runat="server" AlternateText="Cancel" 
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
                                            <asp:ImageButton ID="btnEdit" runat="server" AlternateText="Edit" 
                                                CommandName="Edit" ImageUrl="~/Administrator/Images/EDIT.png" 
                                                ToolTip="Edit" />
                                        </td>
                                        <td align="center" valign="middle">
                                            <asp:ImageButton ID="btnDelete" runat="server" AlternateText="Delete" 
                                                CommandName="Delete" ImageUrl="~/Administrator/Images/DELETE.png" 
                                                OnClientClick="return confirm('Are You Certain You Want To Delete The Details Of The Astrologer ?');" 
                                                ToolTip="Delete" />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <HeaderStyle Width="200px" />
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#333333" ForeColor="#333333" Height="45px" 
                        HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" 
                        Font-Bold="False" Font-Names="Cambria" Font-Size="Medium" ForeColor="White" 
                        Height="35px" Width="140px" Wrap="True" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <PagerStyle BackColor="White" BorderStyle="Solid" ForeColor="Black" 
                        HorizontalAlign="Center" VerticalAlign="Middle" />
                    <RowStyle Font-Bold="True" Font-Names="Calibri" Font-Size="Large" 
                        ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" 
                        HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" BorderColor="#66FF99" 
                        HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SortedDescendingHeaderStyle BackColor="#242121" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td align="center">
                <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

