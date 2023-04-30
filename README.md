# Beyaz-Esya-Sitesi-Asp.Net

Asp.Net ile hazırlamış olduğum Çınarcı Beyaz Eşya sitesinde televizyon, buzdolabı, fırın vb. ürünlerin fiyatları bulunmakla birlikte girişte kullanıcı olarak ya da  admin olarak klayıt yapan kişinin alışveriş yaparken sepetim kısmı içerisinde satın aldığı tüm bilgiler de kurduğumuz ve bağlamış olduğumuz Access veritabanına anlık olarak geçmektedir. Ayrıca Bu ürünlerin fiyatları veritabanı üzerinden de değiştirilip kontrolü sağlanabilmektedir. Çınarcı Beyaz Eşya isimli beyaz eşya sitemizin genel tasarımı aşağıdaki görselde verilmiştir.. 

![image](https://user-images.githubusercontent.com/77057546/199004417-d0dfb369-c975-4df1-a0dc-556e23fdd2b2.png)

Yukarıda verilen resim üzerinde de görüleceği gibi site ana sayfasında bir üst banner, 7 adet menü, üye giriş ekranı, sepet kısmı ve bir alt banner bulunmaktadır. Bu sayfanın tasarımı yazılım dosyaları arasında anasayfa.aspx dosyası içerisinde yapılmıştır.


![image](https://user-images.githubusercontent.com/77057546/199006034-cbd93e9a-f7d0-414d-9264-ce38aadb69a7.png)

# Menü

### Bulaşık Makinesi Bölümünün Çalışma Prensibi

Beyaz eşyaların resim, fiyat, isim gibi özelliklerinin veri tabanından çekilmesi ile ilgili işlemler gerçekleştirilirken, ürünü sepete ekleme ve sepeti görme gibi işlemler tanımlanmıştır. Veri tabanında bulunan tabloların ayrıntılı açıklamaları ve ekran görüntüleri ilerleyen bölümlerde detaylı olarak açıklanacaktır. Her bir menünün içeriğindeki ürünlerin veri tabanından çekilmesi için gerekli sorguların bulunduğu kod sayfaları ise ayrı ayrı bulasik.aspx buzdolabi.aspx makine.aspx pisirici.aspx uye.aspx televizyon.aspx fırın.aspx dosyaları içerisinde verilmiştir. 
Bu menülerin her birinde aynı işlemler yapılmış olup bu kısımda biri üzerinden örnek verilmiştir. Bulaşık Makinesi sayfasındaki veriler sql databaseden çekilmiş olup bir bulasik.aspx dosyası bir adette bulasikekle.aspx dosyası bulunmaktadır. Bu iki sayfanın da verileri SQL üstünden kontrol edilebildiği gibi siteden girilen verilerde aynı şekilde işlenmiştir. Bu kısımda sadece bulasik.aspx kısmından bahsedilecek olup yeni bir ürün ekleme kısmında ise bulasikekle.aspx kısmından bahsedilecektir.

![image](https://user-images.githubusercontent.com/77057546/199006034-cbd93e9a-f7d0-414d-9264-ce38aadb69a7.png)

```
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
                    RepeatColumns="2" DataKeyField="Kimlik">
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

Imports System.Data
Imports System.Data.OleDb
Partial Class bulasik
    Inherits System.Web.UI.Page
    Dim baglan As New OleDbConnection("Provider=Microsoft.ACE.OleDB.12.0;Data Source=" & Server.MapPath("App_Data\ders.accdb"))
    Protected Sub DataList1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles DataList1.ItemCommand
        If e.CommandName = "bilgi" Then
            Response.Redirect("ozellikler.aspx?Kimlik=" + e.CommandArgument)
        End If
 
    End Sub
End Class

```
Yukarıda verilen kod bloklarında Accessden alınan veriler ve bulaşık makinesi eklendiğinde verilerin Access veri tabanına gittiği ve bulaşık makinelerinin verilerinin Access veri tabanından yapılabildiği gibi aynı zamanda web sitesi üstünden de yapılan işlemler Access veritabanına yansımıştır. 

![image](https://user-images.githubusercontent.com/77057546/199006525-a2f9cd36-c9b1-43a3-9fcb-185288c07d88.png)

Kullanıcının sepetine eklemiş olduğu ürünler Access veri tabanında bulunan “sepet” tablosuna kaydedilecektir. İkinci bölümde web sitesine ait tüm veri tabanları detaylı olarak verilmiştir. Sepet veri tabanına ait bilgilerde ikinci bölümde detaylı olarak verilmiştir. Yukarıda sepete ekleme ve sepeti görme işlemleri gerçekleştirilmiştir. 
Sepete eklenmiş olan ürünlerin fiyat, isim ve diğer bilgileri “sepet” veri tabanı tablosundan çekilmiş ve kullanıcının eklediği ürünlerin fiyatları toplanarak toplam fiyat şeklinde belirtilmiştir. 

### YENİ ÜRÜN EKLEME

Kullanıcının Yeni ürün ekleme işlemleri her bir menü için ayrı olup tek bir menü üstünden anlatılacaktır. Genel işlemlerde her aspx dosya uzantılı menünün bir de ekle.aspx li bir tasarımlı bir kısmıda vardır. Bu kısım üzerinden ürün eklenebildiği gibi Access veri tabanından da ürün eklenebilmektedir.Bu kısımda bulasik.aspx üstünden anlatacağımız yeni ürün ekleme kısmı diğer menüler içinde aynı işleyişle devam etmektedir. Ürün ekleme sadece adminlere özel olup üyeler ekleyememektedir.

![image](https://user-images.githubusercontent.com/77057546/199006913-35eddb6e-5ca5-451d-891c-fcef0603536e.png)

### ÜYE OL

ASP .NET üzerinden oluşturduğumuz web sitemizin bir diğer özelliği kullanıcıların üye olma sayfası üstünden kolayca üye olabilmeleridir. Sisteme eklenen üyeler Access veri tabanı üzerinde bulunan üyeler tablosuna kayıt edilmektedir. Tablonun genel özellikleri 2. Bölümde verilecek olan veri tabanı özellikleri içerisinde yer alacaktır. Gerekli bilgiler girildikten sonra kaydet butonuna basılması durumunda yeni üye bilgileri veritabanına eklenecektir.

![image](https://user-images.githubusercontent.com/77057546/199007026-aed22952-4486-4e82-b72c-100e072ec228.png)



```
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

```

Yukarıda verilen kod parçacıklarında kayıt işlemleri için gerekli olan bilgilerin alınmasına yönelik işlemler gerçekleştirilmiştir. Verilen kod parçacıklarına bakıldığında geçen haftalarda işlemiş olduğumuz Validation (Onaylama) Kontrolleri konusunun oldukça sık bir şekilde kullanıldığı gözlemlenmiştir. Onaylama kontrolünün amacı Web uygulamalarında kullanıcıların girmiş olduğu verilerin veri tabanına kaydedilmeden önce istenen şartları sağlayıp sağlamadığını kontrol etmektir. Bizim projemizde bulunan üye ol menüsünün içeriğinde istenen bilgilerin gerekli şartları sağlayıp sağlamadığının belirlenmesi amacıyla Validation kontrollerine sıkça başvurulmuştur. 

# ACCESS VERİ TABANI 

Bu web sitesinde Access veri tabanı kullanılmıştır. Veritabanı, bilgileri toplamak ve düzenlemek için bir araçtır. Veritabanları kişiler, ürünler, siparişler veya başka herhangi bir şey hakkında bilgi depolar. Bu projede web sitemizde bulunan verileri kaydetmek ve listelemek amacıyla Access Veritaban programı kullanılmıştır.  
Bu projede bulunan Access Veritabanında toplamda 7 adet tablo bulunmaktadır. Bu tablolar sırasıyla; “uyeler”, “pisirici”, “buzdolabı”, “televizyon”, “bulasik”, “makine”, “sepet” şeklindedir. Aşağıdaki görselde Access Veritabanı üzerinde bulunan tabloların listesi gösterilmiştir.


![image](https://user-images.githubusercontent.com/77057546/199007703-7b2d624f-752c-4e88-807f-7e3775faef6f.png)

Bu tablolardan ilki sitemize üye olan kullanıcıların verilerinin tutulduğu tablo olan “üyeler” tablosudur.

![image](https://user-images.githubusercontent.com/77057546/199007778-a0100c94-a33e-42a1-aede-cf4e356829d6.png)

Kimlik, ad, Soyad, kullanıcı adı, şifre, eposta, gizli soru, gizli cevap olmak üzere 8 farklı alandan oluşan tablomuzun genel görünümü yukarıdaki görselde verilmiştir. Kayıt ol sekmesi üzerinden web sitesine kayıt olan kullanıcının gerekli alanlara girmiş olduğu veriler bu tablo üzerindeki 8 farklı alana otomatik olarak yerleştirilmiştir. 

### Bulaşık Makinesi Veritabanı Tablosu 

Access veritabanında bulunan tablolardan biride ise bulaşık tablosudur. Bu tablonun içeriğinde ise 6 adet alan bulunmaktadır.

![image](https://user-images.githubusercontent.com/77057546/199008112-0da574e1-2bf6-4cd5-a7e5-4c7680e7c026.png)
![image](https://user-images.githubusercontent.com/77057546/199008160-4b638864-bc67-49f7-ad7f-6277fa0a2781.png)

Kimlik, model, açıklama, resim, fiyat, enerji tüketimi olmak üzere altı adet alandan oluşan bu tablonun ekran görüntüsü yukarıda verilmiştir. Burada web sitesine satılacak olan ürünlerin verileri tutulmuştur. 

![image](https://user-images.githubusercontent.com/77057546/199008407-c2429faf-38f8-4d1b-8b5b-f21a546fd79a.png)

Yukarıdaki görselde ise yeni bulaşık ekle menüsünün Veritabanı ile olan bağlantısı kod parçacıkları halinde gösterilmiştir. 
Diğer menülerdeki tablolarda da aynı yol izlenmiş olup sadece bulaşık makinesi kısmı örnek olarak readme kısmında gösterilmiştir. Diğer tabloları ve asp.NET kodlarını görmek için repomu indirmeniz yeterli olacaktır.
Bu projede Microsoft Visual Studio 2010 ve Microsoft Access 2010 sürümleri kullanılmış olup sonraki versiyonlarda problem yaşanabilmesi söz konusudur.

Genel itibariyle asp.net ile oluşturulan projenin genel hatları bu şekildedir. Projede hazır css template kullanılmıştır. Projenin yapım aşamasında kullanılan validation, sql veritabanı bağlantısı, sql veritabanı sorgu işlemleri, web site tasarımı gibi birçok web programlama konuları detaylı olarak incelenmiş ve üzerlerinde çalışılmıştır. Bazı eklemek istenilen özellikler geliştirme aşamasında kalmış olup devamı için sınav haftasının yoğunluğu geçtikten sonra devam edilecektir.

Başka projelerde görüşmek üzere,


## Güç Sizinle olsun!!!
