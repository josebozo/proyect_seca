Imports System.Data.SqlClient

Public Class Seguimiento_Insertar
    Inherits System.Web.UI.Page
    Protected WithEvents conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents L_alumno As System.Web.UI.WebControls.DropDownList
    Protected WithEvents L_cod_alumno As System.Web.UI.WebControls.ListBox
    Protected WithEvents L_area As System.Web.UI.WebControls.DropDownList
    Protected WithEvents L_cod_area As System.Web.UI.WebControls.ListBox
    Protected WithEvents SqlDataAdapter2 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand2 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlInsertCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlUpdateCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlDeleteCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents T_observacion As System.Web.UI.WebControls.TextBox
    Protected WithEvents Reset As System.Web.UI.WebControls.Button
    Protected WithEvents aceptar As System.Web.UI.WebControls.Button
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Pie As System.Web.UI.WebControls.Label
    Protected WithEvents T_error As System.Web.UI.WebControls.Label
    Protected WithEvents aceptar2 As System.Web.UI.WebControls.Button
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator3 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents t_fecha As System.Web.UI.WebControls.TextBox

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.conn = New System.Data.SqlClient.SqlConnection()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand()
        Me.SqlDataAdapter2 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlDeleteCommand1 = New System.Data.SqlClient.SqlCommand()
        Me.SqlInsertCommand1 = New System.Data.SqlClient.SqlCommand()
        Me.SqlSelectCommand2 = New System.Data.SqlClient.SqlCommand()
        Me.SqlUpdateCommand1 = New System.Data.SqlClient.SqlCommand()
        '
        'conn
        '
        Me.conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=JON;packet size=4096"
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_nom_alumn", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("alumno", "alumno"), New System.Data.Common.DataColumnMapping("cod", "cod")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT Alumno AS alumno, cod AS cod FROM SECA_nom_alumn ORDER BY Alumno"
        Me.SqlSelectCommand1.Connection = Me.conn
        '
        'SqlDataAdapter2
        '
        Me.SqlDataAdapter2.DeleteCommand = Me.SqlDeleteCommand1
        Me.SqlDataAdapter2.InsertCommand = Me.SqlInsertCommand1
        Me.SqlDataAdapter2.SelectCommand = Me.SqlSelectCommand2
        Me.SqlDataAdapter2.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "Area_M5", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("cod_area", "cod_area"), New System.Data.Common.DataColumnMapping("Area", "Area")})})
        Me.SqlDataAdapter2.UpdateCommand = Me.SqlUpdateCommand1
        '
        'SqlDeleteCommand1
        '
        Me.SqlDeleteCommand1.CommandText = "DELETE FROM Area_M5 WHERE (cod_area = @Original_cod_area) AND (Area = @Original_A" & _
        "rea)"
        Me.SqlDeleteCommand1.Connection = Me.conn
        Me.SqlDeleteCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_cod_area", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "cod_area", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlDeleteCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_Area", System.Data.SqlDbType.VarChar, 50, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "Area", System.Data.DataRowVersion.Original, Nothing))
        '
        'SqlInsertCommand1
        '
        Me.SqlInsertCommand1.CommandText = "INSERT INTO Area_M5(Area) VALUES (@Area); SELECT cod_area, Area FROM Area_M5 WHER" & _
        "E (cod_area = @@IDENTITY) ORDER BY Area"
        Me.SqlInsertCommand1.Connection = Me.conn
        Me.SqlInsertCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Area", System.Data.SqlDbType.VarChar, 50, "Area"))
        '
        'SqlSelectCommand2
        '
        Me.SqlSelectCommand2.CommandText = "SELECT cod_area, Area FROM Area_M5 ORDER BY Area"
        Me.SqlSelectCommand2.Connection = Me.conn
        '
        'SqlUpdateCommand1
        '
        Me.SqlUpdateCommand1.CommandText = "UPDATE Area_M5 SET Area = @Area WHERE (cod_area = @Original_cod_area) AND (Area =" & _
        " @Original_Area); SELECT cod_area, Area FROM Area_M5 WHERE (cod_area = @cod_area" & _
        ") ORDER BY Area"
        Me.SqlUpdateCommand1.Connection = Me.conn
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Area", System.Data.SqlDbType.VarChar, 50, "Area"))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_cod_area", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "cod_area", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_Area", System.Data.SqlDbType.VarChar, 50, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "Area", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@cod_area", System.Data.SqlDbType.Int, 4, "cod_area"))

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If (Page.IsPostBack = False) Then
            Me.aceptar2.Enabled = False
            t_fecha.Text = Format(Now, "dd/MM/yyyy")
            Me.t_fecha.Enabled = False
            L_alumno.SelectedItem.Text = "Seleccione el Alumno"
            Dim DS As System.Data.DataSet
            DS = New System.Data.DataSet()
            SqlDataAdapter1.Fill(DS, "Tables")
            L_alumno.DataSource = DS.Tables("Tables").DefaultView
            L_cod_alumno.DataSource = DS.Tables("Tables").DefaultView
            L_cod_alumno.DataValueField = "cod"
            L_alumno.DataTextField = "alumno"
            L_alumno.DataBind()
            L_cod_alumno.DataBind()
            L_alumno.Items.Add("")
            L_alumno.SelectedIndex = (L_alumno.Items.Count - 1)

            Dim DS2 As System.Data.DataSet
            DS2 = New System.Data.DataSet()
            SqlDataAdapter2.Fill(DS2, "Tables")
            L_area.DataSource = DS2.Tables("Tables").DefaultView
            L_cod_area.DataSource = DS2.Tables("Tables").DefaultView
            L_cod_area.DataValueField = "cod_area"
            L_area.DataTextField = "Area"
            L_area.DataBind()
            L_cod_area.DataBind()
            L_area.Items.Add("")
            L_area.SelectedIndex = (L_area.Items.Count - 1)
        End If
    End Sub

    Private Sub aceptar_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles aceptar.Click
        Dim string1, queri, queri2 As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        L_cod_alumno.SelectedIndex = Me.L_alumno.SelectedIndex
        L_cod_area.SelectedIndex = Me.L_area.SelectedIndex

        
        'GUARDA EN LA BASE DE DATOS.
        conn.Open()
        string1 = Me.L_cod_alumno.SelectedItem.Value & ", " & Me.L_cod_area.SelectedItem.Value & ", '" & Me.T_observacion.Text & "',' " & Me.t_fecha.Text & "'"
        queri = "INSERT into Comentarios_M4 (Cod_alumno, cod_area, observacion, fecha) values (" & string1 & ")"
        'Response.Write(queri)
        Comm = New System.Data.SqlClient.SqlCommand(queri, conn)
        Comm.ExecuteNonQuery()
        Me.conn.Close()
        Me.Pie.Text = "El alumno " & L_alumno.SelectedItem.Value & " se le ha comenzado a realizar el seguimiento"
        Me.Pie.Visible = True
        Me.L_alumno.Enabled = False
        Me.L_area.Enabled = False
        Me.T_observacion.Enabled = False
        Me.Reset.Enabled = False
        Me.aceptar.Enabled = False
        Me.aceptar2.Enabled = True



        'Select Case count(cod_alumno)
        'from comentarios_m4
        'where month(fecha) = month(CURRENT_TIMESTAMP) and cod_alumno = 5

    End Sub

    Private Sub aceptar2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles aceptar2.Click
        Me.Pie.Visible = False
        Me.L_alumno.SelectedIndex = -1
        Me.L_alumno.Enabled = True
        Me.L_area.SelectedIndex = -1
        Me.L_area.Enabled = True
        Me.T_observacion.Text = ""
        Me.T_observacion.Enabled = True
        Me.t_fecha.Text = Format(Now, "dd/MM/yyyy")
        Me.Reset.Enabled = True
        Me.aceptar.Enabled = True
        Me.aceptar2.Enabled = False
    End Sub

    Private Sub Reset_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Reset.Click
        Me.L_alumno.SelectedIndex = -1
        Me.L_area.SelectedIndex = -1
        Me.T_observacion.Text = ""
        Me.t_fecha.Text = Format(Now, "dd/MM/yyyy")
    End Sub

End Class
