<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMaster.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Sign Up</title>
    <style type="text/css">
        .style1
        {
        	margin-left: 10;
            width: 100%;
        }
        .style2
        {
        	margin-left: 10;
            width: 106px;
        }
        .style3
        {
        	margin-left: 10;
            width: 79px;
        }
        .style4
        {
        	margin-left: 10;
            width: 382px;
        }
* { padding: 0;
            margin-left: 0;
            margin-right: 0;
            margin-top: 0;
        }

        .style5
        {
        	margin-left: 10;
            width: 173px;
        }
        .style6
        {
        	margin-left: 10;
            width: 79px;
            height: 55px;
        }
        .style7
        {
        	margin-left: 10;
            width: 106px;
            height: 55px;
        }
        .style8
        {
        	margin-left: 10;
            width: 382px;
            height: 55px;
        }
        .style9
        {
        	margin-left: 10;
            width: 173px;
            height: 55px;
        }
        .style10
        {
        	margin-left: 10;
            height: 55px;
        }
        .style11
        {
        	margin-left: 10;
            width: 201px;
        }
        .style12
        {
        	margin-left: 10;
            height: 55px;
            width: 201px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4" align="center">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4" align="center">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4" align="center">
                <asp:Label ID="lblreg" runat="server" Font-Size="X-Large" 
                    Text="REGISTRATION FORM"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
            </td>
            <td class="style7">
            </td>
            <td class="style8">
            </td>
            <td class="style9">
            </td>
            <td class="style12">
            </td>
            <td class="style10">
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                </td>
            <td class="style4">
                    <asp:TextBox ID="txtName" runat="server" Height="22px" Width="218px" 
                        TabIndex="1"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style5">
                    <asp:Label ID="lblCheckName" runat="server"></asp:Label>
                </td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                    <asp:Label ID="lblEmailId" runat="server" Text="Email Id"></asp:Label>
                </td>
            <td class="style4">
                    <asp:TextBox ID="txtEmailId" runat="server" Height="31px" Width="218px" TabIndex="2" 
                        ></asp:TextBox>
                </td>
            <td class="style5">
                    <asp:Button ID="btnCheckEmail" runat="server" onclick="btnCheckEmail_Click" 
                        Text="Check Availiability" />
                </td>
            <td class="style11">
                    <asp:Label ID="lblCheckEmail" runat="server"></asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" 
                        ErrorMessage="Please Enter A Valid E Mail Id" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="DataEntry" ControlToValidate="txtEmailId" Font-Bold="True" 
                        ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                    <asp:Label ID="lblGender" runat="server" Text=" "></asp:Label>
                    <asp:Label ID="lblGender0" runat="server" Text="Gender"></asp:Label>
                </td>
            <td class="style4">
                    <asp:DropDownList ID="ddlGender" runat="server" Height="52px" TabIndex="3" 
                        BackColor="White">
                        <asp:ListItem Selected="True" Value="0">[ -- Select Gender -- ]</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                </td>
            <td class="style5">
                    <asp:Label ID="lblCheckGender" runat="server"></asp:Label>
                </td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                    <asp:Label ID="lblLocation" runat="server" Text="Location"></asp:Label>
                </td>
            <td class="style4">
                    <asp:TextBox ID="txtLocation" runat="server" Height="31px" Width="218px" 
                        TabIndex="4"></asp:TextBox>
                </td>
            <td class="style5">
                    <asp:Label ID="lblCheckLocation" runat="server"></asp:Label>
                </td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                    <asp:Label ID="lblMobile" runat="server" Text="Mobile Number"></asp:Label>
                </td>
            <td class="style4">
                    <asp:Label ID="lblNumber" runat="server" Text="+91"></asp:Label>
                &nbsp;
                    <asp:TextBox ID="txtPhone" runat="server" Height="31px" Width="219px" 
                        MaxLength="10" TabIndex="5"></asp:TextBox>
                </td>
            <td class="style5">
                    <asp:Label ID="lblCheckPhone" runat="server"></asp:Label>
                </td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="lblCaptcha" runat="server" Text="Captcha :"></asp:Label>
                </td>
            <td class="style4">
                <asp:Label ID="lblDisplayCaptcha" runat="server" BackColor="Black" 
                    Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
            <td class="style5">
                <asp:Button ID="btnChangeCaptcha" runat="server" Text="Change Captcha" 
                    onclick="btnChangeCaptcha_Click" />
                </td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="lblRetypeCaptcha" runat="server" 
                    Text="Type The Code Given Above :"></asp:Label>
                </td>
            <td class="style4">
                <asp:TextBox ID="txtRetypeCaptcha" runat="server" Height="20px" Width="182px"></asp:TextBox>
                </td>
            <td class="style5">
                <asp:Label ID="lblRetypeCaptchaValid" runat="server" Font-Bold="True" ForeColor="Red" 
                    Text="This Field Cannot Be Empty" Visible="False"></asp:Label>
                </td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                    <asp:Button ID="btnSubmit" runat="server" Height="39px" Text="Submit" 
                        Width="125px" ValidationGroup="DataEntry" onclick="btnSubmit_Click" 
                        TabIndex="6" />
                </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="lblDisplay" runat="server" Font-Bold="True" ForeColor="#00CC00" 
                    Visible="False"></asp:Label>
                </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

