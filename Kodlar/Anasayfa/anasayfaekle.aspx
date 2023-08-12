<%@ Page Language="VB" MasterPageFile="~/admin.master" AutoEventWireup="false" CodeFile="anasayfaekle.aspx.vb" Inherits="anasayfaekle" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width:100%;">
        <tr>
            <td align="center" class="style3">
            &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label3" runat="server" ForeColor="Red" 
                Text="Resim Ekle"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style3">
            &nbsp;</td>
            <td class="style4">
            &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style3">
            Resimi</td>
            <td class="style4">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="center" class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Button2" runat="server" Text="Kaydet" />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
            &nbsp;</td>
            <td class="style4">
            &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    </table>
</asp:Content>

