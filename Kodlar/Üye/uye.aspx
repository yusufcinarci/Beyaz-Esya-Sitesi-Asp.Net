<%@ Page Language="VB" MasterPageFile="~/master1.master" AutoEventWireup="false" CodeFile="uye.aspx.vb" Inherits="uyeol" title="Untitled Page" %>

<%-- Add content controls here --%><asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

        <table style="width:100%;">
            <tr>
                <td class="style1" style="width: 155px">
                        &nbsp;Ad</td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="boş bırakmayınız"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1" style="width: 155px">
                        &nbsp;Soyad</td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="boş bırakmayınız"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 155px">
                        &nbsp;Kullanıcı Adı</td>
                <td class="style3" style="width: 414px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="boş bırakmayınız"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1" style="width: 155px">
                        &nbsp;Şifre</td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="boş bırakmayınız"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1" style="width: 155px">
                        &nbsp;e-mail</td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="boş bırakmayınız"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="e postayı doğru girin" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style4" style="width: 155px">
                        &nbsp;Gizli Soru</td>
                <td class="style5" style="width: 414px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="TextBox6" ErrorMessage="boş bırakmayınız"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1" style="width: 155px">
                        &nbsp;Yanıt</td>
                <td style="width: 414px">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="TextBox7" ErrorMessage="boş bırakmayınız"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1" style="width: 155px">
                        &nbsp;</td>
                <td style="width: 414px">
                    <asp:Button ID="Button1" runat="server" Text="kaydol" style="height: 26px" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1" style="width: 155px">
                        &nbsp;</td>
                <td style="width: 414px">
                    &nbsp;</td>
            </tr>
    </table>

</asp:Content>

