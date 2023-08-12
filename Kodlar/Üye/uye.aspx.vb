Imports System.Data
Imports System.Data.OleDb
Partial Class uyeol
    Inherits System.Web.UI.Page
    Dim baglanti As New OleDbConnection("provider=Microsoft.ace.oledb.12.0;data source=" & Server.MapPath("App_data\ders.accdb"))
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim adp As New OleDbDataAdapter("select * from uyler where kul_adi='" & TextBox3.Text & "'", baglanti)
        Dim dt As New DataTable
        adp.Fill(dt)
        Dim i As Integer = 0
        For Each satir In dt.Rows
            i = i + 1
        Next
        If i = 0 Then
            Try
                Dim cmnd As New OleDbCommand
                cmnd.Connection = baglanti
                cmnd.CommandText = "insert into uyler(ad,soyad,kul_adi,sifre,eposta,gizlisoru,gizlicevap) values (@ad,@soyad,@kul_adi,@sifre,@eposta,@gizlisoru,@gizlicevap)"
                cmnd.Parameters.Add("@ad", OleDbType.VarChar).Value = TextBox1.Text
                cmnd.Parameters.Add("@soyad", OleDbType.VarChar).Value = TextBox2.Text
                cmnd.Parameters.Add("@kul_adi", OleDbType.VarChar).Value = TextBox3.Text
                cmnd.Parameters.Add("@sifre", OleDbType.VarChar).Value = TextBox4.Text
                cmnd.Parameters.Add("@eposta", OleDbType.VarChar).Value = TextBox5.Text
                cmnd.Parameters.Add("@gizlisoru", OleDbType.VarChar).Value = TextBox6.Text
                cmnd.Parameters.Add("@gizlicevap", OleDbType.VarChar).Value = TextBox7.Text

                baglanti.Open()
                cmnd.ExecuteNonQuery()
                Label1.Text = "kayıt oldunuz"
                baglanti.Close()
            Catch ex As Exception
                Label1.Text = "hata oluştu"
            End Try
        Else
            Label1.Text = "Kullanıcı adı kullanımda"
        End If
    End Sub
End Class
