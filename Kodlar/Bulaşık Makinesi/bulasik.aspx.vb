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

  
    
    Protected Sub DataList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DataList1.SelectedIndexChanged

    End Sub
End Class
