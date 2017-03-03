Imports System.Data.SqlClient
Public Class Reporte_Final_Evaluacion1
    Inherits System.Web.UI.Page
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents L_Alumno As System.Web.UI.WebControls.DropDownList
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents L_alumnoimagen As System.Web.UI.WebControls.ListBox
    Protected WithEvents L_Evaluacion As System.Web.UI.WebControls.DropDownList
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents SqlDataAdapter2 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents L_Evaluacionimagen As System.Web.UI.WebControls.ListBox
    Public Shared DS As System.Data.DataSet
    Public Shared DS2 As System.Data.DataSet
    Protected WithEvents CrystalReportViewer1 As CrystalDecisions.Web.CrystalReportViewer
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlSelectCommand2 As System.Data.SqlClient.SqlCommand
    Public Shared DS3 As System.Data.DataSet
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
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_N_Tratamiento", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("cod_alumno", "cod_alumno"), New System.Data.Common.DataColumnMapping("alumno", "alumno")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT cod_alumno, ident AS alumno FROM SECA_N_Tratamiento GROUP BY cod_alumno, i" & _
        "dent"
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
        Me.SqlDataAdapter2.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_N_Tratamiento", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("eva", "eva"), New System.Data.Common.DataColumnMapping("cod", "cod")})})
        '
        'SqlSelectCommand2
        '
        Me.SqlSelectCommand2.CommandText = "SELECT eva AS eva, cod_res_eva AS cod FROM SECA_N_Tratamiento GROUP BY eva, cod_r" & _
        "es_eva"
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
            L_Alumno.DataTextField = "Alumno"
            L_Alumno.DataBind()
            L_alumnoimagen.DataBind()
            L_Alumno.Items.Add("")
            L_Alumno.SelectedIndex = (L_Alumno.Items.Count - 1)
        End If
    End Sub
    Private Sub L_Evaluacion_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_Evaluacion.SelectedIndexChanged
        If Trim(L_Evaluacion.SelectedItem.Value) = "" Then Exit Sub
        L_Evaluacionimagen.SelectedIndex = L_Evaluacion.SelectedIndex
        L_alumnoimagen.SelectedIndex = L_Alumno.SelectedIndex
        'Response.Write(" Alumno -" & L_alumnoimagen.SelectedItem.Value & " - Alumno")
        'Response.Write("eva -" & L_Evaluacionimagen.SelectedItem.Value & "- Eva")
        CrystalReportViewer1.SelectionFormula = ("{SECA_final.cod_alumno} = " & L_alumnoimagen.SelectedItem.Value) & (" and {SECA_final.cod_res_eva} = " & L_Evaluacionimagen.SelectedItem.Value)

        CrystalReportViewer1.DataBind()
        CrystalReportViewer1.Visible = True
    End Sub

    Private Sub L_Alumno_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_Alumno.SelectedIndexChanged
        If Trim(L_Alumno.SelectedItem.Value) = "" Then Exit Sub
        L_alumnoimagen.SelectedIndex = L_Alumno.SelectedIndex
        'Me.SqlSelectCommand2.CommandText = "SELECT Evaluación AS eval, cod_eva FROM SECA_obser_eva_final where cod_alumno=" & L_alumnoimagen.SelectedItem.Value & " GROUP BY Evaluación, cod_eva ORDER BY Evaluación "
        'Response.Write(SqlSelectCommand2.CommandText)
        Me.SqlSelectCommand2.CommandText = "SELECT eva AS eva, cod_res_eva AS cod FROM SECA_N_Tratamiento where cod_alumno=" & L_alumnoimagen.SelectedItem.Value & " GROUP BY eva, cod_res_eva"
        DS2 = New System.Data.DataSet()
        SqlDataAdapter2.Fill(DS2, "Tables")
        L_Evaluacion.DataSource = DS2.Tables("Tables").DefaultView
        L_Evaluacionimagen.DataSource = DS2.Tables("Tables").DefaultView
        L_Evaluacionimagen.DataValueField = "cod"
        L_Evaluacion.DataTextField = "eva"
        L_Evaluacion.DataBind()
        L_Evaluacionimagen.DataBind()
        L_Evaluacion.Items.Add("")
        L_Evaluacion.SelectedIndex = (L_Evaluacion.Items.Count - 1)

    End Sub

End Class
