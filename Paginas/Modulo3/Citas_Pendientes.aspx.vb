Public Class Citas_Pendientes1
    Inherits System.Web.UI.Page
    Protected WithEvents CrystalReportViewer1 As CrystalDecisions.Web.CrystalReportViewer

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
        DataBind()



    End Sub


    Private Sub CrystalReportViewer1_Search(ByVal source As Object, ByVal e As CrystalDecisions.Web.SearchEventArgs) Handles CrystalReportViewer1.Search
        CrystalReportViewer1.SelectionFormula = "{SECA_citas.Alumno} like " & Chr(34) & "*" & e.TextToSearch & "*" & Chr(34)
        Me.CrystalReportViewer1.DataBind()
    End Sub
End Class
