<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.master" AutoEventWireup="true" CodeFile="AddScheme.aspx.cs" Inherits="Administrator_SchemeAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style6
        {
            height: 24px;
        }
        .style9
        {
            width: 496px;
        }
        .style10
        {
            height: 24px;
            width: 496px;
        }
        .style11
        {
        }
        .style12
        {
            height: 24px;
            width: 255px;
        }
        .style13
        {
        }
        .style14
        {
            height: 24px;
            width: 170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" Runat="Server">
    <table class="style1" 
        style="background-image: url('Images/BackgroundImage.jpg')">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13" colspan="3" 
                style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold; font-style: normal">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADDITION OF SCHEME</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                </td>
            <td class="style14">
                <asp:Label ID="lblSchemeId" runat="server" Font-Size="Large" Text="Scheme ID" 
                    Font-Names="Calibri"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="txtSchemeId" runat="server" Height="23px" Width="250px" 
                    Enabled="False"></asp:TextBox>
            </td>
            <td class="style10">
                <asp:Label ID="lblCheckSchemeName" runat="server" Font-Bold="True" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                <asp:Label ID="lblSchemeName" runat="server" Font-Size="Large" 
                    Text="Scheme Name" Font-Names="Calibri"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="txtSchemeName" runat="server" Height="23px" Width="250px" 
                    TabIndex="1"></asp:TextBox>
            </td>
            <td class="style9">
                <span class="t-link">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtSchemeName" ErrorMessage="This Field Cannot Be Empty" 
                    ForeColor="Red" Font-Bold="True" ValidationGroup="DataEntry" 
                    Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ErrorMessage="This Field Can Contain Only Alphabets" ValidationExpression="[a-zA-Z ]+" 
                    ControlToValidate="txtSchemeName" ForeColor="Red" Font-Bold="True" 
                    ValidationGroup="DataEntry" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                <span class="t-link">
                <asp:Label ID="lblTenure" runat="server" Font-Size="Large" Text="Tenure" 
                    Font-Names="Calibri"></asp:Label>
            </td>
            <td class="style11">
                <span class="t-link">
                <asp:TextBox ID="txtTenure" runat="server" Height="23px" Width="110px" 
                    TabIndex="2"></asp:TextBox>
                </td>
            <td class="style9">
                <span class="t-link">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtTenure" ErrorMessage="This Field Cannot Be Empty" 
                    ForeColor="Red" Font-Bold="True" ValidationGroup="DataEntry" 
                    Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="This Field Can Contain Only Integers Between 3 And 12" ValidationExpression="(1[0-2]|0?[3-9])" 
                    ControlToValidate="txtTenure" ForeColor="Red" Font-Bold="True" 
                    ValidationGroup="DataEntry" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                <span class="t-link">
                <asp:Label ID="lblAmount" runat="server" Font-Size="Large" Text="Amount" 
                    Font-Names="Calibri"></asp:Label>
            </td>
            <td class="style11">
                <span class="t-link">
                <asp:TextBox ID="txtAmount" runat="server" Height="23px" Width="137px" 
                    TabIndex="3"></asp:TextBox>
                </td>
            <td class="style9">
                <span class="t-link">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtAmount" ErrorMessage="This Field Cannot Be Empty" 
                    ForeColor="Red" Font-Bold="True" ValidationGroup="DataEntry" 
                    Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtAmount" ErrorMessage="Please Enter A Valid Amount" ForeColor="Red" 
                    ValidationExpression="^[0-9]+(\.[0-9]+)?" Font-Bold="True" 
                    ValidationGroup="DataEnrty" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                <span class="t-link">
                <asp:Button ID="btnSave" runat="server" Font-Size="Large" Text="Save" 
                    onclick="btnSave_Click" ValidationGroup="DataEntry" Font-Names="Calibri" 
                    Height="42px" Width="106px" />
            </td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11" colspan="2">
                <asp:Label ID="lblDisplay" runat="server" Font-Bold="True" ForeColor="#00CC00" 
                    Visible="False" Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>