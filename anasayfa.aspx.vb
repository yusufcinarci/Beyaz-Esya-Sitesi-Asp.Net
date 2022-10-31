Imports System.Data
Imports System.Data.OleDb

Partial Class anasayfa
    Inherits System.Web.UI.Page
    Dim baglan As New OleDbConnection("Provider=Microsoft.ACE.OleDB.12.0;Data Source=" & Server.MapPath("App_Data\ders.accdb"))

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("kadi") = TextBox1.Text
        Dim sifre As String = TextBox2.Text
        Dim adp As New OleDbDataAdapter("select * from uyler where kul_adi='" & Session("kadi") & "' and sifre='" & sifre & "'", baglan)
        Dim dt As New DataTable
        adp.Fill(dt)
        Dim i As Integer = 0
        For Each satir In dt.Rows
            i += 1
            Session("id") = satir(0)
            Session("ad") = satir(1)
            Session("soyad") = satir(2)
            Session("yetki") = satir(8)
        Next
        If i = 0 Then
            Label1.Text = "kullanıcı adı ve şifre hatalı"
            'Else
            '    If Session("yetki") = "admin" Then
            '        Response.Redirect("buzdolabiekle.aspx")
        Else
            Response.Redirect("buzdolabi.aspx")
            'End If
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("r1") = False
        Session("r2") = False
        Session("r3") = False
        Session("r4") = False

    End Sub


End Class
