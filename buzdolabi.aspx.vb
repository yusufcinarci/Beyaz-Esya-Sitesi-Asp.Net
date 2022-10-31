Imports System.Data
Imports System.Data.OleDb
Partial Class buzdolabi
    Inherits System.Web.UI.Page

    Dim baglan As New OleDbConnection("provider=microsoft.ace.oledb.12.0;data source=" & Server.mappath("app_data/ders.accdb"))

    Protected Sub DataList1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles DataList1.ItemCommand
        If e.CommandName = "bilgi" Then
            Response.Redirect("ozellikler2.aspx?Kimlik=" + e.CommandArgument)
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
