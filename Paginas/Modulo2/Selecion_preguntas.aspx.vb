Public Class Selecion_preguntas
    Inherits System.Web.UI.Page
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents Grid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents Textbox1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents ListBox1 As System.Web.UI.WebControls.ListBox
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents Button2 As System.Web.UI.WebControls.Button
    Protected WithEvents T_usuario As System.Web.UI.WebControls.TextBox

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
        "nfo=True;user id=sa;workstation id=BOZOXP06;packet size=4096"
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_PREGUNTAS", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("Numero de Pregunta", "Numero de Pregunta"), New System.Data.Common.DataColumnMapping("Pregunta", "Pregunta")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT Cod_pregunta AS [Numero de Pregunta], pregunta AS Pregunta FROM SECA_PREGU" & _
        "NTAS"
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
        Dim DS As System.Data.DataSet
        DS = New System.Data.DataSet()
        SqlDataAdapter1.Fill(DS, "Tables")
        Grid1.DataSource = DS.Tables("Tables").DefaultView
        Grid1.DataBind()


    End Sub


    Private Sub Grid1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles Grid1.ItemCommand
        'Pregunta en Formato Nº 1, Grupo 1, Nº: 1005
        Response.Write(e.CommandArgument())
        Response.Write("COÑOOOOOOO!!!!!")
        Me.Label1.Text = "Coño"
    End Sub



End Class
