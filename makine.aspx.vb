
Partial Class makine
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DataList1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles DataList1.ItemCommand
        If e.CommandName = "bilgi" Then
            Response.Redirect("ozellikler3.aspx?Kimlik=" + e.CommandArgument)
        End If
    End Sub
End Class
