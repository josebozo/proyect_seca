Public Class Mostrar_alumno
    Inherits System.Web.UI.Page
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents Image2 As System.Web.UI.WebControls.Image
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Grid1 As System.Web.UI.WebControls.DataGrid

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.Conn = New System.Data.SqlClient.SqlConnection()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand()
        '
        'Conn
        '
        Me.Conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=JON;packet size=4096"
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_nom_alumn", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("Alumno", "Alumno"), New System.Data.Common.DataColumnMapping("cod", "cod")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT Alumno, cod FROM SECA_nom_alumn"
        Me.SqlSelectCommand1.Connection = Me.Conn

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        If (Page.IsPostBack = False) Then
            Dim DS As System.Data.DataSet
            DS = New System.Data.DataSet()
            SqlDataAdapter1.Fill(DS, "Tables")
            Grid1.DataSource = DS.Tables("Tables").DefaultView
            Grid1.DataBind()
        End If
    End Sub

    Sub Grid_Command(ByVal sender As Object, ByVal e As DataGridCommandEventArgs)
        Label1.Text = ""
        Label2.Text = ""
        If Trim(e.CommandName) = "Page" Then Exit Sub
        Label1.Text = e.Item.Cells(0).Text
        Label2.Text = e.Item.Cells(1).Text
        'Label4.Text = e.Item.Cells(3).Text

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim queri As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Me.Conn.Open()
        If Trim(Label1.Text) = "" Then Label1.Text = "0"
        queri = "update Alumno_M1 set activo=0 where cod_alumno=" & Label1.Text
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        Me.Conn.Close()

        Dim DS As System.Data.DataSet
        DS = New System.Data.DataSet()
        SqlDataAdapter1.Fill(DS, "Tables")
        Grid1.DataSource = DS.Tables("Tables").DefaultView
        Grid1.DataBind()
        Label1.Text = ""
        Label2.Text = ""
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
