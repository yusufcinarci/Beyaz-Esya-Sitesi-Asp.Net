Imports System.Data
Imports System.Data.OleDb
Partial Class sepet
    Inherits System.Web.UI.Page
    Dim baglan As New OleDbConnection("Provider=Microsoft.ACE.OleDB.12.0;Data Source=" & Server.MapPath("App_Data\ders.accdb"))
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        baglan.Open()
        Dim cmnd As New OleDbCommand
        cmnd.Connection = baglan
        cmnd.CommandText = ("delete * from sepet")
        cmnd.ExecuteNonQuery()
        baglan.Close()

    End Sub
End Class
