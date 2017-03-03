Imports System.Data.SqlClient

Public Class Modificar_Usuario1
    Inherits System.Web.UI.Page
    Protected WithEvents L_Areaimagen As System.Web.UI.WebControls.ListBox
    Protected WithEvents T_Nombre As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_Apellido As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents T_ci As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents L_Area As System.Web.UI.WebControls.DropDownList
    Protected WithEvents T_user As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator3 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents T_Pass As System.Web.UI.WebControls.TextBox
    Protected WithEvents Reset As System.Web.UI.WebControls.Button
    Protected WithEvents aceptar As System.Web.UI.WebControls.Button
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents Pie As System.Web.UI.WebControls.Label
    Protected WithEvents T_error As System.Web.UI.WebControls.Label
    Protected WithEvents RequiredFieldValidator4 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents RequiredFieldValidator5 As System.Web.UI.WebControls.RequiredFieldValidator
    Public Shared Cod As String
    Protected WithEvents L_Perfil As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Requiredfieldvalidator6 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Public Shared Cod2 As String

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand()
        Me.conn = New System.Data.SqlClient.SqlConnection()
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "Area_M5", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("cod_area", "cod_area"), New System.Data.Common.DataColumnMapping("Area", "Area")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT cod_area, Area FROM Area_M5"
        Me.SqlSelectCommand1.Connection = Me.conn
        '
        'conn
        '
        Me.conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=JON;packet size=4096"

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
            Dim string1, string2, queri As String
            Dim Comm As System.Data.SqlClient.SqlCommand
            Dim objDR As SqlDataReader
            Dim files As Integer
            Dim i As Integer
            Me.conn.Open()
            'Traerme los Valores completos
            queri = " select cod_user, nombre, apellido, ci, cod_area, uname, pwd, Perfil from Usuarios_m5 where uname='" & Request.Params("uname") & "'"
            Comm = New System.Data.SqlClient.SqlCommand(queri, conn)
            Comm.ExecuteNonQuery()
            objDR = Comm.ExecuteReader(System.Data.CommandBehavior.CloseConnection)
            While objDR.Read
                Cod = Val(objDR.GetValue(0))
                T_Nombre.Text = objDR.GetValue(1)
                T_Apellido.Text = objDR.GetValue(2)
                T_ci.Text = objDR.GetValue(3)
                For i = 0 To (L_Areaimagen.Items.Count - 1)
                    L_Areaimagen.SelectedIndex = i
                    If Trim(L_Areaimagen.SelectedItem.Text) = Trim(objDR.GetValue(4)) Then
                        L_Area.SelectedIndex = i
                        Exit For
                    End If
                Next
                T_user.Text = objDR.GetValue(5)
                T_Pass.Text = objDR.GetValue(6)
                For i = 0 To (L_Perfil.Items.Count - 1)
                    L_Perfil.SelectedIndex = i
                    If Trim(L_Perfil.SelectedItem.Value) = Trim(objDR.GetValue(7)) Then Exit For
                Next
                Cod2 = T_user.Text
            End While
            Me.conn.Close()
        End If
    End Sub


    Private Sub aceptar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles aceptar.Click
        Dim queri As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Me.conn.Open()

        'Verifica que no existan 2 nombres de usuarios iguales
        If Trim(Cod2) <> Trim(T_user.Text) Then
            queri = "select count(uname) from usuarios_M5 where uname='" & Me.T_user.Text & "'"
            Comm = New System.Data.SqlClient.SqlCommand(queri, conn)
            Comm.ExecuteNonQuery()
            Dim cant As Integer = Comm.ExecuteScalar()
            Response.Write(cant)
            If cant <> 0 Then
                Me.T_error.Visible = True
                Me.T_error.Text = "Este Usuario ya existe"
                Exit Sub
            Else
                Me.T_error.Visible = False
                Exit Sub
            End If
        End If
        L_Areaimagen.SelectedIndex = Me.L_Area.SelectedIndex
        'Actualiza Usuario
        queri = "update Usuarios_M5 set Nombre='" & Me.T_Nombre.Text & "', Apellido='" & Me.T_Apellido.Text & "', ci='" & Me.T_ci.Text & "', cod_area='" & Me.L_Areaimagen.SelectedItem.Value & "', uname='" & Me.T_user.Text & "', pwd='" & Me.T_Pass.Text & "', perfil='" & Me.L_Perfil.SelectedItem.Value & "' where uname='" & Request.Params("uname") & "'"
        'Response.Write(queri)
        Comm = New System.Data.SqlClient.SqlCommand(queri, conn)
        Comm.ExecuteNonQuery()
        Me.T_Nombre.Text = ""
        Me.T_Apellido.Text = ""
        Me.T_ci.Text = ""
        Me.L_Area.SelectedIndex = -1
        Me.T_user.Text = ""
        Me.T_Pass.Text = ""
        Me.L_Perfil.SelectedIndex = -1
        aceptar.Enabled = False
        Button1.Enabled = True
        Reset.Enabled = False
        Pie.Text = "Usuario ha sido Modificado."
        'Response.Redirect("modificar_usuario_DG.aspx")
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        'Button1.Enabled = False
        'aceptar.Enabled = True
        'Reset.Enabled = True
        'Pie.Visible = False
        Response.Redirect("Modificar_Usuario_DG.aspx")
    End Sub
End Class
