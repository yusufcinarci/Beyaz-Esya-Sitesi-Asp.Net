Imports System.Data
Imports System.Data.OleDb
Partial Class ozellikler
    Inherits System.Web.UI.Page
    Dim baglan As New OleDbConnection("Provider=Microsoft.ACE.OleDB.12.0;Data Source=" & Server.MapPath("App_Data\ders.accdb"))

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim adp As New OleDbDataAdapter("select * from bulasik where Kimlik=" & Request.QueryString("Kimlik") & "", baglan)
        Dim dt As New DataTable
        adp.Fill(dt)
        For Each satir In dt.Rows
            Label1.Text = satir(1)
            Label2.Text = satir(2)
            Image1.ImageUrl = satir(3)
            Label4.Text = satir(4)
            Label5.Text = satir(5)
        Next
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        baglan.Open()
        Dim cmd As New OleDbCommand
        cmd.CommandText = "insert into sepet(Model,Açıklama,Resim,Fiyat,EnerjiTüketimi)values(@Model,@Açıklama,@Resim,@Fiyat,@EnerjiTüketimi)"
        cmd.Connection = baglan
        cmd.Parameters.Add("@Model", OleDbType.VarChar).Value = Label1.Text
        cmd.Parameters.Add("@Açıklama", OleDbType.VarChar).Value = Label2.Text
        cmd.Parameters.Add("@Resim", OleDbType.VarChar).Value = Image1.ImageUrl
        cmd.Parameters.Add("@Fiyat", OleDbType.VarChar).Value = Label4.Text
        cmd.Parameters.Add("@EnerjiTüketimi", OleDbType.VarChar).Value = Label5.Text
        cmd.ExecuteNonQuery()
        baglan.Close()
    End Sub
End Class
