<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.master" AutoEventWireup="true" CodeFile="AddShowRooms.aspx.cs" Inherits="Administrator_Default" %>

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
            width: 465px;
        }
        .style4
        {
        }
        .style5
        {
            width: 116px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" Runat="Server">
    <table class="style1" 
        style="background-image: url('Images/BackgroundImage.jpg')">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="4" 
                style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold; font-style: normal">
                &nbsp;&nbsp;&nbsp;&nbsp; ADDITION OF SHOWROOM</td>
            <td class="style2" 
                style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold; font-style: normal">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                <asp:Label ID="lblShowName" runat="server" Font-Bold="False" Font-Size="Large" 
                    Text="ShowRoom Name" Width="150px" Font-Names="Calibri"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtShowName" runat="server" Width="250px" Height="23px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="requiredName" runat="server" 
                    ControlToValidate="txtShowName" Display="Dynamic" ErrorMessage="This Field Cannot Be Left Empty" 
                    Font-Bold="True" ForeColor="Red" ValidationGroup="DataEntry"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regularName" runat="server" 
                    ControlToValidate="txtShowName" ErrorMessage="Please Enter Only Alphabets" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z ]+" 
                    ValidationGroup="DataEntry" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4" align="center">
                <asp:Label ID="lblCheckName" runat="server" ForeColor="Red" 
                    Text="lblCheckName" Visible="False" Font-Bold="True"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                <asp:Label ID="lblShowLocation" runat="server" Font-Bold="False" Font-Size="Large" 
                    Height="16px" Text="Location" Width="150px" Font-Names="Calibri"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtShowLocation" runat="server" Width="250px" Height="23px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="requiredLocation" runat="server" 
                    ControlToValidate="txtShowLocation" Display="Dynamic" ErrorMessage="This Field Cannot Be Left Empty" 
                    Font-Bold="True" ForeColor="Red" ValidationGroup="DataEntry"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="lblShowMobile" runat="server" Font-Bold="False" Font-Size="Large" 
                    Text="Mobile Number" Width="128px" Font-Names="Calibri"></asp:Label>
            </td>
            <td style="font-size: large; font-family: Calibri; font-weight: normal; font-style: normal">
                    +91</td>
            <td class="style4">
                <asp:TextBox ID="txtShowMobile" runat="server" Width="250px" MaxLength="10" 
                    Height="23px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="requiredMobile" runat="server" 
                    ControlToValidate="txtShowMobile" Display="Dynamic" ErrorMessage="This Field Cannot Be Left Empty" 
                    Font-Bold="True" ForeColor="Red" ValidationGroup="DataEntry"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regularMobile" runat="server" 
                    ControlToValidate="txtShowMobile" ErrorMessage="Please Enter The Valid Ten Digit Number" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[0-9]{10}" 
                    ValidationGroup="DataEntry" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="Save" 
                    Width="106px" ValidationGroup="DataEntry" Font-Names="Calibri" 
                    Font-Size="Large" Height="42px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4" colspan="2">
                <asp:Label ID="lblDisplay" runat="server" Font-Bold="True" ForeColor="Lime" 
                    Width="231px" Visible="False"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

