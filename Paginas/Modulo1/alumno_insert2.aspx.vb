Public Class alumno_insert2
    Inherits System.Web.UI.Page
    Protected WithEvents T_usuario As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button2 As System.Web.UI.WebControls.Button
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator3 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator4 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator5 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator6 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents T_ci As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_nombre As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_apellido As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_fecha_n As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_naciona As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_estadoc As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_profe As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_ocupa As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_instruc As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_L_traba As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_tlf_traba As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_cel As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_direccH As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_herma As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_hijos As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_unions As System.Web.UI.WebControls.DropDownList
    Protected WithEvents RequiredFieldValidator7 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Text1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_repre As System.Web.UI.WebControls.ListBox
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents t_error As System.Web.UI.WebControls.Label
    Protected WithEvents T_obser_unio As System.Web.UI.WebControls.TextBox
    Protected WithEvents RangeValidator1 As System.Web.UI.WebControls.RangeValidator
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents Button3 As System.Web.UI.WebControls.Button
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Image2 As System.Web.UI.WebControls.Image
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents T_exp As System.Web.UI.WebControls.TextBox

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.Conn = New System.Data.SqlClient.SqlConnection()
        '
        'Conn
        '
        Me.Conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=BOZOXP06;packet size=4096"

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If Not (Page.IsPostBack) Then
            Me.T_usuario.Text = Request.Params("user")
            Me.T_exp.Text = Request.Params("cod")
        End If

    End Sub


    Private Sub T_fecha_n_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles T_fecha_n.TextChanged
        If IsDate(Me.T_fecha_n.Text) Then
            Dim mes1, ano1, mes2, ano2, mt, at As Integer
            Me.T_fecha_n.Text = Format(CDate(Me.T_fecha_n.Text), "dd/MM/yyyy")
            mes1 = Month(Me.T_fecha_n.Text)
            ano1 = Year(Me.T_fecha_n.Text)
            mes2 = Month(Now)
            ano2 = Year(Now)
            at = ano2 - ano1
            If mes1 > mes2 Then
                mt = mes1 + mes2
                If mt > 12 Then
                    mt = Math.Abs(mes1 - 12)
                    mt = mt + mes2
                    at = at - 1
                End If
            Else
                mt = Math.Abs(mes1 - mes2)
            End If
            If mt <> 0 Then
                Me.Text1.Text = at & " años y " & mt & "meses"
            Else
                Me.Text1.Text = at & " años "
            End If

        End If


    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click

        If (Page.IsValid) Then
            Dim string1, string2, queri As String
            Dim Comm As System.Data.SqlClient.SqlCommand
            Me.Conn.Open()

            'Verifica que no existan registros iguales
            queri = "select count(ci) from padres_m1 where ci='" & Me.T_ci.Text & "'"
            Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            Comm.ExecuteNonQuery()
            Dim cant As Integer = Comm.ExecuteScalar()
            'Response.Write(cant)
            If cant <> 0 Then
                Me.t_error.Text = "Error en los procesos ya existe una C.I. igual"
                Exit Sub
            End If

            'Verifica si existen dos registros para este paciente
            queri = "select count(ci) from padres_m1 where cod_alumno=" & Val(Me.T_exp.Text)
            Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            Comm.ExecuteNonQuery()
            Dim cant2 As Integer = Comm.ExecuteScalar()
            'Response.Write(cant)
            If cant2 = 2 Then
                Me.t_error.Text = "Ya fue almacenado el padre y la madre para este alumno"
                Exit Sub
            End If

            'Verifica si ya esta la madre
            If Me.L_repre.SelectedItem.Value = 1 Then
                queri = "select count(ci) from padres_m1 where cod_alumno=" & Val(Me.T_exp.Text) & "and madre = 1"
                Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
                Comm.ExecuteNonQuery()
                Dim cant3 As Integer = Comm.ExecuteScalar()
                'Response.Write(cant)
                If cant3 = 1 Then
                    Me.t_error.Text = "Ya fue almacenado la madre para este alumno"
                    Exit Sub
                End If
            End If

            'Verifica si ya esta el padre
            If Me.L_repre.SelectedItem.Value = 0 Then
                queri = "select count(ci) from padres_m1 where cod_alumno=" & Val(Me.T_exp.Text) & "and madre = 0"
                Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
                Comm.ExecuteNonQuery()
                Dim cant4 As Integer = Comm.ExecuteScalar()
                If cant4 = 1 Then
                    Me.t_error.Text = "Ya fue almacenado el padre para este alumno"
                    Exit Sub
                End If
            End If

            If Val(Me.T_herma.Text) = 0 Or Trim(Me.T_herma.Text) = "" Then Me.T_herma.Text = "0"
            If Val(Me.T_hijos.Text) = 0 Or Trim(Me.T_hijos.Text) = "" Then Me.T_hijos.Text = "0"
            string1 = Me.T_ci.Text & "', '" & Me.T_nombre.Text & "', '" & Me.T_apellido.Text
            string1 = string1 & "', '" & Me.T_fecha_n.Text & "', '" & Me.T_naciona.Text & "', '" & Me.T_estadoc.Text
            string1 = string1 & "', '" & Me.T_profe.Text & "', '" & Me.T_ocupa.Text & "', '" & Me.T_instruc.Text
            string1 = string1 & "', '" & Me.T_L_traba.Text & "', '" & Me.T_tlf_traba.Text & "', '" & Me.T_cel.Text
            string1 = string1 & "', '" & Me.T_direccH.Text & "', " & Me.T_herma.Text & ", " & Me.T_hijos.Text
            string1 = string1 & ", '" & Me.L_unions.SelectedItem.Value & "', '" & Me.T_obser_unio.Text & "'"
            string1 = string1 & ", " & Me.L_repre.SelectedItem.Value & ", " & Me.T_exp.Text & ""
            string2 = "ci, nombre, apellido, fecha_nac, nacionalidad, edo_civil, profesion, ocupacion, instruccion, lug_trabajo, tlf_trabajo, "
            string2 = string2 & "cel, direccion_hab, hijo_hermano, hijo_otro, otras_uniones, union_obs, madre, cod_alumno"

            queri = "INSERT into  padres_m1 (" & string2 & " ) values ('" & string1 & ")"
            'Response.Write("<p> " & queri & " </p>")
            Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            Comm.ExecuteNonQuery()

            If Me.L_repre.SelectedItem.Value = 1 Then queri = "update alumno_m1 set ci_madre='" & Me.T_ci.Text & "' where cod_alumno =" & Val(Me.T_exp.Text)
            If Me.L_repre.SelectedItem.Value = 0 Then queri = "update alumno_m1 set ci_padre='" & Me.T_ci.Text & "' where cod_alumno =" & Val(Me.T_exp.Text)
            'Response.Write("<p> " & queri & " </p>")
            Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            Comm.ExecuteNonQuery()
            T_ci.Text = ""
            T_nombre.Text = ""
            T_apellido.Text = ""
            T_fecha_n.Text = ""
            T_naciona.Text = ""
            T_estadoc.Text = ""
            T_profe.Text = ""
            T_ocupa.Text = ""
            T_instruc.Text = ""
            T_L_traba.Text = ""
            T_tlf_traba.Text = ""
            T_cel.Text = ""
            T_direccH.Text = ""
            T_herma.Text = ""
            T_hijos.Text = ""
            L_unions.SelectedIndex = -1
            T_obser_unio.Text = ""
            L_repre.SelectedIndex = -1
            Me.Conn.Close()

        End If


    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("alumno_insert3.aspx?cod=" & Val(Me.T_exp.Text) & "&user=" & Me.T_usuario.Text)
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        T_ci.Text = ""
        T_nombre.Text = ""
        T_apellido.Text = ""
        T_fecha_n.Text = ""
        T_naciona.Text = ""
        T_estadoc.Text = ""
        T_profe.Text = ""
        T_ocupa.Text = ""
        T_instruc.Text = ""
        T_L_traba.Text = ""
        T_tlf_traba.Text = ""
        T_cel.Text = ""
        T_direccH.Text = ""
        T_herma.Text = ""
        T_hijos.Text = ""
        L_unions.SelectedIndex = -1
        T_obser_unio.Text = ""
        L_repre.SelectedIndex = -1
    End Sub
End Class
