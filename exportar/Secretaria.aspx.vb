Imports System.Web.Security
Public Class Secretaria
    Inherits System.Web.UI.Page
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label

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
        Dim tkt As FormsAuthenticationTicket
        Dim ck As HttpCookie

        Me.Label1.Text = "Fecha: " & Format(Now, "dd/MM/yyyy")

        ck = Request.Cookies("seca.logon")
        tkt = FormsAuthentication.Decrypt(ck.Value)
        Label2.Text = "Usuario: " & tkt.Name
    End Sub

End Class
