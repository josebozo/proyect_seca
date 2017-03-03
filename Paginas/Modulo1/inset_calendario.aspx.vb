Imports System.Data.SqlClient

Public Class inset_calendario
    Inherits System.Web.UI.Page
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlDataAdapter2 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlSelectCommand2 As System.Data.SqlClient.SqlCommand
    Protected WithEvents Calendar1 As System.Web.UI.WebControls.Calendar
    Protected WithEvents Button2 As System.Web.UI.WebControls.Button
    Protected WithEvents L_cod_alum As System.Web.UI.WebControls.ListBox
    Protected WithEvents L_cod_eva As System.Web.UI.WebControls.ListBox
    Protected WithEvents L_eva As System.Web.UI.WebControls.DropDownList
    Protected WithEvents L_alum As System.Web.UI.WebControls.DropDownList
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents t_error As System.Web.UI.WebControls.Label
    Protected WithEvents Button3 As System.Web.UI.WebControls.Button
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button

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
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "Evaluacion_M2", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("cod", "cod"), New System.Data.Common.DataColumnMapping("nombre", "nombre")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT cod_eva AS cod, nombre FROM Evaluacion_M2"
        Me.SqlSelectCommand1.Connection = Me.Conn
        '
        'SqlDataAdapter2
        '
        Me.SqlDataAdapter2.SelectCommand = Me.SqlSelectCommand2
        Me.SqlDataAdapter2.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_nom_alumn", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("Alumno", "Alumno"), New System.Data.Common.DataColumnMapping("cod", "cod")})})
        '
        'SqlSelectCommand2
        '
        Me.SqlSelectCommand2.CommandText = "SELECT Alumno, cod FROM SECA_nom_alumn ORDER BY Alumno"
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
            'Dim string1, string2, queri As String
            'Dim Comm As System.Data.SqlClient.SqlCommand
            'Dim objDR As SqlDataReader
            'Dim files As Integer
            'Me.Conn.Open()



            'queri = " select Area, cod_area from area_m5 order by area"
            'Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            ''Comm.ExecuteNonQuery()
            'objDR = Comm.ExecuteReader(System.Data.CommandBehavior.CloseConnection)

            'Me.TextBox1.Text = objDR.FieldCount()
            'files = 0
            'While objDR.Read
            '    'If objDR.GetValue(1) Then
            '    List1.Items.Insert(files, objDR.GetValue(1).ToString)
            '    files = files + 1
            '    'End If
            'End While

            Dim DS As System.Data.DataSet
            DS = New System.Data.DataSet()
            SqlDataAdapter1.Fill(DS, "Tables")
            L_Eva.DataSource = DS.Tables("Tables").DefaultView
            L_cod_eva.DataSource = DS.Tables("Tables").DefaultView
            L_cod_eva.DataValueField = "cod"
            L_Eva.DataTextField = "nombre"
            L_Eva.DataBind()
            L_cod_eva.DataBind()

            Dim DS2 As System.Data.DataSet
            DS2 = New System.Data.DataSet()
            SqlDataAdapter2.Fill(DS2, "Tables")
            L_alum.DataSource = DS2.Tables("Tables").DefaultView
            L_cod_alum.DataSource = DS2.Tables("Tables").DefaultView
            L_cod_alum.DataValueField = "cod"
            L_alum.DataTextField = "Alumno"
            L_alum.DataBind()
            L_cod_alum.DataBind()


            'Conn.Close()

        End If

    End Sub


    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim string1, queri As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Me.Conn.Open()

        'Response.Write(Calendar1.SelectedDate.ToShortDateString)

        L_cod_eva.Enabled = False
        L_cod_alum.Enabled = False
        L_alum.Enabled = False
        L_eva.Enabled = False
        Me.Calendar1.Enabled = False
        L_cod_alum.SelectedIndex = Me.L_alum.SelectedIndex
        L_cod_eva.SelectedIndex = Me.L_eva.SelectedIndex
        If Calendar1.SelectedDate.ToShortDateString = "01/01/0001" Then
            Me.t_error.Text = "Falta Fecha"
            L_cod_eva.Enabled = True
            L_cod_alum.Enabled = True
            L_alum.Enabled = True
            L_eva.Enabled = True
            Me.Calendar1.Enabled = True
            Exit Sub
        End If


        queri = "select count(cod_eva_programada) from calen_eva_m1 where cod_alumno=" & L_cod_alum.SelectedItem.Text & " and fecha_eva='" & Me.Calendar1.SelectedDate.ToShortDateString & "' and cod_eva=" & L_cod_eva.SelectedItem.Text
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        Dim cant As Integer = Comm.ExecuteScalar()
        If cant <> 0 Then
            Me.t_error.Text = "Error en la base de datos ya existe un registro igual"
            L_cod_eva.Enabled = True
            L_cod_alum.Enabled = True
            L_alum.Enabled = True
            L_eva.Enabled = True
            Me.Calendar1.Enabled = True
            Exit Sub
        End If


        queri = "insert into calen_eva_m1 (cod_alumno, fecha_eva, cod_eva) values (" & L_cod_alum.SelectedItem.Text & ", '" & Me.Calendar1.SelectedDate.Date & "', " & L_cod_eva.SelectedItem.Text & ") "
        'Response.Write(queri)
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()

        Conn.Close()
        t_error.Text = "Almacenada con Exito"
        Me.L_alum.SelectedIndex = -1
        Me.L_eva.SelectedIndex = -1
        Me.Calendar1.SelectedDate = "01/01/0001"


    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click

        Me.L_alum.SelectedIndex = -1
        Me.L_eva.SelectedIndex = -1
        L_cod_eva.Enabled = True
        L_cod_alum.Enabled = True
        L_alum.Enabled = True
        L_eva.Enabled = True
        Me.Calendar1.Enabled = True
        Me.Calendar1.SelectedDate = "01/01/0001"
        t_error.Text = ""
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Me.L_alum.SelectedIndex = -1
        Me.L_eva.SelectedIndex = -1
        L_cod_eva.Enabled = True
        L_cod_alum.Enabled = True
        L_alum.Enabled = True
        L_eva.Enabled = True
        Me.Calendar1.Enabled = True
        Me.Calendar1.SelectedDate = "01/01/0001"
        t_error.Text = ""
    End Sub
End Class
