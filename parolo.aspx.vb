Imports System.Data
Imports System.Data.OleDb
Partial Class parolo
    Inherits System.Web.UI.Page
    Dim baglanti As New OleDbConnection("Provider=Microsoft.ACE.OleDB.12.0;Data Source=" & Server.MapPath("App_Data\ders.accdb"))
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Label3.Text = Nothing
        Label1.Visible = True
        TextBox2.Visible = True
        Button2.Visible = True
        Dim adp As New OleDbDataAdapter("select gizlisoru from uyler where kul_adi='" & TextBox1.Text & "'", baglanti)
        Dim dt As New DataTable
        adp.Fill(dt)
        Dim i As Integer = 0
        For Each satir In dt.Rows
            i += 1
            Label1.Text = satir(0)
        Next
        If i = 0 Then

        End If
        Label3.Text = "böyle bir kullanıcı adı yok"
        Label1.Visible = False
        TextBox2.Visible = False
        Button2.Visible = False
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If TextBox2.Text = Nothing Then
            Label4.Text = "Boş Bırakmayınız"
        Else
            Label4.Text = Nothing
        End If
        Label2.Visible = True
        Dim adp As New OleDbDataAdapter("select sifre from uyler where kul_adi='" & TextBox1.Text & "' and gizlicevap='" & TextBox2.Text & "'", baglanti)
        Dim dt As New DataTable
        adp.Fill(dt)
        Dim i As Integer = 0
        For Each satir In dt.Rows
            i += 1
            Label2.Text = satir(0)
        Next
        If i = 0 Then
            Label4.Text = "cevap yanlış"
        End If
    End Sub
End Class



        