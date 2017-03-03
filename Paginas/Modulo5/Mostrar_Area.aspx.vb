Public Class Mostrar_Area
    Inherits System.Web.UI.Page
    REM    Protected WithEvents objMArea As seca.MArea
    Protected WithEvents SqlDataAdapter2 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand2 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlConnection1 As System.Data.SqlClient.SqlConnection
    Protected WithEvents Grid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents DataGrid2 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Public Shared DS As System.Data.DataSet
#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlDataAdapter2 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand2 = New System.Data.SqlClient.SqlCommand()
        Me.SqlConnection1 = New System.Data.SqlClient.SqlConnection()
        '
        'SqlDataAdapter2
        '
        Me.SqlDataAdapter2.SelectCommand = Me.SqlSelectCommand2
        Me.SqlDataAdapter2.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "Area_M5", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("Area", "Area"), New System.Data.Common.DataColumnMapping("Descripcion", "Descripcion"), New System.Data.Common.DataColumnMapping("Evalación", "Evalación")})})
        '
        'SqlSelectCommand2
        '
        Me.SqlSelectCommand2.CommandText = "SELECT Area, descripcion AS Descripcion, CASE evalua WHEN 1 THEN 'Realiza Evalauc" & _
        "ión' WHEN 0 THEN 'No Realiza Evalaución' END AS Evalación, cod_area FROM Area_M5" & _
        ""
        Me.SqlSelectCommand2.Connection = Me.SqlConnection1
        '
        'SqlConnection1
        '
        Me.SqlConnection1.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=BOZOXP06;packet size=4096"

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    ' Cargar los datos de la Tabla.
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If (Page.IsPostBack = False) Then
            'Dim DS As System.Data.DataSet
            DS = New System.Data.DataSet()
            SqlDataAdapter2.Fill(DS, "Tables")
            Grid1.DataSource = DS.Tables("Tables").DefaultView
            Grid1.DataBind()
        End If
    End Sub
    Private Sub Grid1_PageIndexChanged(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles Grid1.PageIndexChanged
        Grid1.CurrentPageIndex = e.NewPageIndex
        'Dim DS As System.Data.DataSet
        'DS = New System.Data.DataSet()
        'SqlDataAdapter2.Fill(DS, "Tables")
        Grid1.DataSource = DS.Tables("Tables").DefaultView
        Grid1.DataBind()
    End Sub
    ' Ordenar La Tabla
    Private Sub Grid1_SortCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridSortCommandEventArgs) Handles Grid1.SortCommand
        'Dim DS As System.Data.DataSet
        'DS = New System.Data.DataSet()
        'SqlDataAdapter2.Fill(DS, "Tables")
        DS.Tables("tables").DefaultView.Sort = e.SortExpression.ToString
        Grid1.DataSource = DS.Tables("Tables").DefaultView
        Grid1.DataBind()


    End Sub

    Private Sub buttonLoad_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        'Try
        '    Me.LoadDataSet()
        '    Me.masterDataGrid.SelectedIndex = -1
        '    Me.masterDataGrid.DataBind()
        'Catch eLoad As System.Exception
        '    Me.Response.Write(eLoad.Message)
        'End Try

    End Sub


End Class
