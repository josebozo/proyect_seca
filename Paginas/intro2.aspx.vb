Public Class intro2
    Inherits System.Web.UI.Page
    Protected WithEvents Grid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Image2 As System.Web.UI.WebControls.Image
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlInsertCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlInsertCommand1 = New System.Data.SqlClient.SqlCommand()
        Me.Conn = New System.Data.SqlClient.SqlConnection()
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand()
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.InsertCommand = Me.SqlInsertCommand1
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_evaluacion_citas", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("Nombre del Alumno", "Nombre del Alumno"), New System.Data.Common.DataColumnMapping("Evaluación", "Evaluación"), New System.Data.Common.DataColumnMapping("Fecha de Evaluación", "Fecha de Evaluación")})})
        '
        'SqlInsertCommand1
        '
        Me.SqlInsertCommand1.CommandText = "INSERT INTO SECA_evaluacion_citas([Nombre del Alumno], Evaluacion, [Fecha de la E" & _
        "valuacion]) VALUES (@Param3, @Evaluacion, @Param4)"
        Me.SqlInsertCommand1.Connection = Me.Conn
        Me.SqlInsertCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Param3", System.Data.SqlDbType.VarChar, 41, "Nombre del Alumno"))
        Me.SqlInsertCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Evaluacion", System.Data.SqlDbType.VarChar, 50, "Evaluación"))
        Me.SqlInsertCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Param4", System.Data.SqlDbType.VarChar, 10, "Fecha de Evaluación"))
        '
        'Conn
        '
        Me.Conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;persist security info=False;user id=" & _
        "reporte;workstation id=BOZOXP06;packet size=4096"
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT [Nombre del Alumno], Evaluacion AS Evaluación, [Fecha de la Evaluacion] AS" & _
        " [Fecha de Evaluación] FROM SECA_evaluacion_citas"
        Me.SqlSelectCommand1.Connection = Me.Conn

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If (Page.IsPostBack = False) Then
            Dim DS As System.Data.DataSet
            DS = New System.Data.DataSet()
            SqlDataAdapter1.Fill(DS, "Tables")
            Grid1.DataSource = DS.Tables("Tables").DefaultView
            Grid1.DataBind()
        End If
    End Sub

    Private Sub Grid1_PageIndexChanged(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Grid1.PageIndexChanged
        Grid1.CurrentPageIndex = e.NewPageIndex
        Dim DS As System.Data.DataSet
        DS = New System.Data.DataSet()
        SqlDataAdapter1.Fill(DS, "Tables")
        Grid1.DataSource = DS.Tables("Tables").DefaultView
        Grid1.DataBind()
    End Sub


    Private Sub Grid1_SortCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridSortCommandEventArgs) Handles Grid1.SortCommand
        Dim DS As System.Data.DataSet
        DS = New System.Data.DataSet()
        SqlDataAdapter1.Fill(DS, "Tables")
        DS.Tables("tables").DefaultView.Sort = e.SortExpression.ToString
        Grid1.DataSource = DS.Tables("Tables").DefaultView
        Grid1.DataBind()
    End Sub
End Class
