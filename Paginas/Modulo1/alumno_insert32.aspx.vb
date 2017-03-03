Public Class alumno_insert32
    Inherits System.Web.UI.Page
    Protected WithEvents T_usuario As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_exp As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button2 As System.Web.UI.WebControls.Button
    Protected WithEvents T_consulta As System.Web.UI.WebControls.TextBox
    Protected WithEvents l_filiacion As System.Web.UI.WebControls.DropDownList
    Protected WithEvents l_custodia As System.Web.UI.WebControls.DropDownList
    Protected WithEvents T_obs_custo As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_padre_union As System.Web.UI.WebControls.DropDownList
    Protected WithEvents l_lugar_fami As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Image2 As System.Web.UI.WebControls.Image
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Button3 As System.Web.UI.WebControls.Button

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
        Me.T_usuario.Text = Request.Params("user")
        Me.T_exp.Text = Request.Params("cod")
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim queri As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Me.Conn.Open()
        queri = "update alumno_m1 set motivo='" & Me.T_consulta.Text & "', filicion='" & Me.l_filiacion.SelectedItem.Value & "', custodia='" & Me.l_custodia.SelectedItem.Value & "', custodia_obs='" & Me.T_obs_custo.Text & "', union_padres='" & Me.L_padre_union.SelectedItem.Value & "',  status_familia='" & Me.l_lugar_fami.SelectedItem.Value & "' where cod_alumno =" & Val(Me.T_exp.Text)
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        Me.Conn.Close()
        Response.Redirect("alumno_insert33.aspx?cod=" & Val(Me.T_exp.Text) & "&user=" & Me.T_usuario.Text)
    End Sub



    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        T_consulta.Text = ""
        l_filiacion.SelectedIndex = -1
        l_custodia.SelectedIndex = -1
        T_obs_custo.Text = ""
        L_padre_union.SelectedIndex = -1
        l_lugar_fami.SelectedIndex = -1
    End Sub
End Class
