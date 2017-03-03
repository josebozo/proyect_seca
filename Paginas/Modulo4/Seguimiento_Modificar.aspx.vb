Imports System.Data.SqlClient
Public Class Seguimiento_Modificar1
    Inherits System.Web.UI.Page
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents L_alumnoimagen As System.Web.UI.WebControls.ListBox
    Protected WithEvents L_Alumno As System.Web.UI.WebControls.DropDownList
    Protected WithEvents SqlDataAdapter2 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents Grid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Public Shared DS As System.Data.DataSet
    Protected WithEvents SqlSelectCommand2 As System.Data.SqlClient.SqlCommand
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Public Shared DS2 As System.Data.DataSet

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand()
        Me.conn = New System.Data.SqlClient.SqlConnection()
        Me.SqlDataAdapter2 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand2 = New System.Data.SqlClient.SqlCommand()
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_comentarios", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("Expr1", "Expr1"), New System.Data.Common.DataColumnMapping("cod_alumno", "cod_alumno")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT Apellido + ', ' + Nombre AS Expr1, cod_alumno FROM SECA_comentarios GROUP " & _
        "BY cod_alumno, Apellido, Nombre"
        Me.SqlSelectCommand1.Connection = Me.conn
        '
        'conn
        '
        Me.conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=JON;packet size=4096"
        '
        'SqlDataAdapter2
        '
        Me.SqlDataAdapter2.SelectCommand = Me.SqlSelectCommand2
        Me.SqlDataAdapter2.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_comentarios", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("Fecha", "Fecha"), New System.Data.Common.DataColumnMapping("Area", "Area"), New System.Data.Common.DataColumnMapping("observacion", "observacion"), New System.Data.Common.DataColumnMapping("cod_obser", "cod_obser")})})
        '
        'SqlSelectCommand2
        '
        Me.SqlSelectCommand2.CommandText = "SELECT Fecha, Area, observacion, cod_obser FROM SECA_comentarios"
        Me.SqlSelectCommand2.Connection = Me.conn

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If (Page.IsPostBack = False) Then
            DS = New System.Data.DataSet()
            SqlDataAdapter1.Fill(DS, "Tables")
            L_Alumno.DataSource = DS.Tables("Tables").DefaultView
            L_alumnoimagen.DataSource = DS.Tables("Tables").DefaultView
            L_alumnoimagen.DataValueField = "cod_alumno"
            L_Alumno.DataTextField = "expr1"
            L_Alumno.DataBind()
            L_alumnoimagen.DataBind()
            L_Alumno.Items.Add("")
            L_Alumno.SelectedIndex = (L_Alumno.Items.Count - 1)
        End If
    End Sub

    Private Sub L_Alumno_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_Alumno.SelectedIndexChanged
        L_alumnoimagen.SelectedIndex = L_Alumno.SelectedIndex
        Me.SqlSelectCommand2.CommandText = "SELECT Fecha, Area, observacion,cod_obser FROM SECA_comentarios where cod_alumno=" & L_alumnoimagen.SelectedItem.Value
        DS2 = New System.Data.DataSet()
        SqlDataAdapter2.Fill(DS2, "Tables")
        Grid1.DataSource = DS2.Tables("Tables").DefaultView
        Grid1.DataBind()
    End Sub
End Class
