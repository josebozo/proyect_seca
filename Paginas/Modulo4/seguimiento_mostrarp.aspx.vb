Public Class seguimiento_mostrarp
    Inherits System.Web.UI.Page
    Protected WithEvents Report1 As CrystalDecisions.Web.CrystalReportViewer

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Report1.DataBind()
    End Sub



    Private Sub Report1_Search(ByVal source As Object, ByVal e As CrystalDecisions.Web.SearchEventArgs) Handles Report1.Search
        Report1.SelectionFormula = "{@nombre} like " & Chr(34) & "*" & e.TextToSearch & "*" & Chr(34)
        Report1.DataBind()




    End Sub
End Class
