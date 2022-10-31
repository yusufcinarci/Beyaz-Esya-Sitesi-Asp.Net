Imports System.Data
Imports System.Data.OleDb
Partial Class televizyon
    Inherits System.Web.UI.Page


    Dim baglan As New OleDbConnection("Provider=Microsoft.ACE.OleDB.12.0;Data Source=" & Server.MapPath("App_Data\ders.accdb"))
    Protected Sub DataList2_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles DataList2.ItemCommand
        If e.CommandName = "bilgi" Then
            Response.Redirect("ozellikler5.aspx?Kimlik=" + e.CommandArgument)
        End If
    End Sub
End Class
