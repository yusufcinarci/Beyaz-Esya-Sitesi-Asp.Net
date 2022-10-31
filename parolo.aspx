<%@ Page Language="VB" MasterPageFile="~/master1.master" AutoEventWireup="false" CodeFile="parolo.aspx.vb" Inherits="parolo" title="Untitled Page" %>

<%-- Add content controls here --%><asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

        <table style="width:100%;">
            <tr>
                <td class="style1">
                    kullanıcı adı:</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
                <td class="style4">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Boş Bırakmayınız"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:Button ID="Button2" runat="server" Text="Button" Visible="False" />
                </td>
                <td class="style4">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/anasayfa.aspx">Giriş</asp:HyperLink>
                    &nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/uye.aspx">Yeni 
                    Üyelik</asp:HyperLink>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
    </table>

</asp:Content>

