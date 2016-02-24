<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.master" AutoEventWireup="true" CodeFile="AddTax.aspx.cs" Inherits="Administrator_AddTax" %>

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
            width: 230px;
        }
        .style5
        {
            width: 24px;
        }
        .style7
        {
            width: 94px;
        }
        .style8
        {
        }
        .style10
        {
            width: 256px;
        }
        .style11
        {
            width: 253px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" Runat="Server">
    <table class="style1" 
        style="background-image: url('Images/BackgroundImage.jpg')">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style8" colspan="5" 
                style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold; font-style: normal">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                ADDITION OF TAX</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                <asp:Label ID="lblTaxID" runat="server" Font-Size="Large" Text="Tax ID" 
                    Font-Names="Calibri"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="txtTaxId" runat="server" Enabled="False" Height="23px" 
                    Width="250px"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                <asp:Label ID="lblTaxName" runat="server" Font-Size="Large" Text="Tax Name" 
                    Font-Names="Calibri"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="txtTaxName" runat="server" Height="23px" Width="250px"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblCheckTaxName" runat="server" Visible="False" Font-Bold="True" 
                    ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                <asp:Label ID="lblValue" runat="server" Font-Size="Large" Text="Value" 
                    Font-Names="Calibri"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="txtValue" runat="server" Height="23px" Width="135px"></asp:TextBox>
                <asp:Label ID="lblPercentage" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="%"></asp:Label>
                <asp:Label ID="lblCheckValue" runat="server" Visible="False" Font-Bold="True" 
                    ForeColor="Red"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                <asp:Button ID="btnSave" runat="server" Font-Size="Large" Text="Save" 
                    onclick="btnSave_Click" Font-Names="Calibri" Height="42px" Width="106px" />
            </td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style2" colspan="3">
                <asp:Label ID="lblDisplay" runat="server" Font-Bold="True" ForeColor="#00CC00" 
                    Visible="False" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

