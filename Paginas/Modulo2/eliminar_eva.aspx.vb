Imports System.Data.SqlClient
Imports System.Web.Security
Public Class eliminar_eva
    Inherits System.Web.UI.Page
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents L_eva As System.Web.UI.WebControls.DropDownList
    Protected WithEvents L_cod_eva As System.Web.UI.WebControls.ListBox
    Protected WithEvents t_error As System.Web.UI.WebControls.Label
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents Table2 As System.Web.UI.HtmlControls.HtmlTable
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Public Shared DS As System.Data.DataSet
    Public Shared tkt As FormsAuthenticationTicket
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
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "Evaluacion_M2", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("eva", "eva"), New System.Data.Common.DataColumnMapping("cod", "cod")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT nombre AS eva, cod_eva AS cod FROM Evaluacion_M2"
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
                Button1.Enabled = True
            End If
            Me.Conn.Close()
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
        End If
    End Sub



    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim queri As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        L_cod_eva.SelectedIndex = L_eva.SelectedIndex
        Conn.Open()
        queri = "select count(cod_eva) from res_eva_m2 where cod_eva=" & L_cod_eva.SelectedItem.Value
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        Dim cant As Integer = Comm.ExecuteScalar()
        If cant = 0 Then
            queri = "delete from evaluacion_m2 where cod_eva=" & L_cod_eva.SelectedItem.Value
            Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            Comm.ExecuteNonQuery()
            queri = "delete from preguntas_m2 where cod_eva=" & L_cod_eva.SelectedItem.Value
            Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            Comm.ExecuteNonQuery()
            t_error.Text = "La evaluación fue eliminada con exito"
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
        Else
            t_error.Text = "La evaluación no puedes ser eliminada!!!"

        End If
        Conn.Close()





    End Sub
End Class
