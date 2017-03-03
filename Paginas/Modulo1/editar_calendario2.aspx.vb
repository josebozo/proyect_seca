Imports System.Data.SqlClient

Public Class editar_calendario2
    Inherits System.Web.UI.Page
    Protected WithEvents L_eva As System.Web.UI.WebControls.DropDownList
    Protected WithEvents L_cod_eva As System.Web.UI.WebControls.ListBox
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents L_alum As System.Web.UI.WebControls.DropDownList
    Protected WithEvents L_cod_alum As System.Web.UI.WebControls.ListBox
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Calendar1 As System.Web.UI.WebControls.Calendar
    Protected WithEvents Button2 As System.Web.UI.WebControls.Button
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents Button3 As System.Web.UI.WebControls.Button
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlConnection1 As System.Data.SqlClient.SqlConnection
    Protected WithEvents SqlDataAdapter2 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand2 As System.Data.SqlClient.SqlCommand
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents t_error As System.Web.UI.WebControls.Label

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand()
        Me.SqlConnection1 = New System.Data.SqlClient.SqlConnection()
        Me.SqlDataAdapter2 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand2 = New System.Data.SqlClient.SqlCommand()
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "Evaluacion_M2", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("cod", "cod"), New System.Data.Common.DataColumnMapping("nombre", "nombre")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT cod_eva AS cod, nombre FROM Evaluacion_M2"
        Me.SqlSelectCommand1.Connection = Me.SqlConnection1
        '
        'SqlConnection1
        '
        Me.SqlConnection1.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=BOZOXP06;packet size=4096"
        '
        'SqlDataAdapter2
        '
        Me.SqlDataAdapter2.SelectCommand = Me.SqlSelectCommand2
        Me.SqlDataAdapter2.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "Alumno_M1", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("cod", "cod"), New System.Data.Common.DataColumnMapping("alumno", "alumno")})})
        '
        'SqlSelectCommand2
        '
        Me.SqlSelectCommand2.CommandText = "SELECT cod_alumno AS cod, apellido + ',  ' + nombre AS alumno FROM Alumno_M1 ORDE" & _
        "R BY alumno"
        Me.SqlSelectCommand2.Connection = Me.SqlConnection1

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Request.Params("cod")
        If (Page.IsPostBack = False) Then
            Dim DS As System.Data.DataSet
            DS = New System.Data.DataSet()
            SqlDataAdapter1.Fill(DS, "Tables")
            L_eva.DataSource = DS.Tables("Tables").DefaultView
            L_cod_eva.DataSource = DS.Tables("Tables").DefaultView
            L_cod_eva.DataValueField = "cod"
            L_eva.DataTextField = "nombre"
            L_eva.DataBind()
            L_cod_eva.DataBind()

            Dim DS2 As System.Data.DataSet
            DS2 = New System.Data.DataSet()
            SqlDataAdapter2.Fill(DS2, "Tables")
            L_alum.DataSource = DS2.Tables("Tables").DefaultView
            L_cod_alum.DataSource = DS2.Tables("Tables").DefaultView
            L_cod_alum.DataValueField = "cod"
            L_alum.DataTextField = "alumno"
            L_alum.DataBind()
            L_cod_alum.DataBind()

            Dim string1, string2, queri As String
            Dim Comm As System.Data.SqlClient.SqlCommand
            Dim objDR As SqlDataReader
            Dim files As Integer
            Dim i As Integer


            Me.SqlConnection1.Open()
            'Traerme los Valores completos
            queri = " select cod_alumno, cod_eva, convert(char(10),fecha_eva,103) from calen_eva_m1 where cod_eva_programada=" & Request.Params("cod")
            Comm = New System.Data.SqlClient.SqlCommand(queri, SqlConnection1)
            Comm.ExecuteNonQuery()
            objDR = Comm.ExecuteReader(System.Data.CommandBehavior.CloseConnection)
            'objDR.Read()
            'T_Apellido.Text = objDR.GetValue(1)
            While objDR.Read
                For i = 0 To (L_cod_alum.Items.Count - 1)
                    L_cod_alum.SelectedIndex = i
                    If Trim(L_cod_alum.SelectedItem.Text) = Trim(objDR.GetValue(0)) Then
                        L_alum.SelectedIndex = i
                        Exit For
                    End If
                Next
                For i = 0 To (L_cod_eva.Items.Count - 1)
                    L_cod_eva.SelectedIndex = i
                    If Trim(L_cod_eva.SelectedItem.Text) = Trim(objDR.GetValue(1)) Then
                        L_eva.SelectedIndex = i
                        Exit For
                    End If
                Next
                Me.Calendar1.SelectedDate = Trim(objDR.GetValue(2))
                Me.Calendar1.VisibleDate = Trim(objDR.GetValue(2))
            End While

            Me.SqlConnection1.Close()
        End If
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
        Response.Redirect("editar_calendario.aspx")
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim string1, queri As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Me.SqlConnection1.Open()

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
        Comm = New System.Data.SqlClient.SqlCommand(queri, SqlConnection1)
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

        queri = "update calen_eva_m1 set cod_alumno=" & L_cod_alum.SelectedItem.Text & ", fecha_eva='" & Me.Calendar1.SelectedDate.Date & "', cod_eva=" & L_cod_eva.SelectedItem.Text & " where cod_eva_programada=" & Request.Params("cod")
        'Response.Write(queri)
        Comm = New System.Data.SqlClient.SqlCommand(queri, SqlConnection1)
        Comm.ExecuteNonQuery()

        SqlConnection1.Close()
        t_error.Text = "Actualizado con Exito"
        Me.L_alum.SelectedIndex = -1
        Me.L_eva.SelectedIndex = -1
        Me.Calendar1.SelectedDate = "01/01/0001"
        Button1.Enabled = False
    End Sub
End Class
