<%@ Page Language="VB" MasterPageFile="~/master1.master" AutoEventWireup="false" CodeFile="televizyon.aspx.vb" Inherits="televizyon" title="Untitled Page" %>

<%-- Add content controls here --%><asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        
            SelectCommand="SELECT [Kimlik], [Açıklama], [Model], [Resim] FROM [televizyon]">
    </asp:SqlDataSource>
    <br />
    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" 
        RepeatColumns="2" Width="644px">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td align="center">
                        <asp:Image ID="Image2" runat="server" Height="81px" 
                            ImageUrl='<%# Eval("Resim") %>' Width="102px" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Label ID="ModelLabel" runat="server" ForeColor="#CC0000" 
                            Text='<%# Eval("Model") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:LinkButton ID="LinkButton1" runat="server" commandname="bilgi" commandargument='<%#databinder.eval(container.dataitem,"Kimlik")%>'>Ayrıntılar</asp:LinkButton>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    
</asp:Content>

