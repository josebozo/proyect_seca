Imports System.Data.SqlClient
Imports System.Web.Security
Public Class alumno_modificar2
    Inherits System.Web.UI.Page
    Protected WithEvents fechaACT As System.Web.UI.WebControls.TextBox
    Protected WithEvents usuario As System.Web.UI.WebControls.TextBox
    Protected WithEvents historia As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_Nombre As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents T_apellido As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents T_fechan As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator3 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Val1 As System.Web.UI.WebControls.RangeValidator
    Protected WithEvents T_lugarn As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator4 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents T_lugarP As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator5 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents T_edad As System.Web.UI.WebControls.TextBox
    Protected WithEvents L_sexo As System.Web.UI.WebControls.ListBox
    Protected WithEvents RequiredFieldValidator6 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents T_Naciona As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator7 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents T_direcc As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator8 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents T_tlf As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_ci As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_ref As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_Escue As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_grado As System.Web.UI.WebControls.TextBox
    Protected WithEvents reset As System.Web.UI.WebControls.Button
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents t_error As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Image2 As System.Web.UI.WebControls.Image
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Public Shared tkt As FormsAuthenticationTicket
    Public Shared nombre As String
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
        'Put user code to initialize the page here
        'Me.usuario.Text = Response.re
        If (Page.IsPostBack = False) Then
            Dim ck As HttpCookie
            ck = Request.Cookies("seca.logon")
            tkt = FormsAuthentication.Decrypt(ck.Value)
            Me.fechaACT.Text = Format(Now, "dd/MM/yyyy")
            Me.historia.Text = Val(Request.Params("cod"))

            Dim string1, string2, queri As String
            Dim Comm As System.Data.SqlClient.SqlCommand
            Dim objDR As SqlDataReader
            Dim files As Integer
            'Dim i As Integer


            Me.Conn.Open()
            queri = "select upper(nombre) from SECA_users_name where cod=" & Trim(tkt.UserData)
            Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            Comm.ExecuteNonQuery()
            Dim name As String = Comm.ExecuteScalar()
            Me.usuario.Text = name

            'Traerme los Valores completos
            queri = "select nombre, apellido, ci, convert(char(10),fecha_nac,103),  ciudad_nac, lugar_nac, sexo, nacionalidad, direccion,tlf_hab from alumno_m1 where cod_alumno=" & Request.Params("cod")
            Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            Comm.ExecuteNonQuery()
            objDR = Comm.ExecuteReader(System.Data.CommandBehavior.CloseConnection)
            'objDR.Read()
            'T_Apellido.Text = objDR.GetValue(1)
            While objDR.Read
                Me.T_Nombre.Text = Trim(objDR.GetValue(0))
                Me.T_apellido.Text = Trim(objDR.GetValue(1))
                Me.T_ci.Text = Trim(objDR.GetValue(2))
                Me.T_fechan.Text = Trim(objDR.GetValue(3))
                Me.T_lugarn.Text = Trim(objDR.GetValue(4))
                Me.T_lugarP.Text = Trim(objDR.GetValue(5))
                If objDR.GetValue(6) = True Then
                    Me.L_sexo.SelectedIndex = 0
                Else
                    Me.L_sexo.SelectedIndex = 1
                End If


                Me.T_Naciona.Text = Trim(objDR.GetValue(7))
                Me.T_direcc.Text = Trim(objDR.GetValue(8))
                Me.T_tlf.Text = Trim(objDR.GetValue(9))

                'Me.Calendar1.SelectedDate = Trim(objDR.GetValue(2))
                'Me.Calendar1.VisibleDate = Trim(objDR.GetValue(2))
            End While

            Me.Conn.Close()





        End If


    End Sub


    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If (Page.IsValid) Then
            Dim string1, queri As String
            Dim Comm As System.Data.SqlClient.SqlCommand
            Me.Conn.Open()

            'queri = "select count(cod_alumno) from alumno_m1 where nombre = '" & Me.T_Nombre.Text & "' and apellido='" & Me.T_apellido.Text & "' and "
            'queri = queri & " fecha_nac='" & Me.T_fechan.Text & "' and sexo=" & Me.L_sexo.SelectedItem.Value & " and direccion ='" & Me.T_direcc.Text & "' and "
            'queri = queri & "ci='" & Me.T_ci.Text & "' and tlf_hab='" & Me.T_tlf.Text & "'"
            'Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            'Comm.ExecuteNonQuery()

            'Dim cant As Integer = Comm.ExecuteScalar()
            ''Response.Write(cant)

            'If cant <> 0 Then
            '    Me.t_error.Text = "Error en los procesos ya existe un registro igual"
            '    Exit Sub
            'End If


            queri = "update alumno_m1 set nombre='" & Me.T_Nombre.Text & "', apellido='" & Me.T_apellido.Text & "'"
            queri = queri & ", fecha_nac='" & T_fechan.Text & "', ciudad_nac='" & T_lugarn.Text & "'"
            queri = queri & ", lugar_nac='" & T_lugarP.Text & "', sexo=" & Me.L_sexo.SelectedItem.Value
            queri = queri & ", nacionalidad='" & T_Naciona.Text & "', direccion='" & T_direcc.Text & "'"
            queri = queri & ", tlf_hab='" & T_tlf.Text & "', ci='" & T_ci.Text & "'"
            queri = queri & ", ref_por='" & T_ref.Text & "', escuela='" & T_Escue.Text & "'"
            queri = queri & ", grado='" & T_grado.Text & "' where cod_alumno=" & Request.Params("cod")
            'Response.Write(queri)
            Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            Comm.ExecuteNonQuery()

            queri = queri & "Delete from padres_m1 where cod_alumno=" & Request.Params("cod")
            Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            Comm.ExecuteNonQuery()

            queri = queri & "Delete from parientes_m1 where cod_alumno=" & Request.Params("cod")
            Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
            Comm.ExecuteNonQuery()

            Response.Redirect("alumno_insert2.aspx?cod=" & Request.Params("cod") & "&user=" & usuario.Text)
        End If
    End Sub


    Private Sub T_fechan_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles T_fechan.TextChanged
        If IsDate(Me.T_fechan.Text) Then
            Dim mes1, ano1, mes2, ano2, mt, at As Integer
            Me.Val1.Enabled = True
            Me.T_fechan.Text = Format(CDate(Me.T_fechan.Text), "dd/MM/yyyy")
            mes1 = Month(Me.T_fechan.Text)
            ano1 = Year(Me.T_fechan.Text)
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
                Me.T_edad.Text = at & " años y " & mt & "meses"
            Else
                Me.T_edad.Text = at & " años "
            End If
        End If
    End Sub


    Private Sub reset_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles reset.Click
        'fechaACT.Text() = ""
        'usuario.Text() = ""
        T_Nombre.Text() = ""
        T_apellido.Text() = ""
        T_fechan.Text() = ""
        T_lugarn.Text() = ""
        T_edad.Text() = ""
        T_Naciona.Text() = ""
        T_direcc.Text() = ""
        T_tlf.Text() = ""
        L_sexo.SelectedIndex = -1
        T_ref.Text() = ""
        T_Escue.Text() = ""
        T_grado.Text() = ""
        T_ci.Text() = ""
        T_lugarP.Text() = ""

    End Sub


End Class
