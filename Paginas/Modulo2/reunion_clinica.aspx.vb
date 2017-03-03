Imports System.Data.SqlClient
Imports System.Web.Security
Public Class reunion_clinica
    Inherits System.Web.UI.Page
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Image2 As System.Web.UI.WebControls.Image
    Protected WithEvents L_eva As System.Web.UI.WebControls.DropDownList
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents L_cod_eva As System.Web.UI.WebControls.ListBox
    Protected WithEvents L_alum As System.Web.UI.WebControls.DropDownList
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents L_cod_alum As System.Web.UI.WebControls.ListBox
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlDataAdapter2 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand2 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents L_area As System.Web.UI.WebControls.DropDownList
    Protected WithEvents L_area_cod As System.Web.UI.WebControls.ListBox
    Protected WithEvents SqlDataAdapter3 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents T_Observ As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_trata As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator3 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Button2 As System.Web.UI.WebControls.Button
    Protected WithEvents SqlSelectCommand3 As System.Data.SqlClient.SqlCommand
    Public Shared tkt As FormsAuthenticationTicket
    Public Shared t_t As Boolean = False
    Protected WithEvents RequiredFieldValidator4 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator5 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Button3 As System.Web.UI.WebControls.Button
    Protected WithEvents t_error As System.Web.UI.WebControls.Label
    Public Shared t_o As Boolean = False
