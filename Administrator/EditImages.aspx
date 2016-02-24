<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.master" AutoEventWireup="true" CodeFile="EditImages.aspx.cs" Inherits="Administrator_EditIamges" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style3
        {
            width: 487px;
        }
        .style4
        {
            width: 474px;
        }
        .style5
        {
            width: 202px;
        }
        .style6
        {
            width: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" Runat="Server">
    <table class="style1" 
        style="background-image: url('Images/BackgroundImage.jpg')">
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" 
                
                style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold; font-style: normal">
                &nbsp;</td>
            <td class="style2" colspan="3" 
                
                style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold; font-style: normal">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IMAGES</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                <asp:GridView ID="GridBanner" runat="server" AutoGenerateColumns="False" 
                    onrowdeleting="GridBanner_RowDeleting" BackColor="White" 
                    BackImageUrl="~/Administrator/Images/BackgroundImage.jpg" BorderColor="#333333" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" Font-Bold="False" 
                    Font-Names="Calibri" Font-Size="Large" ForeColor="#333333" 
                    GridLines="Horizontal" ShowFooter="True" Width="471px">
                    <Columns>
                        <asp:TemplateField HeaderText="Banner Images">
                            <ItemTemplate>
                                <asp:Image ID="imgItemCol11" runat="server" imageurl='<%#Eval("Location") %>' 
                                    Height="150px" Width="200px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="btnDelete12" runat="server" AlternateText="Delete" 
                                    CommandName="Delete" ImageUrl="~/Administrator/Images/DELETE.png" 
                                    OnClientClick="return confirm('Are You Certain You Want To Delete This Image ?');" 
                                    ToolTip="Delete" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#333333" ForeColor="#333333" Height="45px" />
                    <HeaderStyle BackColor="#333333" Font-Bold="False" Font-Names="Calibri" 
                        Font-Size="Medium" ForeColor="White" Height="35px" Width="30px" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                <asp:GridView ID="GridBrand" runat="server" AutoGenerateColumns="False" 
                    onrowdeleting="GridBrand_RowDeleting" BackColor="White" 
                    BackImageUrl="~/Administrator/Images/BackgroundImage.jpg" BorderColor="#333333" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" 
                    GridLines="Horizontal" ShowFooter="True" Width="474px">
                    <Columns>
                        <asp:TemplateField HeaderText="Brand Images">
                            <ItemTemplate>
                                <asp:Image ID="imgItemCol31" runat="server" imageurl='<%#Eval("Location") %>' 
                                    Height="150px" Width="200px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="btnDelete32" runat="server" AlternateText="Delete" 
                                    CommandName="Delete" ImageUrl="~/Administrator/Images/DELETE.png" 
                                    OnClientClick="return confirm('Are You Certain You Want To Delete This Image ?');" 
                                    ToolTip="Delete" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#333333" ForeColor="#333333" Height="45px" />
                    <HeaderStyle BackColor="#333333" BorderColor="#333333" Font-Bold="True" 
                        Font-Names="Calibri" Font-Size="Medium" ForeColor="White" Height="35px" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

