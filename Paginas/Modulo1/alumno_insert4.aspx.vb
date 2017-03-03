Public Class alumno_insert4
    Inherits System.Web.UI.Page
    Protected WithEvents T_usuario As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_exp As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button3 As System.Web.UI.WebControls.Button
    Protected WithEvents T_sintesis As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_observacion As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_resultado As System.Web.UI.WebControls.DropDownList
    Protected WithEvents T_recomendaciones As System.Web.UI.WebControls.TextBox
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Image2 As System.Web.UI.WebControls.Image
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Button2 As System.Web.UI.WebControls.Button

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.Conn = New System.Data.SqlClient.SqlConnection()
        '
        'Conn
        '
        Me.Conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=BOZOXP06;packet size=4096"

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        'Me.T_usuario.Text = "Jose"
        'Me.T_exp.Text = "8"
        Me.T_usuario.Text = Request.Params("user")
        Me.T_exp.Text = Request.Params("cod")
    End Sub


    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim queri As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Me.Conn.Open()
        queri = "update alumno_m1 set "
        queri = queri & " sintesis='" & T_sintesis.Text & " '"
        queri = queri & ", resultado='" & L_resultado.SelectedItem.Value & " '"
        queri = queri & ", recomendaciones='" & T_recomendaciones.Text & " '"
        queri = queri & ", observacion='" & T_observacion.Text & " '"
        queri = queri & " where cod_alumno = " & Val(Me.T_exp.Text)
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        Me.Conn.Close()
        Response.Redirect("..\intro2.aspx")

    End Sub


    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        T_sintesis.Text = ""
        T_observacion.Text = ""
        L_resultado.SelectedIndex = -1
        T_recomendaciones.Text = ""
    End Sub
End Class
