<%@ Page Language="VB" MasterPageFile="~/master1.master" AutoEventWireup="false" CodeFile="anasayfa.aspx.vb" Inherits="anasayfa" title="Untitled Page" %>

<%-- Add content controls here --%><asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

        <table style="width: 85%; height: 112px;">
            <tr>
                <td class="style3" style="text-align: left; width: 174px; height: 7px;">
                    &nbsp;</td>
                <td class="style3" style="text-align: left; height: 7px; width: 177px;">
                    &nbsp;</td>
                <td class="style6" style="width: 166px; text-align: left; height: 7px;">
                    &nbsp;</td>
                <td class="style6" style="width: 214px; text-align: left; height: 7px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" style="text-align: left; width: 174px;">
                    &nbsp;</td>
                <td class="style4" style="text-align: left; width: 177px;">
                    &nbsp;</td>
                <td class="style1" style="width: 166px; text-align: left">
                    &nbsp;</td>
                <td class="style1" style="width: 214px; text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" style="width: 174px">
                    &nbsp;</td>
                <td class="style4" style="width: 177px">
                    &nbsp;
                </td>
                <td class="style1" style="width: 166px; text-align: left">
                    &nbsp;</td>
                <td class="style1" style="width: 214px; text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" style="width: 174px">
                    &nbsp;</td>
                <td class="style4" style="width: 177px; text-align: left">
                    <asp:Label ID="Label2" runat="server" Text="KULLANICI ADI"></asp:Label>
                </td>
                <td class="style1" style="width: 166px; text-align: left">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="style1" style="width: 214px; text-align: left">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4" style="width: 174px">
                    &nbsp;</td>
                <td class="style4" style="width: 177px; text-align: left">
                    <asp:Label ID="Label3" runat="server" Text="SİFRE"></asp:Label>
                </td>
                <td class="style1" style="width: 166px; text-align: left">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style1" style="width: 214px; text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" style="width: 174px">
                    &nbsp;</td>
                <td class="style4" style="width: 177px; text-align: left">
                    &nbsp;</td>
                <td class="style1" style="width: 166px; text-align: left">
                    <asp:Button ID="Button1" runat="server" Text="Giriş Yap" />
                </td>
                <td class="style1" style="width: 214px; text-align: left">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/parolo.aspx">Parolomu 
                    Unuttum</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style4" style="width: 174px">
                    &nbsp;</td>
                <td class="style4" style="width: 177px; text-align: left">
                    &nbsp;</td>
                <td class="style1" style="width: 166px; text-align: left">
                    &nbsp;</td>
                <td class="style1" style="width: 214px; text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" style="width: 174px">
                    &nbsp;</td>
                <td class="style4" style="width: 177px; text-align: left">
                    &nbsp;</td>
                <td class="style1" style="width: 166px; text-align: left">
                    &nbsp;</td>
                <td class="style1" style="width: 214px; text-align: left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" style="width: 174px">
                    &nbsp;</td>
                <td class="style4" style="width: 177px; text-align: left">
                    &nbsp;</td>
                <td class="style1" style="width: 166px; text-align: left">
                    &nbsp;</td>
                <td class="style1" style="width: 214px; text-align: left">
                    &nbsp;</td>
            </tr>
    </table>

</asp:Content>

