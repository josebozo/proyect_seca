Imports System.Data.SqlClient
Imports System.Web.Security
Public Class reunion_clinica_modi
    Inherits System.Web.UI.Page
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents L_alum As System.Web.UI.WebControls.DropDownList
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents L_cod_alum As System.Web.UI.WebControls.ListBox
    Protected WithEvents L_eva As System.Web.UI.WebControls.DropDownList
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents L_cod_eva As System.Web.UI.WebControls.ListBox
    Protected WithEvents Table1 As System.Web.UI.HtmlControls.HtmlTable
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlDataAdapter2 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlSelectCommand2 As System.Data.SqlClient.SqlCommand
    Protected WithEvents Button2 As System.Web.UI.WebControls.Button
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents t_error As System.Web.UI.WebControls.Label
    Public Shared tkt As FormsAuthenticationTicket
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
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_alumno_RC", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("cod", "cod"), New System.Data.Common.DataColumnMapping("alumno", "alumno")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT cod, alumno FROM SECA_alumno_RC"
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
        " INNER JOIN Evaluacion_M2 ON Res_eva_M2.cod_eva = Evaluacion_M2.cod_eva WHERE (R" & _
        "es_eva_M2.Rclinica = 1)"
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
            Dim queri As String
            Dim Comm As System.Data.SqlClient.SqlCommand
            Dim ck As HttpCookie
            ck = Request.Cookies("seca.logon")
            tkt = FormsAuthentication.Decrypt(ck.Value)
            Conn.Open()
            queri = "select perfil from usuarios_m5 where Activo=1 and cod_user=" & Trim(tkt.UserData)
            Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            Comm.ExecuteNonQuery()
            Dim name As String = Comm.ExecuteScalar()
            If Trim(name) = "Administrador" Then
                'Button2.Enabled = True
            Else
                Exit Sub
            End If
            Me.Conn.Close()


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
            Button2.Enabled = False
            Exit Sub
        End If
        L_cod_alum.SelectedIndex = L_alum.SelectedIndex
        Me.SqlSelectCommand2.CommandText = "SELECT Res_eva_M2.cod_alumno AS cod_a, Evaluacion_M2.nombre + ', ' + CONVERT (cha" & _
        "r(10), Res_eva_M2.fecha_eva, 103) AS eva, Res_eva_M2.cod_res_eva FROM Res_eva_M2" & _
        " INNER JOIN Evaluacion_M2 ON Res_eva_M2.cod_eva = Evaluacion_M2.cod_eva WHERE (R" & _
        "es_eva_M2.Rclinica = 1) and (Res_eva_M2.cod_alumno=" & L_cod_alum.SelectedItem.Value & ")"

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



    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim queri As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Conn.Open()
        L_cod_eva.SelectedIndex = L_eva.SelectedIndex
        queri = "update Res_eva_M2 set Rclinica=0 where cod_res_eva=" & L_cod_eva.SelectedItem.Value
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()

        Conn.Close()
        t_error.Text = "La Evaluación ahora se encuentra lista para modificaciones en la pantalla de Reunión Clínica"
        L_alum.Enabled = False
        L_eva.Enabled = False
        Button2.Enabled = False
        Button1.Enabled = False
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        L_alum.Enabled = True
        L_eva.Enabled = False
        Button2.Enabled = False
    End Sub

    Private Sub L_eva_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_eva.SelectedIndexChanged
        If Trim(L_eva.SelectedItem.Text) <> "" Then
            Button2.Enabled = True
        Else
            Button2.Enabled = False
        End If

    End Sub
End Class
