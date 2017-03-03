Public Class Area
    Inherits System.Web.UI.Page
    Protected WithEvents T_Area As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_Descripcion As System.Web.UI.WebControls.TextBox
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents R_Evalua As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents T_error As System.Web.UI.WebControls.Label
    Protected WithEvents Reset As System.Web.UI.WebControls.Button
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.Conn = New System.Data.SqlClient.SqlConnection()
        '
        'Conn
        '
        Me.Conn.ConnectionString = "data source=bozoxp06;initial catalog=SECA_DB;password=12765019;persist security i" & _
        "nfo=True;user id=sa;workstation id=JON;packet size=4096"

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        
        Dim string1, string2, queri As String
        Dim Comm As System.Data.SqlClient.SqlCommand
        Me.Conn.Open()


        queri = "select count(Area) from Area_M5 where Area='" & Me.T_Area.Text & "'"
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        Dim cant As Integer = Comm.ExecuteScalar()
        'Verifica que no existan 2 areas iguales
        'Response.Write(cant)
        If cant <> 0 Then
            Me.T_error.Visible = True
            Me.T_error.Text = "Esta Area ya existe"
            Exit Sub
        End If

        'Guarda en la Base de Datos
        string1 = Me.T_Area.Text & "', '" & Me.T_Descripcion.Text & "', " & Me.R_Evalua.SelectedItem.Value
        queri = "INSERT into Area_m5 (Area, Descripcion, Evalua) values ('" & string1 & ")"
        'Response.Write(queri)
        Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
        Comm.ExecuteNonQuery()
        Conn.Close()
        Response.Redirect("..\intro2.aspx")
    End Sub

    Private Sub Reset_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Reset.Click
        T_Area.Text = ""
        T_Descripcion.Text = ""
    End Sub
End Class
