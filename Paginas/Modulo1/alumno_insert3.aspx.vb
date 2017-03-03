Public Class alumno_insert3
    Inherits System.Web.UI.Page
    Public val1 As Integer
    Dim Cookies As HttpCookie
    Protected WithEvents T_usuario As System.Web.UI.WebControls.TextBox
    Protected WithEvents TextBox1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents DropDownList1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DropDownList2 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents TextBox2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents DropDownList3 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents DropDownList4 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents Button2 As System.Web.UI.WebControls.Button
    Protected WithEvents Button3 As System.Web.UI.WebControls.Button
    Protected WithEvents Button4 As System.Web.UI.WebControls.Button
    Protected WithEvents T_ci As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_nombre As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_Apellido As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_edad As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_sexo As System.Web.UI.WebControls.DropDownList
    Protected WithEvents T_vinculo As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_nivel As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_profe As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_ocupa As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_parientes As System.Web.UI.WebControls.ListBox
    Protected WithEvents RangeValidator1 As System.Web.UI.WebControls.RangeValidator
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator3 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator4 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents Requiredfieldvalidator5 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Requiredfieldvalidator6 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents ListBox1 As System.Web.UI.WebControls.ListBox
    Protected WithEvents t_error As System.Web.UI.WebControls.Label
    Protected WithEvents Rangevalidator2 As System.Web.UI.WebControls.RangeValidator
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Image2 As System.Web.UI.WebControls.Image
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
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
            TextBox1.Text = "0"
            Me.T_usuario.Text = Request.Params("user")
            Me.T_exp.Text = Request.Params("cod")
        End If




    End Sub


    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim Comm As System.Data.SqlClient.SqlCommand
        Dim queri, string2, string1 As String
        Me.Conn.Open()

        queri = "select count(ci) from parientes_m1 where cod_alumno=" & Val(Me.T_exp.Text) & "and ci=" & T_ci.Text()
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        Dim cant3 As Integer = Comm.ExecuteScalar()
        'Response.Write(cant)
        If cant3 = 1 Then
            Me.t_error.Text = "Ya fue almacenado el pariente para este alumno"
            Exit Sub
        End If

        val1 = Val(TextBox1.Text)
        Me.L_parientes.Items.Insert(val1, T_ci.Text & " - " & T_nombre.Text & " " & T_Apellido.Text & " - " & T_edad.Text)
        ListBox1.Items.Insert(val1, T_ci.Text)
        val1 = Val(TextBox1.Text) + 1
        TextBox1.Text = val1

        string1 = T_exp.Text & "," & T_ci.Text() & ",'" & T_nombre.Text & "', '" & T_Apellido.Text
        string1 = string1 & "', " & T_edad.Text & ", " & L_sexo.SelectedItem.Value & ", '" & T_vinculo.Text
        string1 = string1 & "', '" & T_nivel.Text & "', '" & T_profe.Text & "', '" & T_ocupa.Text & "'"
        string2 = "cod_alumno, ci, nombre, apellido, edad, sexo, vinculo_fami, nivel_edu, profesion, ocupasion "

        queri = "INSERT into  parientes_m1 (" & string2 & ") values (" & string1 & ")"

        'Response.Write(queri)
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()

        T_ci.Text() = ""
        T_nombre.Text() = ""
        T_Apellido.Text() = ""
        T_edad.Text() = ""
        L_sexo.SelectedIndex = -1
        T_vinculo.Text() = ""
        T_nivel.Text() = ""
        T_profe.Text() = ""
        T_ocupa.Text = ""

        Me.Conn.Close()
    End Sub



    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        If L_parientes.SelectedIndex >= 0 Then
            Dim Comm As System.Data.SqlClient.SqlCommand
            Dim queri, string2, string1 As String
            Me.Conn.Open()
            ListBox1.SelectedIndex = L_parientes.SelectedIndex
            queri = "delete from parientes_m1 where cod_alumno=" & T_exp.Text & " and ci=" & ListBox1.SelectedItem.Value
            'Response.Write(queri)
            'Exit Sub
            Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            Comm.ExecuteNonQuery()
            ListBox1.Items.RemoveAt(L_parientes.SelectedIndex)
            Me.L_parientes.Items.RemoveAt(L_parientes.SelectedIndex)

            Me.Conn.Close()
        End If

    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Response.Redirect("alumno_insert32.aspx?cod=" & Val(Me.T_exp.Text) & "&user=" & Me.T_usuario.Text)
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        T_ci.Text() = ""
        T_nombre.Text() = ""
        T_Apellido.Text() = ""
        T_edad.Text() = ""
        L_sexo.SelectedIndex = -1
        T_vinculo.Text() = ""
        T_nivel.Text() = ""
        T_profe.Text() = ""
        T_ocupa.Text = ""
    End Sub
End Class
