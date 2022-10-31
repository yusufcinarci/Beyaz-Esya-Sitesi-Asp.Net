<%@ Page Language="VB" MasterPageFile="~/master1.master" AutoEventWireup="false" CodeFile="makine.aspx.vb" Inherits="makine" title="Untitled Page" %>

<%-- Add content controls here --%><asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT [Model], [Açıklama], [Resim], [Kimlik] FROM [makine]">
    </asp:SqlDataSource>
    <br />
    <br />
                <asp:DataList ID="DataList1" runat="server" 
            DataSourceID="SqlDataSource1" RepeatColumns="2" Width="663px">
                    <ItemTemplate>
                        <br />
                        <table style="width:100%;">
                            <tr>
                                <td align="center">
                                    <asp:Image ID="Image1" runat="server" Height="85px" 
                                        ImageUrl='<%# Eval("Resim") %>' Width="93px" />
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

