Public Class Crear_formato
    Inherits System.Web.UI.Page
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator3 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator4 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents T_tipo As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_nombre As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_descrip As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_A1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents L_A2 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents L_A3 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents L_A_cod As System.Web.UI.WebControls.ListBox
    Protected WithEvents Button2 As System.Web.UI.WebControls.Button
    Protected WithEvents t_error As System.Web.UI.WebControls.Label
    Protected WithEvents SqlConnection1 As System.Data.SqlClient.SqlConnection
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Public Shared l3 As Boolean
#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter()
        Me.SqlConnection1 = New System.Data.SqlClient.SqlConnection()
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand()
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "SECA_areas_cod", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("Area", "Area"), New System.Data.Common.DataColumnMapping("cod", "cod")})})
        '
        'SqlConnection1
        '
        Me.SqlConnection1.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=BOZOXP06;packet size=4096"
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT Area, cod FROM SECA_areas_cod WHERE (evalua = 1)"
        Me.SqlSelectCommand1.Connection = Me.SqlConnection1

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Dim regresar As System.Windows.Forms.NavigateEventArgs
        'If regresar.Forward Then
        '    Response.Write("Que tal!!!")
        '    Exit Sub
        'End If
        If (Page.IsPostBack = False) Then
            l3 = False
            Dim DS As System.Data.DataSet
            DS = New System.Data.DataSet()
            SqlDataAdapter1.Fill(DS, "Tables")
            DS.Tables("tables").DefaultView.Sort = "Area"
            L_A_cod.DataSource = DS.Tables("Tables").DefaultView
            L_A_cod.DataValueField = "cod"
            L_A_cod.DataBind()
            L_A1.DataSource = DS.Tables("Tables").DefaultView
            L_A1.DataTextField = "area"
            L_A1.DataBind()
            L_A2.DataSource = DS.Tables("Tables").DefaultView
            L_A2.DataTextField = "area"
            L_A2.DataBind()
            L_A3.DataSource = DS.Tables("Tables").DefaultView
            L_A3.DataTextField = "area"
            L_A3.DataBind()
            L_A1.Items.Add("")
            L_A1.SelectedIndex = (L_A1.Items.Count - 1)
            L_A2.Items.Add("")
            L_A2.SelectedIndex = (L_A1.Items.Count - 1)
            L_A3.Items.Add("")
            L_A3.SelectedIndex = (L_A1.Items.Count - 1)
        End If
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cod1, cod2, cod3 As Integer
        Dim string1, string2, queri As String
        Dim Comm As System.Data.SqlClient.SqlCommand

        L_A_cod.SelectedIndex = Me.L_A1.SelectedIndex
        cod1 = Me.L_A_cod.SelectedItem.Value
        If Me.L_A2.SelectedItem.Value <> "" Then
            L_A_cod.SelectedIndex = Me.L_A2.SelectedIndex
            cod2 = Me.L_A_cod.SelectedItem.Value
        End If
        If Me.L_A3.SelectedItem.Value <> "" Then
            L_A_cod.SelectedIndex = Me.L_A3.SelectedIndex
            cod3 = Me.L_A_cod.SelectedItem.Value
        End If

        Me.SqlConnection1.Open()

        queri = "select count(cod_eva) from evaluacion_m2 where lower(tipo_eva)='" & LCase(Me.T_tipo.Text) & "' and  lower(nombre)='" & LCase(Me.T_tipo.Text) & "'"
        Comm = New System.Data.SqlClient.SqlCommand(queri, SqlConnection1)
        Comm.ExecuteNonQuery()

        Dim cant As Integer = Comm.ExecuteScalar()

        If cant <> 0 Then
            Me.t_error.Text = "Error en el proceso ya existe una evaluación igual"
            Exit Sub
        End If

        string1 = "tipo_eva, nombre, Descripcion, cod_area1, cod_area2, Cod_area3"
        string2 = "'" & Me.T_tipo.Text & "', '" & Me.T_nombre.Text & "', '" & Me.T_descrip.Text & "', " & cod1 & "," & cod2 & "," & cod3
        queri = "INSERT into  Evaluacion_M2 (" & string1 & ") values (" & string2 & ")"
        Comm = New System.Data.SqlClient.SqlCommand(queri, SqlConnection1)
        Comm.ExecuteNonQuery()

        queri = "select cod_eva from evaluacion_m2 where lower(tipo_eva)='" & LCase(Me.T_tipo.Text) & "' and  lower(nombre)='" & LCase(Me.T_nombre.Text) & "'"
        Comm = New System.Data.SqlClient.SqlCommand(queri, SqlConnection1)
        Comm.ExecuteNonQuery()
        Dim cant2 As String = Comm.ExecuteScalar()
        'Response.Write(queri)
        'Response.Write(cant2)

        Response.Redirect("crear_formato2.aspx?cod=" & cant2)

        SqlConnection1.Close()
    End Sub

    Private Sub L_A1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_A1.SelectedIndexChanged
        L_A2.Enabled = True
        If L_A1.SelectedItem.Value = L_A2.SelectedItem.Value Then
            L_A1.SelectedIndex = (L_A1.Items.Count - 1)
            L_A2.SelectedIndex = (L_A1.Items.Count - 1)
            L_A2.Enabled = False
            L_A3.SelectedIndex = (L_A3.Items.Count - 1)
            L_A3.Enabled = False
        End If
        If L_A1.SelectedItem.Value = L_A3.SelectedItem.Value And l3 Then
            L_A1.SelectedIndex = (L_A1.Items.Count - 1)
            L_A2.SelectedIndex = (L_A1.Items.Count - 1)
            L_A2.Enabled = False
            L_A3.SelectedIndex = (L_A3.Items.Count - 1)
            L_A3.Enabled = False
        End If

    End Sub

    Private Sub L_A2_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_A2.SelectedIndexChanged
        L_A3.Enabled = True
        If L_A2.SelectedItem.Value = "" Then
            L_A3.SelectedIndex = (L_A3.Items.Count - 1)
            L_A3.Enabled = False
        End If
        If L_A2.SelectedItem.Value = L_A1.SelectedItem.Value Then
            L_A2.SelectedIndex = (L_A1.Items.Count - 1)
            L_A3.SelectedIndex = (L_A3.Items.Count - 1)
            L_A3.Enabled = False
        End If
        If L_A2.SelectedItem.Value = L_A3.SelectedItem.Value And l3 Then
            L_A2.SelectedIndex = (L_A1.Items.Count - 1)
            L_A3.SelectedIndex = (L_A3.Items.Count - 1)
            L_A3.Enabled = False
        End If
    End Sub

    Private Sub L_A3_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_A3.SelectedIndexChanged
        l3 = True
        If L_A3.SelectedItem.Value = L_A1.SelectedItem.Value Then L_A3.SelectedIndex = (L_A3.Items.Count - 1)
        If L_A3.SelectedItem.Value = L_A2.SelectedItem.Value Then L_A3.SelectedIndex = (L_A3.Items.Count - 1)

    End Sub
End Class
