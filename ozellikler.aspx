<%@ Page Language="VB" MasterPageFile="~/master1.master" AutoEventWireup="false" CodeFile="ozellikler.aspx.vb" Inherits="ozellikler" title="Untitled Page" %>

<%-- Add content controls here --%><asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

        <table style="width:100%;">
            <tr>
                <td align="center" colspan="5">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td rowspan="2" style="width: 9px">
                    <asp:Image ID="Image1" runat="server" Height="164px" Width="176px" />
                </td>
                <td colspan="4" style="height: 122px" valign="top">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Satın Al" />
                </td>
            </tr>
    </table>

</asp:Content>

