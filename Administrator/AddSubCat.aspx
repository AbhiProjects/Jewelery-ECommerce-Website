<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.master" AutoEventWireup="true" CodeFile="AddSubCat.aspx.cs" Inherits="Administrator_AddSubCat" %>

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
            width: 477px;
        }
        .style4
        {
            width: 477px;
            height: 23px;
        }
        .style5
        {
            width: 154px;
            height: 23px;
        }
        .style6
        {
            height: 23px;
        }
        .style7
        {
        }
        .style8
        {
            width: 255px;
            height: 23px;
        }
        .style9
        {
            width: 128px;
        }
        .style10
        {
            height: 23px;
            width: 128px;
        }
        .style11
        {
            width: 477px;
            height: 12px;
        }
        .style12
        {
            width: 154px;
            height: 12px;
        }
        .style13
        {
            width: 255px;
            height: 12px;
        }
        .style14
        {
            width: 128px;
            height: 12px;
        }
        .style15
        {
            height: 12px;
        }
        .style16
        {
            width: 477px;
            height: 25px;
        }
        .style17
        {
            width: 154px;
            height: 25px;
        }
        .style18
        {
            width: 255px;
            height: 25px;
        }
        .style19
        {
            width: 128px;
            height: 25px;
        }
        .style20
        {
            height: 25px;
        }
        .style21
        {
            width: 154px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" Runat="Server">
    <table class="style1" 
        style="background-image: url('Images/BackgroundImage.jpg')">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="3" 
                style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold; font-style: normal">
                &nbsp;ADDITION OF SUBCATEGORY</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style5">
                <asp:Label ID="lblCatName" runat="server" Font-Size="Large" 
                    Text="Category Name: " Font-Names="Calibri"></asp:Label>
            </td>
            <td class="style8">
                <asp:DropDownList ID="ddlCatName" runat="server" AutoPostBack="True" 
                    Height="23px" Width="250px" 
                    onselectedindexchanged="ddlCatName_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style10">
                <asp:Label ID="lblCheckCat" runat="server" Font-Bold="True" ForeColor="Red" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                <span class="t-link">
                <asp:Label ID="lblSubCatId" runat="server" Font-Size="Large" 
                    Text="Sub-Category ID: " Font-Names="Calibri"></asp:Label>
            </td>
            <td class="style7">
                <span class="t-link">
                <asp:TextBox ID="txtSubCatId" runat="server" Height="23px" Width="250px" 
                    Enabled="False"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:Label ID="lblCheckSubCatId" runat="server" Font-Bold="True" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                </td>
            <td class="style12">
                </td>
            <td class="style13">
                </td>
            <td class="style14">
                </td>
            <td class="style15">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                <span class="t-link">
                <asp:Label ID="lblSubCatName" runat="server" Font-Size="Large" 
                    Text="Sub-Category Name: " Font-Names="Calibri"></asp:Label>
            </td>
            <td class="style7">
                <span class="t-link">
                <asp:TextBox ID="txtSubCatName" runat="server" Height="23px" Width="250px"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:Label ID="lblCheckSubCatName" runat="server" Font-Bold="True" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                <asp:Button ID="btnSave" runat="server" Font-Size="Large" Text="Save" 
                    onclick="btnSubCatSave_Click" Width="106px" Font-Names="Calibri" 
                    Height="42px" />
            </td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                </td>
            <td class="style17">
                </td>
            <td class="style18">
                </td>
            <td class="style19">
                </td>
            <td class="style20">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7" colspan="3">
                <asp:Label ID="lblDisplay" runat="server" Font-Bold="True" ForeColor="Lime" 
                    Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>