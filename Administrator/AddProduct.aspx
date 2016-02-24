<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/Admin.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Administrator_AddProduct" %>

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
            width: 481px;
        }
        .style4
        {
            width: 151px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" Runat="Server">
    <table class="style1" 
        style="background-image: url('Images/BackgroundImage.jpg')">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2" colspan="3" 
                style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold; font-style: normal">
                &nbsp;&nbsp;&nbsp; ADDITION OF PRODUCTS</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="lblCatName" runat="server" Font-Size="Large" 
                    Text="Category Name" Font-Names="Calibri"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlCatName" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlCatName_SelectedIndexChanged" Height="23px" 
                    Width="250px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblCheckCatName" runat="server" Font-Bold="True" ForeColor="Red" 
                    Visible="False">This Field Is Mandatory</asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="lblSubCatName" runat="server" Font-Size="Large" 
                    Text="Subcategory Name" Font-Names="Calibri"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlSubCatName" runat="server" AutoPostBack="True" 
                    Enabled="False" 
                    onselectedindexchanged="ddlSubCatName_SelectedIndexChanged" Height="23px" 
                    Width="250px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblCheckSubCatName" runat="server" Font-Bold="True" 
                    ForeColor="Red" Visible="False">This Field Is Mandatory</asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="lblProductId" runat="server" Font-Size="Large" 
                    Text="Product ID" Font-Names="Calibri"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtProductId" runat="server" Enabled="False" Height="23px" 
                    Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblCheckProductId" runat="server" Font-Bold="True" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="lblProductName" runat="server" Font-Size="Large" 
                    Text="Product Name" Font-Names="Calibri"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtProductName" runat="server" Enabled="False" Height="23px" 
                    Width="250px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4" align="left" valign="top">
                <asp:Label ID="lblDescription" runat="server" Font-Size="Large" 
                    Text="Description" Font-Names="Calibri"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server" Enabled="False" Height="73px" 
                    Width="250px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblCheckDescription" runat="server" Font-Bold="True" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="lblDiscount" runat="server" Font-Size="Large" Text="Discount" 
                    Font-Names="Calibri"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDiscount" runat="server" Enabled="False" Height="23px" 
                    Width="148px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblCheckDiscount" runat="server" Font-Bold="True" 
                    ForeColor="Red" Visible="False"></asp:Label>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtDiscount" 
                    ErrorMessage="The Discount Should Be Between 0 to 99" Font-Bold="True" 
                    ForeColor="Red" MaximumValue="99" MinimumValue="0" Type="Double" 
                    ValidationGroup="DataEntry" Display="Dynamic"></asp:RangeValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="lblWeight" runat="server" Font-Size="Large" Text="Weight" 
                    Font-Names="Calibri"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtWeight" runat="server" Enabled="False" Height="23px" 
                    Width="148px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblCheckWeight" runat="server" Font-Bold="True" ForeColor="Red" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="lblPurity" runat="server" Font-Size="Large" Text="Purity" 
                    Font-Names="Calibri"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPurity" runat="server" Enabled="False" Height="23px" 
                    Width="250px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblCheckPurity" runat="server" Font-Bold="True" ForeColor="Red" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="lblMakingCharge" runat="server" Font-Size="Large" 
                    Text="Making Charge" Font-Names="Calibri"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMakingCharge" runat="server" Enabled="False" Height="23px" 
                    Width="148px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblCheckMakingCharge" runat="server" Font-Bold="True" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="lblImage" runat="server" Font-Size="Large" Text="Image" 
                    Font-Names="Calibri"></asp:Label>
            </td>
            <td>
                <span class="t-link">
                <asp:FileUpload ID="uploadImage" runat="server" Enabled="False" Height="23px" 
                    Width="250px" />
            </td>
            <td>
                <asp:Label ID="lblCheckFileUpload" runat="server" Font-Bold="True" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                <span class="t-link">
                <asp:Button ID="btnSave" runat="server" Text="Save" Enabled="False" 
                    onclick="btnSave_Click" ValidationGroup="DataEntry" Font-Names="Calibri" 
                    Font-Size="Large" Height="42px" Width="106px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td colspan="2">
                <asp:Label ID="lblDisplay" runat="server" Font-Bold="True" ForeColor="#00CC00" 
                    Visible="False" Font-Size="Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
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