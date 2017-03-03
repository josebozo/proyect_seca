Imports System.Data.SqlClient
Imports System.Web.Security
Public Class Logon
    Inherits System.Web.UI.Page
    Protected WithEvents vUserName As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents vUserPass As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents chkPersistCookie As System.Web.UI.WebControls.CheckBox
    Protected WithEvents txtUserPass As System.Web.UI.HtmlControls.HtmlInputText
    Protected WithEvents cmdLogin As System.Web.UI.HtmlControls.HtmlInputButton
    Protected WithEvents lblMsg As System.Web.UI.WebControls.Label
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents T_error As System.Web.UI.WebControls.Label
    Protected WithEvents txtUserName As System.Web.UI.HtmlControls.HtmlInputText
    Public Shared bloqueo As Integer
    Public Shared cod2, cod1, lperfil As String

    Function ValidateUser(ByVal uid As String, ByVal passwd As String) As Boolean
        REM Función para validar a los usuarios.
        Dim queri As String
        Dim cnn As SqlConnection
        Dim Comm As System.Data.SqlClient.SqlCommand
        Dim cmd As SqlCommand
        Dim dr As SqlDataReader
        Dim retVal As Boolean = False
        cnn = New SqlConnection("server=bozoxp06;uid=sa;pwd=12765019;database=seca_db;")
        'pwd=12765019
        cmd = New SqlCommand("Select * from usuarios_m5 where uname = '" & uid & "' and activo=1", cnn)
        cnn.Open()
        dr = cmd.ExecuteReader()
        While (dr.Read())
            If StrComp(dr.Item("Pwd"), passwd, 1) = 0 Then
                retVal = True
            End If
        End While
        ValidateUser = retVal
        cnn.Close()
    End Function

    Private Sub cmdLogin_ServerClick(ByVal sender As Object, _
   ByVal e As System.EventArgs) Handles cmdLogin.ServerClick
        Dim queri As String
        Dim cnn As SqlConnection
        Dim Comm As System.Data.SqlClient.SqlCommand
        Dim cmd As SqlCommand
        Dim dr As SqlDataReader
        cnn = New SqlConnection("server=bozoxp06;uid=sa;pwd=12765019;database=seca_db;")
        bloqueo = bloqueo + 1
        'If bloqueo < 3 Then
        'Response.Write(username & txtUserName.Value)
        'If Trim(username) = Trim(txtUserName.Value) Then
        cnn.Open()
        queri = " select cod_user, nombre, apellido, ci, cod_area, uname, pwd, perfil from Usuarios_m5 where uname='" & Trim(txtUserName.Value) & "' and activo=1"
        Comm = New System.Data.SqlClient.SqlCommand(queri, cnn)
        Comm.ExecuteNonQuery()
        dr = Comm.ExecuteReader(System.Data.CommandBehavior.CloseConnection)
        While dr.Read
            cod2 = dr.GetValue(5)
            cod1 = dr.GetValue(0)
            lperfil = dr.GetValue(7)
        End While
        'Response.Write(cod2 & cod1 & lperfil)
        cnn.Close()
        If ValidateUser(txtUserName.Value, txtUserPass.Value) Then
            Dim tkt As FormsAuthenticationTicket
            Dim cookiestr As String
            Dim ck As HttpCookie
            Dim c As Integer
            tkt = New FormsAuthenticationTicket(1, txtUserName.Value, DateTime.Now(), _
            DateTime.Now.AddMinutes(30), True, cod1)
            'chkPersistCookie.Checked
            cookiestr = FormsAuthentication.Encrypt(tkt)
            ck = New HttpCookie(FormsAuthentication.FormsCookieName(), cookiestr)
            Response.Cookies.Add(ck)
            Dim strRedirect As String
            strRedirect = Request("ReturnURL")
            If lperfil = "Administrador" Then
                strRedirect = "../exportar/menu.aspx"
                Response.Redirect(strRedirect, True)
            End If
            If lperfil = "Secretaria" Then
                strRedirect = "../exportar/Secretaria.aspx"
                Response.Redirect(strRedirect, True)
            End If
            If lperfil = "Trabajador Social" Then
                strRedirect = "../exportar/Social.aspx"
                Response.Redirect(strRedirect, True)
            End If
            If lperfil = "Especialista" Then
                strRedirect = "../exportar/Especialista.aspx"
                Response.Redirect(strRedirect, True)
            End If


            'If strRedirect <> "" Then
            '    Response.Redirect(strRedirect, True)
            'Else
            '    If lperfil = "Administrador" Then
            '        strRedirect = "../exportar/menu.aspx"
            '        Response.Redirect(strRedirect, True)
            '    End If
            'End If
            'strRedirect = Nothing
            'Response.Redirect("home.asp?refresh=1")

        Else
            T_error.Visible = True
        End If










        'Else
        'Response.Write("no existe")
        'End If
        'Else
        ' Me.T_error.Text = "Su clave ha sido bloqueada, Consulte su Administrador"
        'End If


        REM Else
        REM    Response.Redirect("logon.asp")
    End Sub

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If (Page.IsPostBack = False) Then
        End If
    End Sub

End Class
