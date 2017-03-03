Imports System.Data.SqlClient
Public Class Seguimiento_modificar
    Inherits System.Web.UI.Page
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents T_observacion As System.Web.UI.WebControls.TextBox
    Protected WithEvents t_fecha As System.Web.UI.WebControls.TextBox
    Protected WithEvents Reset As System.Web.UI.WebControls.Button
    Protected WithEvents aceptar As System.Web.UI.WebControls.Button
    Protected WithEvents Pie As System.Web.UI.WebControls.Label
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents Otro As System.Web.UI.WebControls.Button
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents t_area As System.Web.UI.WebControls.TextBox

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand()
        Me.conn = New System.Data.SqlClient.SqlConnection()
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_comentarios", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("Expr1", "Expr1"), New System.Data.Common.DataColumnMapping("cod_alumno", "cod_alumno"), New System.Data.Common.DataColumnMapping("Area", "Area"), New System.Data.Common.DataColumnMapping("observacion", "observacion"), New System.Data.Common.DataColumnMapping("Fecha", "Fecha"), New System.Data.Common.DataColumnMapping("cod_obser", "cod_obser"), New System.Data.Common.DataColumnMapping("cod_area", "cod_area")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT Apellido + ', " & Microsoft.VisualBasic.ChrW(13) & Microsoft.VisualBasic.ChrW(10) & "    ' + Nombre AS Expr1, cod_alumno, Area, observacion, Fe" & _
        "cha, cod_obser, cod_area FROM SECA_comentarios GROUP BY cod_alumno, Apellido, No" & _
        "mbre, Area, observacion, Fecha, cod_obser, cod_area"
        Me.SqlSelectCommand1.Connection = Me.conn
        '
        'conn
        '
        Me.conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=JON;packet size=4096"

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If (Page.IsPostBack = False) Then
            Dim queri, alumno As String
            Dim i As Integer
            Dim Comm As System.Data.SqlClient.SqlCommand
            Dim objDR As SqlDataReader

            Me.conn.Open()
            'Traerme los Valores completos
            queri = " SELECT Apellido + ',' + Nombre AS Expr1, cod_alumno, Area, observacion, Fecha FROM SECA_comentarios where cod_obser='" & Request.Params("cod_obser") & "'"
            Comm = New System.Data.SqlClient.SqlCommand(queri, conn)
            Comm.ExecuteNonQuery()
            'Response.Write(queri)
            objDR = Comm.ExecuteReader(System.Data.CommandBehavior.CloseConnection)
            While objDR.Read
                Label1.Text = objDR.GetValue(0)
                t_area.Text = objDR.GetValue(2)
                T_observacion.Text = objDR.GetValue(3)
                t_fecha.Text = objDR.GetValue(4)
            End While
            Me.t_fecha.Enabled = False
            Me.conn.Close()
        End If
    End Sub

    Private Sub Otro_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Otro.Click
        Response.Redirect("seguimiento_modificar.aspx")
    End Sub

    Private Sub Reset_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Reset.Click
        T_observacion.Text = ""
    End Sub

    Private Sub aceptar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles aceptar.Click
        Dim Comm As System.Data.SqlClient.SqlCommand
        Dim objDR As SqlDataReader
        Dim queri
        conn.Open()
        'Actualizar los Valores completos
        queri = " update seca_comentarios set observacion='" & Me.T_observacion.Text & "' where cod_obser='" & Request.Params("cod_obser") & "'"
        Comm = New System.Data.SqlClient.SqlCommand(queri, conn)
        Comm.ExecuteNonQuery()
        conn.Close()
        Pie.Visible = True
        Pie.Text = "Observaciones han sido Modificada."
        Reset.Enabled = False
        aceptar.Enabled = False
        T_observacion.Enabled = False
    End Sub
End Class