#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.Conn = New System.Data.SqlClient.SqlConnection()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand()
        Me.SqlDataAdapter2 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand2 = New System.Data.SqlClient.SqlCommand()
        Me.SqlDataAdapter3 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand3 = New System.Data.SqlClient.SqlCommand()
        '
        'Conn
        '
        Me.Conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=BOZOXP06;packet size=4096"
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_evalua_x_alumno_sin_RC", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("cod", "cod"), New System.Data.Common.DataColumnMapping("eva", "eva")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT cod, eva FROM SECA_evalua_x_alumno_sin_RC"
        Me.SqlSelectCommand1.Connection = Me.Conn
        '
        'SqlDataAdapter2
        '
        Me.SqlDataAdapter2.SelectCommand = Me.SqlSelectCommand2
        Me.SqlDataAdapter2.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_alumnos_sin_ReuClini", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("Alumno", "Alumno"), New System.Data.Common.DataColumnMapping("cod", "cod")})})
        '
        'SqlSelectCommand2
        '
        Me.SqlSelectCommand2.CommandText = "SELECT alumno, cod FROM SECA_alumnos_sin_ReuClini"
        Me.SqlSelectCommand2.Connection = Me.Conn
        '
        'SqlDataAdapter3
        '
        Me.SqlDataAdapter3.SelectCommand = Me.SqlSelectCommand3
        Me.SqlDataAdapter3.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_areas_eva", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("area", "area"), New System.Data.Common.DataColumnMapping("cod", "cod")})})
        '
        'SqlSelectCommand3
        '
        Me.SqlSelectCommand3.CommandText = "SELECT SECA_areas_eva.Area AS area, SECA_areas_eva.cod_area AS cod FROM Res_eva_M" & _
        "2 INNER JOIN SECA_areas_eva ON Res_eva_M2.cod_eva = SECA_areas_eva.cod_eva WHERE" & _
        " (Res_eva_M2.cod_res_eva = 0)"
        Me.SqlSelectCommand3.Connection = Me.Conn

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
                Button2.Enabled = True
            End If
            Me.Conn.Close()


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

    Private Sub L_alum_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_alum.SelectedIndexChanged
        If Trim(L_alum.SelectedItem.Value) = "" Then Exit Sub
        t_error.Text = ""
        L_cod_alum.SelectedIndex = L_alum.SelectedIndex
        Me.SqlSelectCommand1.CommandText = "SELECT cod, eva FROM SECA_evalua_x_alumno_sin_RC where cod_a=" & L_cod_alum.SelectedItem.Value
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
        L_eva.Enabled = True
        L_alum.Enabled = False

    End Sub

    Private Sub L_eva_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_eva.SelectedIndexChanged
        If Trim(L_eva.SelectedItem.Value) = "" Then
            Exit Sub
            T_Observ.Text = ""
            T_trata.Text = ""
        End If
        L_cod_eva.SelectedIndex = L_eva.SelectedIndex
        Me.SqlSelectCommand3.CommandText = "SELECT SECA_areas_eva.Area AS area, SECA_areas_eva.cod_area AS cod FROM Res_eva_M" & _
        "2 INNER JOIN SECA_areas_eva ON Res_eva_M2.cod_eva = SECA_areas_eva.cod_eva WHERE" & _
        " (Res_eva_M2.cod_res_eva =" & L_cod_eva.SelectedItem.Value & ")"
        Dim DS2 As System.Data.DataSet
        DS2 = New System.Data.DataSet()
        SqlDataAdapter3.Fill(DS2, "Tables")
        L_area.DataSource = DS2.Tables("Tables").DefaultView
        L_area_cod.DataSource = DS2.Tables("Tables").DefaultView
        L_area_cod.DataValueField = "cod"
        L_area.DataTextField = "area"
        L_area.DataBind()
        L_area_cod.DataBind()
        L_area.Items.Add("")
        L_area.SelectedIndex = (L_area.Items.Count - 1)
        L_area.Enabled = True

    End Sub


    Private Sub L_area_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_area.SelectedIndexChanged
        If Trim(L_area.SelectedItem.Value) = "" Then
            T_Observ.Text = ""
            T_trata.Text = ""
            Exit Sub
        End If
        t_error.Text = ""
        L_cod_alum.SelectedIndex = L_alum.SelectedIndex
        L_cod_eva.SelectedIndex = L_eva.SelectedIndex
        L_area_cod.SelectedIndex = L_area.SelectedIndex
        L_eva.Enabled = False
        Dim queri2 As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        'Dim objDR As SqlDataReader
        Dim i As Integer
        Conn.Open()
        queri2 = "select tratamiento from Tratamienta_M2 where cod_alumno=" & L_cod_alum.SelectedItem.Value & " and cod_area=" & L_area_cod.SelectedItem.Value & " and cod_res_eva=" & L_cod_eva.SelectedItem.Value
        'Response.Write(queri2)
        Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
        Comm.ExecuteNonQuery()
        T_trata.Text = Comm.ExecuteScalar()
        If Trim(T_trata.Text) = "" Then
            t_t = True
        Else
            t_t = False
        End If

        queri2 = "select observacion from Reunion_Clinica_M2 where cod_area=" & L_area_cod.SelectedItem.Value & " and cod_res_eva=" & L_cod_eva.SelectedItem.Value
        'Response.Write(queri2)
        Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
        Comm.ExecuteNonQuery()
        T_Observ.Text = Comm.ExecuteScalar()
        If Trim(T_Observ.Text) = "" Then
            t_o = True
        Else
            t_o = False
        End If
        'objDR = Comm.ExecuteReader()
        'While objDR.Read
        '    'l_p.Text = Trim(objDR.Item("pregunta"))
        '    'l_1.Text = Trim(objDR.Item("text1"))
        'End While
        Me.Button1.Enabled = True
        Conn.Close()
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If Trim(L_area.SelectedItem.Value) = "" Then Exit Sub
        If Trim(L_eva.SelectedItem.Value) = "" Then Exit Sub
        If Trim(L_alum.SelectedItem.Value) = "" Then Exit Sub
        L_cod_alum.SelectedIndex = L_alum.SelectedIndex
        L_cod_eva.SelectedIndex = L_eva.SelectedIndex
        L_area_cod.SelectedIndex = L_area.SelectedIndex

        Dim queri2 As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Conn.Open()
        If t_t Then
            'insert 
            queri2 = "insert into Tratamienta_M2 (cod_res_eva, cod_alumno, cod_area, tratamiento, fecha_new) values (" & L_cod_eva.SelectedItem.Value & "," & L_cod_alum.SelectedItem.Value & "," & L_area_cod.SelectedItem.Value & ",'" & T_trata.Text & "','" & Format(Now, "dd/MM/yyyy") & "')"
            'Response.Write("nO!!!!")
            Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
            Comm.ExecuteNonQuery()
        Else
            'update
            queri2 = "update Tratamienta_M2 set tratamiento='" & T_trata.Text & "' where cod_res_eva=" & L_cod_eva.SelectedItem.Value & " and cod_area=" & L_area_cod.SelectedItem.Value & " and cod_alumno=" & L_cod_alum.SelectedItem.Value
            'Response.Write(queri2)
            Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
            Comm.ExecuteNonQuery()
        End If
        If t_o Then
            'insert
            queri2 = "insert into Reunion_Clinica_M2 (cod_res_eva, cod_area, observacion) values (" & L_cod_eva.SelectedItem.Value & "," & L_area_cod.SelectedItem.Value & ",'" & T_Observ.Text & "')"
            'Response.Write("nO!!!!")
            Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
            Comm.ExecuteNonQuery()
        Else
            'update
            queri2 = "update Reunion_Clinica_M2 set observacion='" & T_Observ.Text & "' where cod_res_eva=" & L_cod_eva.SelectedItem.Value & " and cod_area=" & L_area_cod.SelectedItem.Value
            'Response.Write(queri2)
            Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
            Comm.ExecuteNonQuery()
        End If
        Conn.Close()
        t_error.Text = "Proceso de almacenado realizado con exito"
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click

        L_alum.SelectedIndex = (L_alum.Items.Count - 1)
        L_eva.SelectedIndex = (L_eva.Items.Count - 1)
        L_area.SelectedIndex = (L_area.Items.Count - 1)
        Me.T_Observ.Text = ""
        Me.T_trata.Text = ""
        Button1.Enabled = False
        L_alum.Enabled = True
        L_area.Enabled = False
        'L_eva.Enabled = True
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        If Trim(L_area.SelectedItem.Value) = "" Then Exit Sub
        If Trim(L_eva.SelectedItem.Value) = "" Then Exit Sub
        If Trim(L_alum.SelectedItem.Value) = "" Then Exit Sub
        L_cod_alum.SelectedIndex = L_alum.SelectedIndex
        L_cod_eva.SelectedIndex = L_eva.SelectedIndex
        L_area_cod.SelectedIndex = L_area.SelectedIndex

        Dim queri2 As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Conn.Open()


        queri2 = "update Res_eva_M2 set Rclinica=1 where cod_res_eva=" & L_cod_eva.SelectedItem.Value
        Comm = New System.Data.SqlClient.SqlCommand(queri2, Conn)
        Comm.ExecuteNonQuery()
        t_error.Text = "Evaluacion cerrada con exito"
        L_area.Enabled = False
        L_eva.Enabled = False
        L_alum.Enabled = True
        T_Observ.Text = ""
        T_trata.Text = ""

    End Sub
End Class
