<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.master" AutoEventWireup="true" CodeFile="EditCat.aspx.cs" Inherits="Administrator_EditCat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 42px;
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CATEGORIES</td>
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
                <asp:GridView ID="Grid" runat="server" AutoGenerateColumns="False" 
                    onrowcancelingedit="Grid_RowCancelingEdit" onrowdeleting="Grid_RowDeleting" 
                    onrowediting="Grid_RowEditing" onrowupdating="Grid_RowUpdating" 
                    BackColor="White" BackImageUrl="~/Administrator/Images/BackgroundImage.jpg" 
                    BorderColor="#333333" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                    Font-Names="Calibri" Font-Size="Medium" ForeColor="#333333" Height="500px" 
                    ShowFooter="True" Width="694px" HorizontalAlign="Center" 
                    >
                    <Columns>
                        <asp:TemplateField HeaderText="Category ID">
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:Label ID="lblEditCol1" runat="server" Text='<%#Eval("category_id") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:Label ID="lblItemCol1" runat="server" Text='<%#Eval("category_id") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Category Name">
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:TextBox ID="txtEditCol2" runat="server" Text='<%#Eval("category_name") %>'></asp:TextBox>
                                            <asp:Label ID="lblDuplicate" runat="server" Visible="False" Text='<%#Eval("category_name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:Label ID="lblCheck" runat="server" Font-Bold="True" ForeColor="Red" 
                                                Text="This Name Already Exists" Visible="False"></asp:Label>
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
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:Label ID="lblItemCol2" runat="server" Text='<%#Eval("category_name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Rate">
                            <EditItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center" valign="middle">
                                            <asp:TextBox ID="txtEditCol3" runat="server" Text='<%#Eval("price") %>'></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
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
                                </table>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td align="center">
                                            <asp:Label ID="lblItemCol3" runat="server" Text='<%# Eval("price") %>'></asp:Label>
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
                                                ToolTip="Delete" OnClientClick="return confirm('Are You Certain You Want To Delete This Sub Category ?');"/>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <HeaderStyle Width="200px" />
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle Font-Bold="True" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" 
                        ForeColor="#333333" Height="45px" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Medium" ForeColor="White" Height="40px" Width="130px" 
                        HorizontalAlign="Center" VerticalAlign="Middle" />
                    <PagerStyle BackColor="White" Font-Bold="False" Font-Names="Calibri" 
                        ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <RowStyle Font-Bold="True" Font-Names="Calibri" Font-Size="Large" 
                        HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" 
                        HorizontalAlign="Center" VerticalAlign="Middle" />
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
            <td __designer:mapid="84" class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td __designer:mapid="86" class="style2">
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
