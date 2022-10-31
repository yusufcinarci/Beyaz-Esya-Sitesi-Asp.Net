<%@ Page Language="VB" MasterPageFile="~/master1.master" AutoEventWireup="false" CodeFile="buzdolabi.aspx.vb" Inherits="buzdolabi" title="Untitled Page" %>

<%-- Add content controls here --%><asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    RepeatColumns="2" style="margin-right: 231px" Width="658px">
            <ItemTemplate>
                <br />
                <table style="width:100%;">
                    <tr>
                        <td align="center">
                            <asp:Image ID="Image1" runat="server" Height="130px" 
                                ImageUrl='<%# Eval("Resim") %>' Width="90px" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="ModelLabel" runat="server" ForeColor="Red" 
                                Text='<%# Eval("Model") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="height: 23px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center">
                            
                            
                            <asp:LinkButton ID="LinkButton1" runat="server" commandname="bilgi" commandargument='<%#databinder.eval(container.dataitem,"Kimlik")%>'>Ayrıntılar</asp:LinkButton>
                            
                            
                            <br />
                            
                            
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
    </asp:DataList>
    <br />
                            
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\ders.accdb;Persist Security Info=True" 
    ProviderName="System.Data.OleDb" 
            SelectCommand="SELECT [Model], [Resim], [Kimlik] FROM [buzdolabi]">
</asp:SqlDataSource>
                            
</asp:Content>

