<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.master" AutoEventWireup="true" CodeFile="BackupAndRestore.aspx.cs" Inherits="Administrator_DBBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style4
        {
            height: 17px;
        }
        .style5
        {
            width: 263px;
            height: 17px;
        }
        .style7
        {
            width: 260px;
        }
        .style8
        {
            height: 17px;
            width: 260px;
        }
        .style11
        {
        }
        .style12
        {
            height: 17px;
            width: 129px;
        }
        .style13
        {
            width: 367px;
        }
        .style14
        {
            height: 17px;
            width: 367px;
        }
        .style15
        {
            width: 263px;
        }
        .style16
        {
            width: 195px;
        }
        .style17
        {
            height: 17px;
            width: 195px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" Runat="Server">
    <table class="style1" 
        style="background-image: url('Images/BackgroundImage.jpg')">
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style2" colspan="4" 
                style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold; font-style: normal">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DATABASE BACKUP &amp; RESTORE</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                </td>
            <td class="style15">
                </td>
            <td class="style11">
                <asp:Label ID="lblBackupName" runat="server" Font-Bold="False" Font-Size="Large" 
                    Text="Backup Name:" Font-Names="Calibri"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txtBackupName" runat="server" 
                    Width="250px" Height="23px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="requiredExpression" runat="server" 
                    ControlToValidate="txtBackupName" ErrorMessage="This Field Cannot Be Blank" 
                    Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regularExpression" runat="server" 
                                                ControlToValidate="txtBackupName" 
                                                
                    ErrorMessage="This Field Can Contain Only Alphabets" Font-Bold="True" 
                                                ForeColor="Red" ValidationExpression="[a-zA-Z ]+" 
                                                ValidationGroup="Required"></asp:RegularExpressionValidator>
            </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                <asp:Button ID="btnSave" runat="server" Text="Save" Width="106px" 
                    onclick="btnSave_Click" Font-Names="Calibri" Font-Size="Large" 
                    Height="34px" />
            </td>
            <td class="style13">
                <asp:Label ID="lblBackupDisplay" runat="server" Font-Bold="True" 
                    ForeColor="Lime" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                <asp:Button ID="btnRestore" runat="server" Text="Restore" Width="106px" 
                    onclick="btnRestore_Click" 
                    onclientclick="return confirm('Do You Want To Take The Restore Of The Database ?');" 
                    Font-Names="Calibri" Font-Size="Large" Height="34px" 
                     />
            </td>
            <td class="style13">
                <asp:Label ID="lblRestoreDisplay" runat="server" Font-Bold="True" 
                    ForeColor="Lime" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                </td>
            <td class="style5">
                </td>
            <td class="style12">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style14">
                </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                </td>
            <td class="style5">
                </td>
            <td class="style12">
                </td>
            <td class="style8">
                </td>
            <td class="style14">
                </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

