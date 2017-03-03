Public Class Realizar_eva
    Inherits System.Web.UI.Page
    Protected WithEvents Button2 As System.Web.UI.WebControls.Button
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents L_alum As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlDataAdapter2 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents L_cod_eva As System.Web.UI.WebControls.ListBox
    Protected WithEvents L_cod_alum As System.Web.UI.WebControls.ListBox
    Protected WithEvents t_error As System.Web.UI.WebControls.Label
    Protected WithEvents SqlSelectCommand2 As System.Data.SqlClient.SqlCommand
    Protected WithEvents L_eva As System.Web.UI.WebControls.DropDownList

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
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "Evaluacion_M2", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("cod", "cod"), New System.Data.Common.DataColumnMapping("eva", "eva")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT cod_eva AS cod, nombre AS eva FROM Evaluacion_M2"
        Me.SqlSelectCommand1.Connection = Me.Conn
        '
        'SqlDataAdapter2
        '
        Me.SqlDataAdapter2.SelectCommand = Me.SqlSelectCommand2
        Me.SqlDataAdapter2.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_alumnos_con_citas", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("alumno", "alumno"), New System.Data.Common.DataColumnMapping("cod", "cod")})})
        '
        'SqlSelectCommand2
        '
        Me.SqlSelectCommand2.CommandText = "SELECT alumno, cod FROM SECA_alumnos_con_citas GROUP BY alumno, cod"
        Me.SqlSelectCommand2.Connection = Me.Conn

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        t_error.Text = ""
        If (Page.IsPostBack = False) Then
            Dim DS As System.Data.DataSet
            DS = New System.Data.DataSet()
            SqlDataAdapter1.Fill(DS, "Tables")
            L_eva.DataSource = DS.Tables("Tables").DefaultView
            L_cod_eva.DataSource = DS.Tables("Tables").DefaultView
            L_cod_eva.DataValueField = "cod"
            L_eva.DataTextField = "eva"
            L_eva.DataBind()
            L_cod_eva.DataBind()
            L_eva.Items.Add("")
            L_eva.SelectedIndex = (L_eva.Items.Count - 1)

            Dim DS2 As System.Data.DataSet
            DS2 = New System.Data.DataSet()
            SqlDataAdapter2.Fill(DS2, "Tables")
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



    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        L_cod_alum.SelectedIndex = Me.L_alum.SelectedIndex
        L_cod_eva.SelectedIndex = Me.L_eva.SelectedIndex
        Dim queri2 As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Conn.Open()
        queri2 = "select count(cod_res_eva) from Res_eva_M2 where cod_eva=" & L_cod_eva.SelectedItem.Value & " and  fecha_eva='" & Format(Now, "dd/MM/yyyy") & "' and cod_alumno=" & L_cod_alum.SelectedItem.Value
        'Response.Write(queri2)
        Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
        Comm.ExecuteNonQuery()
        Dim cant As Integer = Comm.ExecuteScalar
        If cant = 0 Then
            Conn.Close()
            Response.Redirect("Realizar_eva2.aspx?cod_a=" & L_cod_alum.SelectedItem.Value & "&cod_e=" & L_cod_eva.SelectedItem.Value & "&alumno=" & L_alum.SelectedItem.Value & "&eva=" & L_eva.SelectedItem.Text & "")
        Else
            Conn.Close()
            t_error.Text = "Esta evaluación ya fue realizada"
        End If
    End Sub
End Class
