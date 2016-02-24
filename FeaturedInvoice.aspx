<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEndMaster.master" AutoEventWireup="true" CodeFile="FeaturedInvoice.aspx.cs" Inherits="Invoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            border-style: solid;
            border-width: 4px;
        }
        .style2
        {
            width: 113px;
        }
        .style3
        {
            width: 232px;
        }
        .style4
        {
            font-size: x-large;
            font-style: italic;
            font-weight: bold;
        }
    </style>

    <style type="text/css">
.INVOICE {
	-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ede6ed), color-stop(1, #a8a3a8) );
	background:-moz-linear-gradient( center top, #ede6ed 5%, #a8a3a8 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ede6ed', endColorstr='#a8a3a8');
	background-color:#ede6ed;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #dcdcdc;
	display:inline-block;
	color:#120012;
	font-family:arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:1px 1px 0px #ffffff;
}.INVOICE:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #a8a3a8), color-stop(1, #ede6ed) );
	background:-moz-linear-gradient( center top, #a8a3a8 5%, #ede6ed 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#a8a3a8', endColorstr='#ede6ed');
	background-color:#a8a3a8;
}.INVOICE:active {
	position:relative;
	top:1px;
}
        .style5
        {
            width: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                <asp:Label ID="LblCusInvoice" runat="server" Font-Bold="True" 
                    Font-Italic="True" Font-Size="X-Large" Text="Customer Invoice"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Product Name</td>
            <td colspan="2">
                <asp:Label ID="LblProductName" runat="server" Font-Bold="True" 
                    Font-Size="Medium"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Product Code</td>
            <td colspan="2">
                <asp:Label ID="LblProductCode" runat="server" Font-Bold="True" 
                    Font-Size="Medium"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Purity</td>
            <td colspan="2">
                <asp:Label ID="LblPurity" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Weight</td>
            <td colspan="2">
                <asp:Label ID="LblWeight" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Making Charge</td>
            <td colspan="2">
                <asp:Label ID="LblMakingCharge" runat="server" Font-Bold="True" 
                    Font-Size="Medium"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Sub Total</td>
            <td colspan="2">
                <asp:Label ID="LblSubTotal" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Excise Duty @</td>
            <td colspan="2">
                <asp:Label ID="LblTax1" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Sales Tax @</td>
            <td colspan="2">
                <asp:Label ID="LblTax2" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                VAT @</td>
            <td colspan="2">
                <asp:Label ID="LblTax3" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Grand Total</td>
            <td colspan="2">
                <asp:Label ID="LblGrandTotal" runat="server" Font-Bold="True" 
                    Font-Size="Medium"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4" colspan="2">
                Thank You</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" align="center" valign="middle">
                &nbsp;</td>
            <td class="style3" align="center" valign="middle">
                <asp:Button ID="btnMyPage" runat="server" onclick="btnMyPage_Click" 
                    Text="Go To My Page" class="INVOICE"/>
            </td>
            <td align="center" valign="middle">
                <asp:Button ID="btnPrint" runat="server" Text="Print" OnClientClick="javascript:window.print();" class="INVOICE" />
            </td>
            <td align="center" valign="middle">
                <asp:Button ID="btnLogout" runat="server" onclick="btnLogout_Click" 
                    Text="Log Out" class="INVOICE" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

