Public Class Realizar_pregunta
    Inherits System.Web.UI.Page
    Protected WithEvents Crear As System.Web.UI.WebControls.Button
    Protected WithEvents reset As System.Web.UI.WebControls.Button
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents Label5 As System.Web.UI.WebControls.Label
    Protected WithEvents Label6 As System.Web.UI.WebControls.Label
    Protected WithEvents proxima As System.Web.UI.WebControls.Button
    Protected WithEvents t_error As System.Web.UI.WebControls.Label
    Protected WithEvents L_Tipo As System.Web.UI.WebControls.DropDownList
    Protected WithEvents T_Pregunta As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_3 As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_4 As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_5 As System.Web.UI.WebControls.TextBox
    Protected WithEvents T_6 As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents F_3 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Conn As System.Data.SqlClient.SqlConnection
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Label7 As System.Web.UI.WebControls.Label
    Protected WithEvents F_4 As System.Web.UI.WebControls.RequiredFieldValidator

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
    End Sub

    Private Sub L_Tipo_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L_Tipo.SelectedIndexChanged
        Me.T_Pregunta.ReadOnly = False
        Label1.Visible = True
        Label1.Text = ""
        Label2.Visible = True
        Label2.Text = ""
        Label3.Visible = True
        Label3.Text = ""
        Label4.Visible = True
        Label4.Text = ""
        Label5.Visible = True
        Label5.Text = ""
        Label6.Visible = True
        Label6.Text = ""
        Me.T_Pregunta.Text = ""
        T_1.Visible = False
        T_2.Visible = False
        T_3.Visible = False
        T_4.Visible = False
        T_5.Visible = False
        T_6.Visible = False
        T_1.Text = ""
        T_2.Text = ""
        T_3.Text = ""
        T_4.Text = ""
        T_5.Text = ""
        T_6.Text = ""
        Me.t_error.Text = ""
        F_3.Enabled = False
        F_4.Enabled = False
        F_3.Visible = False
        F_4.Visible = False
        Me.Crear.Enabled = True
        Me.proxima.Enabled = True
        Select Case Me.L_Tipo.SelectedIndex
            Case 1 'Tipo Texto
                Label1.Visible = True
                Label1.Text = "Texto Campo 1:"
                T_1.Visible = True
                F_3.Enabled = True
                F_3.Visible = True
                Label2.Visible = True
                Label2.Text = "Texto Campo 2:"
                T_2.Visible = True
                Label3.Visible = True
                Label3.Text = "Texto Campo 3:"
                T_3.Visible = True
                Label4.Visible = True
                Label4.Text = "Texto Campo 4:"
                T_4.Visible = True
                Label5.Visible = True
                Label5.Text = "Texto Campo 5:"
                T_5.Visible = True
            Case 2 'listbox
                Label1.Visible = True
                Label1.Text = "Valor de la Lista Nº1:"
                T_1.Visible = True
                F_3.Enabled = True
                F_3.Visible = True
                Label2.Visible = True
                Label2.Text = "Valor de la Lista Nº2:"
                T_2.Visible = True
                F_4.Enabled = True
                F_4.Visible = True
                Label3.Visible = True
                Label3.Text = "Valor de la Lista Nº3:"
                T_3.Visible = True
                Label4.Visible = True
                Label4.Text = "Valor de la Lista Nº4:"
                T_4.Visible = True
                Label5.Visible = True
                Label5.Text = "Valor de la Lista Nº5:"
                T_5.Visible = True
                Label6.Visible = True
                Label6.Text = "Valor de la Lista Nº6:"
                T_6.Visible = True
            Case 3 'check list
                Label1.Visible = True
                Label1.Text = "Texto del Check Nº1:"
                T_1.Visible = True
                F_3.Enabled = True
                F_3.Visible = True
                Label2.Visible = True
                Label2.Text = "Texto del Check Nº2:"
                T_2.Visible = True
                Label3.Visible = True
                Label3.Text = "Texto del Check Nº3:"
                T_3.Visible = True
                Label4.Visible = True
                Label4.Text = "Texto del Check Nº4:"
                T_4.Visible = True
                Label5.Visible = True
                Label5.Text = "Texto del Check Nº5:"
                T_5.Visible = True

            Case 4 'Radio boton
                Label1.Visible = True
                Label1.Text = "Texto del RadioBoton Nº1:"
                T_1.Visible = True
                F_3.Enabled = True
                F_3.Visible = True
                Label2.Visible = True
                Label2.Text = "Texto del RadioBoton Nº2:"
                T_2.Visible = True
                F_4.Enabled = True
                F_4.Visible = True
                Label3.Visible = True
                Label3.Text = "Texto del RadioBoton Nº3:"
                T_3.Visible = True
                Label4.Visible = True
                Label4.Text = "Texto del RadioBoton Nº4:"
                T_4.Visible = True
                Label5.Visible = True
                Label5.Text = "Texto del RadioBoton Nº5:"
                T_5.Visible = True
            Case 5 'Campo observacion 
                Label1.Visible = True
                Label1.Text = "Texto de la Observación:"
                T_1.Visible = True
            Case Else
                Me.T_Pregunta.ReadOnly = True
                Me.Crear.Enabled = False
                Me.proxima.Enabled = False
        End Select

    End Sub

    Private Sub Crear_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Crear.Click
        Me.L_Tipo.Enabled = False
        Dim Comm As System.Data.SqlClient.SqlCommand
        Dim campos As String
        Dim valores, queri As String
        Me.Conn.Open()
        Select Case Me.L_Tipo.SelectedIndex
            Case 1 'Tipo Texto
                campos = "pregunta, text1"
                valores = "'" & Me.T_Pregunta.Text & "','" & Me.T_1.Text & "'"
                If Trim(T_2.Text) <> "" Then
                    campos = campos & ",text2"
                    valores = valores & ",'" & Me.T_2.Text & "'"
                End If
                If Trim(T_3.Text) <> "" Then
                    campos = campos & ",text3"
                    valores = valores & ",'" & Me.T_3.Text & "'"
                End If
                If Trim(T_4.Text) <> "" Then
                    campos = campos & ",text4"
                    valores = valores & ",'" & Me.T_4.Text & "'"
                End If
                If Trim(T_5.Text) <> "" Then
                    campos = campos & ",text5"
                    valores = valores & ",'" & Me.T_5.Text & "'"
                End If
                queri = "INSERT into  Tipo1_pregunta_M2 (" & campos & ") values (" & valores & ")"
                Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
                Comm.ExecuteNonQuery()
                Me.t_error.Text = "Pregunta creada con exito!!!"

            Case 2 'tipo lista
                campos = "pregunta, listval1, listval2"
                valores = "'" & Me.T_Pregunta.Text & "','" & Me.T_1.Text & "','" & Me.T_2.Text & "'"
                If Trim(T_3.Text) <> "" Then
                    campos = campos & ",listval3"
                    valores = valores & ",'" & Me.T_3.Text & "'"
                End If
                If Trim(T_4.Text) <> "" Then
                    campos = campos & ",listval4"
                    valores = valores & ",'" & Me.T_4.Text & "'"
                End If
                If Trim(T_5.Text) <> "" Then
                    campos = campos & ",listval5"
                    valores = valores & ",'" & Me.T_5.Text & "'"
                End If
                If Trim(T_6.Text) <> "" Then
                    campos = campos & ",listval6"
                    valores = valores & ",'" & Me.T_6.Text & "'"
                End If
                queri = "INSERT into  Tipo2_pregunta_M2 (" & campos & ") values (" & valores & ")"
                Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
                Comm.ExecuteNonQuery()
                Me.t_error.Text = "Pregunta creada con exito!!!"

            Case 3 'tipo check
                campos = "pregunta, check1"
                valores = "'" & Me.T_Pregunta.Text & "','" & Me.T_1.Text & "'"
                If Trim(T_2.Text) <> "" Then
                    campos = campos & ",check2"
                    valores = valores & ",'" & Me.T_2.Text & "'"
                End If
                If Trim(T_3.Text) <> "" Then
                    campos = campos & ",check3"
                    valores = valores & ",'" & Me.T_3.Text & "'"
                End If
                If Trim(T_4.Text) <> "" Then
                    campos = campos & ",check4"
                    valores = valores & ",'" & Me.T_4.Text & "'"
                End If
                If Trim(T_5.Text) <> "" Then
                    campos = campos & ",check5"
                    valores = valores & ",'" & Me.T_5.Text & "'"
                End If
                queri = "INSERT into  Tipo3_pregunta_M2 (" & campos & ") values (" & valores & ")"
                Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
                Comm.ExecuteNonQuery()
                Me.t_error.Text = "Pregunta creada con exito!!!"
            Case 4 'tipo radio
                campos = "pregunta, radio1, radio2"
                valores = "'" & Me.T_Pregunta.Text & "','" & Me.T_1.Text & "','" & Me.T_2.Text & "'"
                If Trim(T_3.Text) <> "" Then
                    campos = campos & ",radio3"
                    valores = valores & ",'" & Me.T_3.Text & "'"
                End If
                If Trim(T_4.Text) <> "" Then
                    campos = campos & ",radio4"
                    valores = valores & ",'" & Me.T_4.Text & "'"
                End If
                If Trim(T_5.Text) <> "" Then
                    campos = campos & ",radio5"
                    valores = valores & ",'" & Me.T_5.Text & "'"
                End If
                queri = "INSERT into  Tipo4_pregunta_M2 (" & campos & ") values (" & valores & ")"
                Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
                Comm.ExecuteNonQuery()
                Me.t_error.Text = "Pregunta creada con exito!!!"
            Case 5
                campos = "pregunta, texto"
                valores = "'" & Me.T_Pregunta.Text & "','" & Me.T_1.Text & "'"
                queri = "INSERT into  Tipo5_pregunta_M2 (" & campos & ") values (" & valores & ")"
                Comm = New System.Data.SqlClient.SqlCommand(queri, Conn)
                Comm.ExecuteNonQuery()
                Me.t_error.Text = "Pregunta creada con exito!!!"

        End Select
        Me.Crear.Enabled = False
        Me.L_Tipo.Enabled = True
        Me.Conn.Close()

    End Sub

    Private Sub reset_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles reset.Click
        Label1.Visible = True
        Label1.Text = ""
        Label2.Visible = True
        Label2.Text = ""
        Label3.Visible = True
        Label3.Text = ""
        Label4.Visible = True
        Label4.Text = ""
        Label5.Visible = True
        Label5.Text = ""
        Label6.Visible = True
        Label6.Text = ""
        T_1.Visible = False
        T_2.Visible = False
        T_3.Visible = False
        T_4.Visible = False
        T_5.Visible = False
        T_6.Visible = False
        T_1.Text = ""
        T_2.Text = ""
        T_3.Text = ""
        T_4.Text = ""
        T_5.Text = ""
        T_6.Text = ""
        Me.L_Tipo.SelectedIndex = 0
        F_3.Enabled = False
        F_4.Enabled = False
        Me.T_Pregunta.ReadOnly = True
        Me.Crear.Enabled = False
        Me.proxima.Enabled = False
        Me.t_error.Text = ""
        Me.T_Pregunta.Text = ""
    End Sub

    Private Sub proxima_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles proxima.Click
        Label1.Visible = True
        Label1.Text = ""
        Label2.Visible = True
        Label2.Text = ""
        Label3.Visible = True
        Label3.Text = ""
        Label4.Visible = True
        Label4.Text = ""
        Label5.Visible = True
        Label5.Text = ""
        Label6.Visible = True
        Label6.Text = ""
        T_1.Visible = False
        T_2.Visible = False
        T_3.Visible = False
        T_4.Visible = False
        T_5.Visible = False
        T_6.Visible = False
        T_1.Text = ""
        T_2.Text = ""
        T_3.Text = ""
        T_4.Text = ""
        T_5.Text = ""
        T_6.Text = ""
        Me.L_Tipo.SelectedIndex = 0
        F_3.Enabled = False
        F_4.Enabled = False
        Me.T_Pregunta.ReadOnly = True
        Me.Crear.Enabled = False
        Me.proxima.Enabled = False
        Me.t_error.Text = ""
        Me.T_Pregunta.Text = ""
    End Sub
End Class
