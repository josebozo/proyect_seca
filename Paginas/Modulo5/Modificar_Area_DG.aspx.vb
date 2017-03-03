Public Class Modificar_Area_DG
    Inherits System.Web.UI.Page
    Protected WithEvents DataGrid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlConnection1 As System.Data.SqlClient.SqlConnection
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Public Shared DS As System.Data.DataSet
#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.conn = New System.Data.SqlClient.SqlConnection()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlConnection1 = New System.Data.SqlClient.SqlConnection()
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand()
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "Area_M5", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("Area", "Area"), New System.Data.Common.DataColumnMapping("Descripcion", "Descripcion"), New System.Data.Common.DataColumnMapping("Evaluacion", "Evaluacion"), New System.Data.Common.DataColumnMapping("cod_area", "cod_area")})})
        '
        'SqlConnection1
        '
        Me.SqlConnection1.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=JON;packet size=4096"
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT Area AS Area, descripcion AS Descripcion, CASE evalua WHEN 0 THEN 'No Real" & _
        "iza Evaluaciones' WHEN 1 THEN 'Realiza Evaluaciones' END AS Evaluacion, cod_area" & _
        " FROM Area_M5"
        Me.SqlSelectCommand1.Connection = Me.SqlConnection1

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If (Page.IsPostBack = False) Then
            'Put user code to initialize the page here
            DS = New System.Data.DataSet()
            SqlDataAdapter1.Fill(DS, "Tables")
            DataGrid1.DataSource = DS.Tables("Tables").DefaultView
            DataGrid1.DataBind()
        End If
    End Sub
    Private Sub Grid1_PageIndexChanged(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles DataGrid1.PageIndexChanged
        DataGrid1.CurrentPageIndex = e.NewPageIndex
        'Dim DS As System.Data.DataSet
        'DS = New System.Data.DataSet()
        'SqlDataAdapter1.Fill(DS, "Tables")
        DataGrid1.DataSource = DS.Tables("Tables").DefaultView
        DataGrid1.DataBind()
    End Sub

End Class
