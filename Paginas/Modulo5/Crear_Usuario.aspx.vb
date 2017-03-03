Public Class Crear_Usuario
    Inherits System.Web.UI.Page
    Protected WithEvents T_Nombre As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_Apellido As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_ci As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_Area As System.Web.UI.WebControls.DropDownList
    Protected WithEvents aceptar As System.Web.UI.WebControls.Button
    Protected WithEvents Reset As System.Web.UI.WebControls.Button
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents L_Areaimagen As System.Web.UI.WebControls.ListBox
    Protected WithEvents T_user As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_Pass As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents Pie As System.Web.UI.WebControls.Label
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator3 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator4 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator5 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents L_Perfil As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Requiredfieldvalidator6 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents T_error As System.Web.UI.WebControls.Label
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents conn As System.Data.SqlClient.SqlConnection

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.conn = New System.Data.SqlClient.SqlConnection()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand()
        '
        'conn
        '
        Me.conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=JON;packet size=4096"
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "Area_M5", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("cod_area", "cod_area"), New System.Data.Common.DataColumnMapping("Area", "Area")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT cod_area, Area FROM Area_M5 ORDER BY Area"
        Me.SqlSelectCommand1.Connection = Me.conn

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If (Page.IsPostBack = False) Then
            Dim DS As System.Data.DataSet
            DS = New System.Data.DataSet()
            SqlDataAdapter1.Fill(DS, "Tables")
            L_Area.DataSource = DS.Tables("Tables").DefaultView
            L_Areaimagen.DataSource = DS.Tables("Tables").DefaultView
            L_Areaimagen.DataValueField = "cod_area"
            L_Area.DataTextField = "Area"
            L_Area.DataBind()
            L_Areaimagen.DataBind()
        End If
    End Sub

    Private Sub aceptar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles aceptar.Click
        Dim string1, string2, queri As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        L_Areaimagen.SelectedIndex = Me.L_Area.SelectedIndex
        Me.T_error.Text = ""

        Me.conn.Open()
        'Verifica que no existan 2 ci iguales
        queri = "select count(ci) from Usuarios_M5 where ci='" & Me.T_ci.Text & "'"
        Comm = New System.Data.SqlClient.SqlCommand(queri, conn)
        Comm.ExecuteNonQuery()
        Dim cant As Integer = Comm.ExecuteScalar()
        'Response.Write(cant)
        If cant <> 0 Then
            Me.T_error.Visible = True
            Me.T_error.Text = "Esta C.I ya existe"
            cant = 0
        End If

        'Verifica que no existan 2 usuario iguales
        queri = "select count(uname) from Usuarios_M5 where uname='" & Me.T_user.Text & "'"
        Comm = New System.Data.SqlClient.SqlCommand(queri, conn)
        Comm.ExecuteNonQuery()
        Dim cant2 As Integer = Comm.ExecuteScalar()
        'Response.Write(cant)
        If cant2 <> 0 Then
            Me.T_error.Visible = True
            If Trim(T_error.Text) = "" Then
                Me.T_error.Text = "Este Usuario ya existe"
            Else
                Me.T_error.Text = Me.T_error.Text & "y Este Usuario ya existe, por favor verifique"
            End If
            cant2 = 0
        End If
        If Trim(T_error.Text) <> "" Then Exit Sub
        'GUARDA EN LA BASE DE DATOS.
        string1 = Me.T_Nombre.Text & "', '" & Me.T_Apellido.Text & "', '" & Me.T_ci.Text & "', " & Me.L_Areaimagen.SelectedItem.Value & ", '" & LCase(Me.T_user.Text) & "', '" & Me.T_Pass.Text & "','" & Me.L_Perfil.SelectedItem.Value & "'"
        queri = "INSERT into Usuarios_M5 (Nombre, Apellido, ci, cod_area, uname, pwd, perfil) values ('" & string1 & ")"
        'Response.Write(queri)
        Comm = New System.Data.SqlClient.SqlCommand(queri, conn)
        Comm.ExecuteNonQuery()
        Me.conn.Close()
        Me.Pie.Text = "Usuario " & T_user.Text & " creado con éxito"
        Me.Pie.Visible = True
        Me.T_Nombre.Enabled = False
        Me.T_Apellido.Enabled = False
        Me.T_ci.Enabled = False
        Me.L_Area.Enabled = False
        Me.T_user.Enabled = False
        Me.T_Pass.Enabled = False
        Me.L_Perfil.Enabled = False
        Me.Reset.Enabled = False
        Me.aceptar.Enabled = False
        Me.Button1.Enabled = True
    End Sub

    Private Sub Reset_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Reset.Click
        Me.T_Nombre.Text = ""
        Me.T_Apellido.Text = ""
        Me.T_ci.Text = ""
        Me.L_Area.SelectedIndex = -1
        Me.T_user.Text = ""
        Me.T_Pass.Text = ""
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Me.T_Nombre.Text = ""
        Me.T_Apellido.Text = ""
        Me.T_ci.Text = ""
        Me.L_Area.SelectedIndex = -1
        Me.T_user.Text = ""
        Me.T_Pass.Text = ""
        Me.T_Nombre.Enabled = True
        Me.T_Apellido.Enabled = True
        Me.T_ci.Enabled = True
        Me.L_Area.Enabled = True
        Me.T_user.Enabled = True
        Me.T_Pass.Enabled = True
        Me.Reset.Enabled = True
        Me.aceptar.Enabled = True
        Me.Button1.Enabled = True
    End Sub
End Class
