<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMaster.master" AutoEventWireup="true" CodeFile="MyPage.aspx.cs" Inherits="MyPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 104px;
        }
        .style4
        {
            width: 197px;
        }
* { margin: 0 0 0 0px; 
padding: 0; }

        .style6
        {
            width: 433px;
        }
        .style7
        {
            width: 75px;
        }
        .style9
        {
            width: 213px;
        }
        .style10
        {
            width: 14px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="5" 
                style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold; font-style: normal">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                MY PAGE</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                Customer Id</td>
            <td>
                <asp:Label ID="lblCustomer" runat="server"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                Name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="250px" TabIndex="1"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtName" Display="Dynamic" 
                    ErrorMessage="This Field Cannot be Empty" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtName" Display="Dynamic" 
                    ErrorMessage="This Field Can Contain Only Alphabets" ForeColor="Red" 
                    ValidationExpression="[a-zA-Z ]+" Font-Bold="True"></asp:RegularExpressionValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                Location</td>
            <td>
                <asp:TextBox ID="txtLocation" runat="server" Width="250px" TabIndex="2"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtLocation" Display="Dynamic" 
                    ErrorMessage="This Field Cannot be Empty" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                Email_Id</td>
            <td>
                <asp:Label ID="lblEmail" runat="server"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                Gender</td>
            <td>
                <asp:DropDownList ID="ddlGender" runat="server" Height="20px" TabIndex="4" 
                                                SelectedValue='<%# Bind ("gender") %>' 
                    BackColor="White" Width="146px" ForeColor="Black">
                    <asp:ListItem Selected="True" Value="0">[ -- Select Gender -- ]</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style7">
                Mobile No</td>
            <td class="style10">
                +91</td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server" Width="250px" TabIndex="5"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtPhone" Display="Dynamic" 
                    ErrorMessage="This Field Cannot be Empty" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtPhone" Display="Dynamic" 
                    ErrorMessage="Please Enter A Ten Digit Number" ForeColor="Red" 
                    ValidationExpression="[0-9]{10}" Font-Bold="True"></asp:RegularExpressionValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnUpdate" runat="server" Height="31px" 
                    onclick="btnUpdate_Click" Text="Update" Width="92px" />
            </td>
            <td class="style6">
                <asp:Button ID="btnChangePassword" runat="server" 
                    onclick="btnChangePassword_Click" Text="Change Password" />
            </td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblResult" runat="server" Text="lblResult" Visible="False"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

