<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.master" AutoEventWireup="true" CodeFile="AddAstrologer.aspx.cs" Inherits="Administrator_AddAstrologer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 275px;
        }
        .style4
        {
        }
        .style5
        {
            width: 479px;
            height: 17px;
        }
        .style6
        {
            height: 17px;
        }
        .style8
        {
            height: 17px;
        }
        .style10
        {
            width: 126px;
        }
        .style11
        {
            width: 23px;
        }
        .style12
        {
            width: 124px;
        }
        .style13
        {
            width: 479px;
        }
        .style14
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" Runat="Server">
    <table class="style1" 
        style="background-image: url('Images/BackgroundImage.jpg')">
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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
            <td class="style4" colspan="5" 
                style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold; font-style: normal">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADDITION OF ASTROLOGER</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                <asp:Label ID="lblName" runat="server" Text="Name" Font-Names="Calibri" 
                    Font-Size="Large"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtName" runat="server" Height="23px" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtName" Display="Dynamic" ErrorMessage="This Field Cannot Be Empty" 
                    ForeColor="#CC0000" Font-Bold="True" ValidationGroup="DataEntry"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtName" Display="Dynamic" 
                    ErrorMessage="Only Alphabets Are Allowed" ForeColor="#CC0000" 
                    ValidationExpression="[a-zA-Z ]+" Font-Bold="True" 
                    ValidationGroup="DataEntry"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="lblCheckName" runat="server" ForeColor="#CC0000" 
                    Text="lblCheckName" Visible="False" Font-Bold="True"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                <asp:Label ID="lblLocation" runat="server" Text="Location" Font-Names="Calibri" 
                    Font-Size="Large"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtLocation" runat="server" Height="23px" Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtLocation" Display="Dynamic" ErrorMessage="This Field Cannot Be Empty" 
                    ForeColor="#CC0000" Font-Bold="True" ValidationGroup="DataEntry"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                <asp:Label ID="lblDays" runat="server" Text="Days" Font-Names="Calibri" 
                    Font-Size="Large"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtDays" runat="server" Height="23px" Width="161px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtDays" Display="Dynamic" ErrorMessage="This Field Cannot Be Empty" 
                    ForeColor="#CC0000" Font-Bold="True" ValidationGroup="DataEntry"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtDays" Display="Dynamic" 
                    ErrorMessage="This Field Can Contain Only Alphabets And Hyphen" ForeColor="#CC0000" 
                    ValidationExpression="[a-zA-Z- ]+" Font-Bold="True" 
                    ValidationGroup="DataEntry"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                <asp:Label ID="lblTime" runat="server" Text="Time" Font-Names="Calibri" 
                    Font-Size="Large"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtTime" runat="server" Height="23px" Width="138px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtTime" Display="Dynamic" ErrorMessage="This Field Cannot Be Empty" 
                    ForeColor="#CC0000" Font-Bold="True" ValidationGroup="DataEntry"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    Display="Dynamic" ErrorMessage="Please Enter A Valid Time" ForeColor="#CC0000" 
                    
                    ValidationExpression="([0][0-9])|([1][0-2]):[0-5][0-9][:b]*(AM|PM|am|pm|Am|Pm)" 
                    ControlToValidate="txtTime" Font-Bold="True" ValidationGroup="DataEntry"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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
            <td class="style13">
                &nbsp;</td>
            <td class="style12">
                <asp:Label ID="lblPhone" runat="server" Text="Mobile Number" 
                    Font-Names="Calibri" Font-Size="Large"></asp:Label>
            </td>
            <td class="style11" 
                style="font-family: Arial, Helvetica, sans-serif; font-size: large;">
                +91</td>
            <td class="style3">
                <asp:TextBox ID="txtMobile" runat="server" MaxLength="10" Height="23px" 
                    Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtMobile" Display="Dynamic" ErrorMessage="This Field Cannot Be Empty" 
                    ForeColor="#CC0000" Font-Bold="True" ValidationGroup="DataEntry"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    Display="Dynamic" ErrorMessage="Please Enter A Ten Digit Number" ForeColor="#CC0000" 
                    ValidationExpression="[0-9]{10}" ControlToValidate="txtMobile" 
                    Font-Bold="True" ValidationGroup="DataEntry"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                <asp:Label ID="lblFees" runat="server" Text="Fees" Font-Names="Calibri" 
                    Font-Size="Large"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtFees" runat="server" Height="23px" Width="138px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtFees" Display="Dynamic" ErrorMessage="This Field Cannot Be Empty" 
                    ForeColor="#CC0000" Font-Bold="True" ValidationGroup="DataEntry"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="txtFees" Display="Dynamic" 
                    ErrorMessage="Please Enter A Valid Fees Amount" ForeColor="#CC0000" 
                    ValidationExpression="^[0-9]+(\.[0-9]+)?" Font-Bold="True" 
                    ValidationGroup="DataEntry"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
            <td class="style14" colspan="2">
                <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="Save" 
                    ValidationGroup="DataEntry" Font-Bold="False" Font-Italic="False" 
                    Font-Names="Calibri" Font-Size="Large" Height="42px" Width="106px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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
            <td class="style5">
            </td>
            <td class="style6" colspan="4">
                <asp:Label ID="lblDisplay" runat="server" ForeColor="#00CC00" Text="lblDisplay" 
                    Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td class="style8">
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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
            <td class="style13">
                &nbsp;</td>
            <td class="style10" colspan="2">
                &nbsp;</td>
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

