<%@ Page Language="VB" MasterPageFile="~/master1.master" debug="true" AutoEventWireup="false" CodeFile="bulasik.aspx.vb" Inherits="bulasik" title="Untitled Page" %>

<%-- Add content controls here --%><asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
                    
                    
                    SelectCommand="SELECT [Model], [Açıklama], [Resim], [Kimlik] FROM [bulasik]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    RepeatColumns="2" DataKeyField="Kimlik" Height="450px" 
                    style="margin-right: 185px" Width="656px">
                    <ItemTemplate>
                        <table style="width:100%; height: 156px;">
                            <tr>
                                <td align="center">
                                    <asp:Image ID="Image1" runat="server" Height="83px" 
                                        ImageUrl='<%# Eval("Resim") %>' Width="89px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:Label ID="ModelLabel" runat="server" ForeColor="#CC0000" 
                                        Text='<%# Eval("Model") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="height: 23px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:LinkButton ID="LinkButton2" runat="server" commandname="bilgi" commandargument='<%#databinder.eval(container.dataitem,"Kimlik")%>'>Ayrıntılar</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

