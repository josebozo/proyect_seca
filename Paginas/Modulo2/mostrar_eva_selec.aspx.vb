Public Class mostrar_eva_selec
    Inherits System.Web.UI.Page
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents L_alum As System.Web.UI.WebControls.DropDownList
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents L_cod_alum As System.Web.UI.WebControls.ListBox
    Protected WithEvents L_eva As System.Web.UI.WebControls.DropDownList
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents L_cod_eva As System.Web.UI.WebControls.ListBox
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlDataAdapter2 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand2 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents Table1 As System.Web.UI.HtmlControls.HtmlTable

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.Conn = New System.Data.SqlClient.SqlConnection()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand()
        Me.SqlDataAdapter2 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand2 = New System.Data.SqlClient.SqlCommand()
        '
        'Conn
        '
        Me.Conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=BOZOXP06;packet size=4096"
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "Alumno_M1", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("alumno", "alumno"), New System.Data.Common.DataColumnMapping("cod", "cod")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT Alumno_M1.apellido + ', ' + Alumno_M1.nombre AS alumno, Alumno_M1.cod_alum" & _
        "no AS cod FROM Alumno_M1 INNER JOIN Res_eva_M2 ON Alumno_M1.cod_alumno = Res_eva" & _
        "_M2.cod_alumno WHERE (Alumno_M1.Activo = 1) GROUP BY Alumno_M1.apellido + ', ' +" & _
        " Alumno_M1.nombre, Alumno_M1.cod_alumno"
        Me.SqlSelectCommand1.Connection = Me.Conn
        '
        'SqlDataAdapter2
        '
        Me.SqlDataAdapter2.SelectCommand = Me.SqlSelectCommand2
        Me.SqlDataAdapter2.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "Res_eva_M2", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("cod_a", "cod_a"), New System.Data.Common.DataColumnMapping("eva", "eva"), New System.Data.Common.DataColumnMapping("cod_res_eva", "cod_res_eva")})})
        '
        'SqlSelectCommand2
        '
        Me.SqlSelectCommand2.CommandText = "SELECT Res_eva_M2.cod_alumno AS cod_a, Evaluacion_M2.nombre + ', ' + CONVERT (cha" & _
        "r(10), Res_eva_M2.fecha_eva, 103) AS eva, Res_eva_M2.cod_res_eva FROM Res_eva_M2" & _
        " INNER JOIN Evaluacion_M2 ON Res_eva_M2.cod_eva = Evaluacion_M2.cod_eva"
        Me.SqlSelectCommand2.Connection = Me.Conn

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If (Page.IsPostBack = False) Then
            Dim DS2 As System.Data.DataSet
            DS2 = New System.Data.DataSet()
            SqlDataAdapter1.Fill(DS2, "Tables")
            L_alum.DataSource = DS2.Tables("Tables").DefaultView
            L_cod_alum.DataSource = DS2.Tables("Tables").DefaultView
            L_cod_alum.DataValueField = "cod"
            L_alum.DataTextField = "Alumno"
            L_alum.DataBind()
            L_cod_alum.DataBind()
            L_alum.Items.Add("")
            L_alum.SelectedIndex = (L_alum.Items.Count - 1)
        End If
    End Sub

    Private Sub L_alum_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_alum.SelectedIndexChanged
        If Trim(L_alum.SelectedItem.Value) = "" Then
            'Button2.Enabled = False
            Exit Sub
        End If
        L_cod_alum.SelectedIndex = L_alum.SelectedIndex
        Me.SqlSelectCommand2.CommandText = "SELECT Res_eva_M2.cod_alumno AS cod_a, Evaluacion_M2.nombre + ', ' + CONVERT (char(10), Res_eva_M2.fecha_eva, 103) AS eva, Res_eva_M2.cod_res_eva FROM Res_eva_M2 INNER JOIN Evaluacion_M2 ON Res_eva_M2.cod_eva = Evaluacion_M2.cod_eva where (Res_eva_M2.cod_alumno=" & L_cod_alum.SelectedItem.Value & ")"
        Dim DS As System.Data.DataSet
        DS = New System.Data.DataSet()
        SqlDataAdapter2.Fill(DS, "Tables")
        L_eva.DataSource = DS.Tables("Tables").DefaultView
        L_cod_eva.DataSource = DS.Tables("Tables").DefaultView
        L_cod_eva.DataValueField = "cod_res_eva"
        L_eva.DataTextField = "eva"
        L_eva.DataBind()
        L_cod_eva.DataBind()
        L_eva.Items.Add("")
        L_eva.SelectedIndex = (L_eva.Items.Count - 1)
        L_eva.Enabled = True
        L_alum.Enabled = False

    End Sub

    Private Sub L_eva_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_eva.SelectedIndexChanged
        L_cod_eva.SelectedIndex = L_eva.SelectedIndex

        Response.Redirect("mostrar_eva2.aspx?cod_a=" & L_cod_alum.SelectedItem.Value & "&cod_e=" & L_cod_eva.SelectedItem.Value & "&alumno=" & L_alum.SelectedItem.Value & "&eva=" & L_eva.SelectedItem.Text & "")

    End Sub
End Class
