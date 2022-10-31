Imports System.Data
Imports System.Data.OleDb
Partial Class buzdolabiekle
    Inherits System.Web.UI.Page
    Dim baglanti As New OleDbConnection("Provider=Microsoft.ACE.OleDB.12.0;Data Source=" & Server.MapPath("App_Data\ders.accdb"))
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim dosyaad As String
        If FileUpload1.HasFile Then
            dosyaad = FileUpload1.FileName
            FileUpload1.SaveAs(Server.MapPath("buzdolabi\" + dosyaad))
        End If
        baglanti.Open()
        Dim cmd As New OleDbCommand
        cmd.CommandText = "insert into buzdolabi(Model,Açıklama,Resim)values(@Model,@Açıklama,@Resim)"
        cmd.Connection = baglanti
        cmd.Parameters.Add("@Model", OleDbType.VarChar).Value = TextBox1.Text
        cmd.Parameters.Add("@Açıklama", OleDbType.VarChar).Value = TextBox2.Text
        cmd.Parameters.Add("@Resim", OleDbType.VarChar).Value = "buzdolabi\" & dosyaad
        cmd.ExecuteNonQuery()
        Label2.Text = "Ürün Kaydedildi"
        baglanti.Close()
    End Sub
End Class
