Imports System.Data.SqlClient
Public Class Seguimiento_N_Tratamiento
    Inherits System.Web.UI.Page
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents L_cod_alumno As System.Web.UI.WebControls.ListBox
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator4 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Button3 As System.Web.UI.WebControls.Button
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents t_error As System.Web.UI.WebControls.Label
    Protected WithEvents Table1 As System.Web.UI.HtmlControls.HtmlTable
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents SqlDataAdapter2 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents L_alumno As System.Web.UI.WebControls.DropDownList
    Protected WithEvents L_area As System.Web.UI.WebControls.DropDownList
    Protected WithEvents L_cod_area As System.Web.UI.WebControls.ListBox
    Protected WithEvents t_fecha As System.Web.UI.WebControls.TextBox
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents T_trata As System.Web.UI.WebControls.TextBox
    Public Shared DS As System.Data.DataSet
    Protected WithEvents L_eva As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Requiredfieldvalidator3 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents L_cod_eva As System.Web.UI.WebControls.ListBox
    Protected WithEvents SqlDataAdapter3 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand2 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlSelectCommand3 As System.Data.SqlClient.SqlCommand
    Public Shared t_t As Boolean = False
    Public Shared corre As Boolean = False
#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand()
        Me.conn = New System.Data.SqlClient.SqlConnection()
        Me.SqlDataAdapter2 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand2 = New System.Data.SqlClient.SqlCommand()
        Me.SqlDataAdapter3 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlSelectCommand3 = New System.Data.SqlClient.SqlCommand()
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_N_Tratamiento", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("cod_alumno", "cod_alumno"), New System.Data.Common.DataColumnMapping("ident", "ident")})})
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT cod_alumno, ident FROM SECA_N_Tratamiento GROUP BY cod_alumno, ident"
        Me.SqlSelectCommand1.Connection = Me.conn
        '
        'conn
        '
        Me.conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=JON;packet size=4096"
        '
        'SqlDataAdapter2
        '
        Me.SqlDataAdapter2.SelectCommand = Me.SqlSelectCommand2
        Me.SqlDataAdapter2.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_N_Tratamiento", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("cod_area", "cod_area"), New System.Data.Common.DataColumnMapping("Area", "Area")})})
        '
        'SqlSelectCommand2
        '
        Me.SqlSelectCommand2.CommandText = "SELECT cod_area, Area FROM SECA_N_Tratamiento GROUP BY cod_area, Area"
        Me.SqlSelectCommand2.Connection = Me.conn
        '
        'SqlDataAdapter3
        '
        Me.SqlDataAdapter3.SelectCommand = Me.SqlSelectCommand3
        Me.SqlDataAdapter3.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_N_Tratamiento", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("cod_res_eva", "cod_res_eva"), New System.Data.Common.DataColumnMapping("eva", "eva")})})
        '
        'SqlSelectCommand3
        '
        Me.SqlSelectCommand3.CommandText = "SELECT cod_res_eva, eva FROM SECA_N_Tratamiento GROUP BY cod_res_eva, eva"
        Me.SqlSelectCommand3.Connection = Me.conn

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
            DS = New System.Data.DataSet()
            SqlDataAdapter1.Fill(DS, "Tables")
            L_alumno.DataSource = DS.Tables("Tables").DefaultView
            L_cod_alumno.DataSource = DS.Tables("Tables").DefaultView
            L_cod_alumno.DataValueField = "cod_alumno"
            L_alumno.DataTextField = "ident"
            L_alumno.DataBind()
            L_cod_alumno.DataBind()
            L_alumno.Items.Add("")
            L_alumno.SelectedIndex = (L_alumno.Items.Count - 1)
        End If
    End Sub

    Private Sub L_alumno_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_alumno.SelectedIndexChanged
        If Trim(L_alumno.SelectedItem.Value) = "" Then Exit Sub
        t_error.Text = ""
        L_cod_alumno.SelectedIndex = L_alumno.SelectedIndex
        Me.SqlSelectCommand3.CommandText = "SELECT cod_res_eva, eva FROM SECA_N_Tratamiento where cod_alumno=" & L_cod_alumno.SelectedItem.Value & "GROUP BY cod_res_eva, eva"
        Dim DS3 As System.Data.DataSet
        DS3 = New System.Data.DataSet()
        SqlDataAdapter3.Fill(DS3, "Tables")
        L_eva.DataSource = DS3.Tables("Tables").DefaultView
        L_cod_eva.DataSource = DS3.Tables("Tables").DefaultView
        L_cod_eva.DataValueField = "cod_res_eva"
        L_eva.DataTextField = "eva"
        L_eva.DataBind()
        L_cod_eva.DataBind()
        L_eva.Items.Add("*-- Correción de Tratamiento --*")
        L_eva.Items.Add("")
        L_eva.SelectedIndex = (L_eva.Items.Count - 1)
        L_eva.Enabled = True
        L_alumno.Enabled = False
        t_fecha.Text = Format(Now, "dd/MM/yyyy")
    End Sub

    Private Sub L_area_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_area.SelectedIndexChanged
        If Trim(L_area.SelectedItem.Value) = "" Then
            T_trata.Text = ""
            Exit Sub
        End If

        t_error.Text = ""
        L_cod_alumno.SelectedIndex = L_alumno.SelectedIndex
        If Trim(L_eva.SelectedItem.Text) <> "*-- Correción de Tratamiento --*" Then
            corre = False
            L_cod_eva.SelectedIndex = L_eva.SelectedIndex
        Else
            corre = True
            T_trata.ReadOnly = False
        End If
        L_cod_area.SelectedIndex = L_area.SelectedIndex
        L_eva.Enabled = False
        L_area.Enabled = False
        Dim queri2 As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Dim objDR As SqlDataReader
        Dim i As Integer
        conn.Open()
        If corre Then
            Me.Button3.Enabled = True
            queri2 = "select tratamiento from Tratamienta_m2 where cod_alumno=" & L_cod_alumno.SelectedItem.Value & " and cod_area=" & L_cod_area.SelectedItem.Value & " and cod_res_eva=0"
        Else
            queri2 = "select tratamiento from SECA_N_Tratamiento where cod_alumno=" & L_cod_alumno.SelectedItem.Value & " and cod_area=" & L_cod_area.SelectedItem.Value & " and cod_res_eva=" & L_cod_eva.SelectedItem.Value
        End If
        Comm = New System.Data.SqlClient.SqlCommand(queri2, conn)
        Comm.ExecuteNonQuery()
        T_trata.Text = Comm.ExecuteScalar()
        If Trim(T_trata.Text) = "" Then
            t_t = True
        Else
            t_t = False
        End If
        Me.Button1.Enabled = True
        conn.Close()
    End Sub

    Private Sub L_eva_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_eva.SelectedIndexChanged
        If Trim(L_eva.SelectedItem.Value) = "" Then
            Exit Sub
            T_trata.Text = ""
        End If
        L_cod_alumno.SelectedIndex = L_alumno.SelectedIndex
        If L_eva.SelectedItem.Text <> "*-- Correción de Tratamiento --*" Then
            corre = False
            L_cod_eva.SelectedIndex = L_eva.SelectedIndex
        Else
            corre = True
        End If
        'L_cod_area.SelectedIndex = L_area.SelectedIndex
        If corre Then
            SqlSelectCommand2.CommandText = ("select cod_area,area from SECA_N_Tratamiento where cod_alumno=" & L_cod_alumno.SelectedItem.Value & " group by cod_area,area")
        Else
            SqlSelectCommand2.CommandText = ("select cod_area,area from SECA_N_Tratamiento where cod_res_eva =" & L_cod_eva.SelectedItem.Value)
        End If
        Dim DS2 As System.Data.DataSet
        DS2 = New System.Data.DataSet()
        SqlDataAdapter2.Fill(DS2, "Tables")
        L_area.DataSource = DS2.Tables("Tables").DefaultView
        L_cod_area.DataSource = DS2.Tables("Tables").DefaultView
        L_cod_area.DataValueField = "cod_area"
        L_area.DataTextField = "area"
        L_area.DataBind()
        L_cod_area.DataBind()
        L_area.Items.Add("")
        L_area.SelectedIndex = (L_area.Items.Count - 1)
        L_alumno.Enabled = False
        'L_eva.Enabled = False
        L_area.Enabled = True

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("../../paginas/modulo4/Seguimiento_N_Tratamiento.aspx")
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        If Trim(L_area.SelectedItem.Value) = "" Then Exit Sub
        If Trim(L_eva.SelectedItem.Value) = "" Then Exit Sub
        If Trim(L_alumno.SelectedItem.Value) = "" Then Exit Sub
        If Trim(L_eva.SelectedItem.Value) <> "*-- Correción de Tratamiento --*" Then
            corre = False
            Exit Sub
        End If
        L_cod_alumno.SelectedIndex = L_alumno.SelectedIndex
        'L_cod_eva.SelectedIndex = L_eva.SelectedIndex
        L_cod_area.SelectedIndex = L_area.SelectedIndex

        Dim queri2 As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        conn.Open()
        If t_t Then
            'insert 
            queri2 = "insert into Tratamienta_M2 (cod_res_eva, cod_alumno, cod_area, tratamiento, fecha_new) values (0," & L_cod_alumno.SelectedItem.Value & "," & L_cod_area.SelectedItem.Value & ",'" & T_trata.Text & "','" & Format(Now, "dd/MM/yyyy") & "')"
            'Response.Write(queri2)
            Comm = New System.Data.SqlClient.SqlCommand(queri2, conn)
            Comm.ExecuteNonQuery()
        Else
            'update
            queri2 = "update Tratamienta_M2 set tratamiento='" & T_trata.Text & "' where cod_res_eva=0 and cod_area=" & L_cod_area.SelectedItem.Value & " and cod_alumno=" & L_cod_alumno.SelectedItem.Value
            'Response.Write(queri2)
            Comm = New System.Data.SqlClient.SqlCommand(queri2, conn)
            Comm.ExecuteNonQuery()
        End If
        conn.Close()
        t_error.Text = "Proceso de almacenado realizado con exito"
        Me.Button3.Enabled = False
        corre = False
    End Sub
End Class
